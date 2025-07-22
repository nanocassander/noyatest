<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mslider extends CI_model {
	function tampil() {
		$q = $this->db->get("slider");

		$d = $q->result_array();

		return $d;
	}





}