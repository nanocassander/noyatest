<?php
defined('BASEPATH') OR exit('No direct script acces allowed');

class Mtransaksi extends CI_Model{

	function tampil(){
		return $this->db->get('transaksi')->result_array();
	}

	function transaksi_member_jual($id_member){
		$this->db->where('id_member_jual', $id_member);
		return $this->db->get('transaksi')->result_array();
	}

	function transaksi_member_beli($id_member){
		$this->db->where('id_member_beli', $id_member);
		return $this->db->get('transaksi')->result_array();
	}

	function detail($id_transaksi){
		$this->db->where('id_transaksi', $id_transaksi);
		return $this->db->get('transaksi')->row_array();
	}

	function transaksi_detail($id_transaksi){
		$this->db->where('id_transaksi', $id_transaksi);
		return $this->db->get('transaksi_detail')->result_array();
	}

	function set_lunas($id_transaksi){
		$this->db->where('id_transaksi', $id_transaksi);
		$this->db->set("status_transaksi","lunas");
		$this->db->update('transaksi');
	}

	function update_resi($resi, $id_transaksi){
		$this->db->where('id_transaksi', $id_transaksi);
		$this->db->update('transaksi', ['resi_ekspedisi' => $resi]);
	}

	function kirim_rating($input) {
		$list_id_transaksi_detail = $input['id_transaksi_detail'];
		$list_jumlah_rating = $input['jumlah_rating'];
		$list_ulasan_rating = $input['ulasan_rating'];

		foreach ($list_id_transaksi_detail as $key => $id) {
			$data = [
				'waktu_rating' => date("Y-m-d H:i:s"),
				'jumlah_rating' => $list_jumlah_rating[$key],
				'ulasan_rating' => $list_ulasan_rating[$key]
			];
			$this->db->where('id_transaksi_detail', $id);
			$this->db->update('transaksi_detail', $data);
		}
	}
}
