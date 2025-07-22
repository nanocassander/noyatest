<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class logout extends CI_Controller {

	public function index()
	{
		$this->session->unset_userdata("id_admin");
		$this->session->unset_userdata("username");
		$this->session->unset_userdata("nama");

		$this->session->set_flashdata('pesan_sukses', 'anda telah keluar');

		redirect('/', 'refresh');
	}
}