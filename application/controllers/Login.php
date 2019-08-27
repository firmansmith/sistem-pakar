<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {


	function __construct(){
		parent::__construct();
	}

	public function proses_login(){
		$username = $this->input->post('username');
		$password = md5($this->input->post('password'));

		// print_r($_POST);
		$this->db->where('username',$username);
		$this->db->where('password',$password);
		$cek = $this->db->get('user')->row();

		// var_dump($_POST); die();

		// $cek = $this->db->query('SELECT * FROM user WHERE username="'.$username.'" AND password="'.$password.'"')->row();
		if(isset($cek)){
			$id_user = $cek->id_user;
			$nama_lengkap = $cek->nama_lengkap;

			$this->session->set_userdata('nama_lengkap',$nama_lengkap);
			$this->session->set_userdata('id_user',$id_user);
			$data = array(
				'notif' => true,
				'pesan' => 'login berhasil',
				'type' => 'success'
			);
			$this->session->set_flashdata($data);
			
			redirect(base_url());
		}else{
			$data = array(
				'notif' => true,
				'pesan' => 'Username atau password salah',
				'type' => 'warning'
			);
			$this->session->set_flashdata($data);
			redirect(base_url('Index/login'));
		}
		
	}

	public function keluar(){
		$this->session->sess_destroy();
		$data = array(
				'notif' => true,
				'pesan' => 'Terimakasih',
				'type' => 'success'
			);
			$this->session->set_flashdata($data);
			
		redirect(base_url());
	}

	public function proses_register(){
		//var_dump($_POST);
		$nama_lengkap = $this->input->post('nama_lengkap');
		$email = $this->input->post('email');
		$status = $this->input->post('status');
		$kelamin = $this->input->post('kelamin');
		$username = $this->input->post('username');
		$password = md5($this->input->post('password'));

		$this->db->set('nama_lengkap',$nama_lengkap);
		$this->db->set('email',$email);
		$this->db->set('status',$status);
		$this->db->set('kelamin',$kelamin);
		$this->db->set('username',$username);
		$this->db->set('password',$password);
		$sql = $this->db->insert('user');

		if($sql){
			$data = array(
				'notif' => true,
				'pesan' => 'Pendaftaran berhasil. Silahkan login terlebih dahulu.',
				'type' => 'success'
			);
			$this->session->set_flashdata($data);
			redirect(base_url('Index/login'));
		}else{
			$data = array(
				'notif' => true,
				'pesan' => 'Pendaftaran gagal. Silahkan ulangi.',
				'type' => 'warning'
			);
			$this->session->set_flashdata($data);

			redirect(base_url('Index/register'));
		}
	}
}

