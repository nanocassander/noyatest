<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Akun extends CI_Controller{

	function __construct()
    {
        parent::__construct();
        if (!$this->session->userdata("id_member")){
            redirect('/','refresh');
        }
    }

	public function index()
	{
		$this->load->model('Mongkir');

		// Pastikan tampil_distrik selalu array agar tidak error di view
		$data['distrik'] = $this->Mongkir->tampil_distrik();
		if (!is_array($data['distrik'])) {
			$data['distrik'] = []; // fallback kosong jika API error
		}

		$inputan = $this->input->post();

		$this->form_validation->set_rules("email_member", "Email", "required");
		$this->form_validation->set_rules("nama_member", "Nama Lengkap", "required");
		$this->form_validation->set_rules("alamat_member", "Alamat Lengkap", "required");
		$this->form_validation->set_rules("wa_member", "Nomor Wa", "required");
		$this->form_validation->set_rules("kode_distrik_member", "Kode Distrik", "required");
		$this->form_validation->set_message("required", "%s wajib diisi");

		if ($this->form_validation->run() == TRUE){
			$this->load->model('Mmember');
			$id_member = $this->session->userdata("id_member");

			$kode_distrik_member = $this->input->post("kode_distrik_member");
	 		$detail = $this->Mongkir->detail_distrik($kode_distrik_member);

	 		// Cek apakah $detail valid
	 		if (is_array($detail) && isset($detail['type'], $detail['city_name'], $detail['province'])) {
				$inputan["nama_distrik_member"] = $detail['type']." ".$detail['city_name']." ".$detail['province'];
	 		} else {
				// Jika gagal ambil detail, set default nama_distrik atau tampilkan flashdata error
				$inputan["nama_distrik_member"] = "Data distrik tidak valid";
				$this->session->set_flashdata('pesan_error', 'Gagal mengambil detail distrik. Silakan coba lagi.');
				redirect('akun','refresh');
	 		}

			$this->Mmember->ubah($inputan, $id_member);

			$this->session->set_flashdata('pesan_sukses', 'Akun telah diubah');
			redirect('home','refresh');
		}

		$this->load->view('header');
		$this->load->view('akun', $data);
		$this->load->view('footer');
	}
}
