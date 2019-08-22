<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Index extends CI_Controller {


	function __construct(){
		parent::__construct();
	}

	public function index()
	{
		
		$this->load->view('user/home');
	}

	public function fakta()
	{
		$this->load->view('user/fakta');
	}

	public function tentang(){
		$this->load->view('user/tentang');
	}

	public function bantuan(){
		$this->load->view('user/bantuan');
		
	}

	public function tes(){

		if(empty($this->session->userdata('id_user'))){
			$data = array(
				'notif' => true,
				'pesan' => 'Silahkan login terlebih dahulu.',
				'type' => 'warning'
			);
			$this->session->set_flashdata($data);
			redirect(base_url('Index/login'));

		}else{
			$this->db->limit(10);
			$this->db->order_by('soal.urutan','ASC');
			$data['get_soal'] = $this->db->get('soal')->result();
			$this->load->view('user/tes',$data);

		}
	}
	
	public function profil(){
		$this->load->view('user/profil');
	}

	public function login(){
		$this->load->view('user/login');
	}

	public function register(){
		$this->load->view('user/register');
	}
		
}