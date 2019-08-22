<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Index extends CI_Controller {


	function __construct(){
		parent::__construct();
	}

	public function index()
	{
		$this->hapus();
		$this->load->view('user/home');
	}

	public function hapus(){
		$this->session->unset_userdata('id_soal');
		$this->session->unset_userdata('id_jawaban');

		return true;
	}

	public function tentang(){
		$this->hapus();
		$this->load->view('user/tentang');
	}

	public function bantuan(){
		$this->hapus();
		$this->load->view('user/bantuan');
		
	}

	public function tes($urutan = NULL){
		if(empty($urutan)){
			$urutan = 1;
		}else{
			$urutan = $urutan + 1;
		}

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
			$this->db->where('soal.urutan >',$urutan);
			$this->db->order_by('soal.urutan','ASC');
			$data['get_soal'] = $this->db->get('soal')->result();
			$data['nomor'] = $urutan;
			if(empty($data['get_soal'])){
				redirect(base_url('Index/input_soal'));
			}
			$this->load->view('user/tes',$data);

		}
	}
	
	public function profil(){
		$this->hapus();
		$this->load->view('user/profil');
	}

	public function login(){
		$this->load->view('user/login');
	}

	public function register(){
		$this->hapus();
		$this->load->view('user/register');
	}

	public function update_jawaban(){
		$sql = $this->db->get('jawaban')->result();

		foreach ($sql as $key) {
			$id_jawaban = $key->id_jawaban;

			if($id_jawaban%2==0){
				$this->db->where('id_jawaban',$id_jawaban);
				$this->db->set('kode','B');
				$this->db->update('jawaban');
			}else{
				$this->db->where('id_jawaban',$id_jawaban);
				$this->db->set('kode','A');
				$this->db->update('jawaban');
			}
		}
	}

	public function cek_soal(){
		// var_dump($_POST);
		$nomor = $this->input->post('nomor');
		$awal = $this->input->post('awal');
		// $jml = count($this->input->post('id_soal'));
		$soal = array();
		$jawaban = array();
		for ($i=$awal; $i <= $nomor; $i++) { 
			if(is_null($this->session->userdata('id_soal')))
				$soal = array($this->input->post('id_soal['.$i.']'));
				
			else{
				$soal = $this->session->userdata('id_soal');
				array_push($soal,$this->input->post('id_soal['.$i.']'));
			}

			if(is_null($this->session->userdata('id_jawaban')))
				$jawaban = array($this->input->post('id_jawaban['.$i.']'));
				
			else{
				$jawaban = $this->session->userdata('id_jawaban');
				array_push($jawaban,$this->input->post('id_jawaban['.$i.']'));
			}
			$this->session->set_userdata('id_soal',$soal);
			$this->session->set_userdata('id_jawaban',$jawaban);
		}

		// var_dump($this->session->userdata()); die();
		redirect(base_url('Index/tes/'.$nomor));
		
	}

	public function input_soal(){

		
		$jml = count($this->session->userdata('id_soal'));
		$id_user = $this->session->userdata('id_user');
		$dateNow = date('Y-m-d H:i:s');

		$this->db->set('id_user',$id_user);
		$this->db->set('tanggal',$dateNow);
		$this->db->insert('riwayat');

		$id_riwayat = $this->db->insert_id();

		for ($i=0; $i < $jml; $i++) { 
			$this->db->set('id_riwayat',$id_riwayat);
			$this->db->set('id_soal',$this->session->userdata('id_soal')[$i]);
			$this->db->set('id_jawaban',$this->session->userdata('id_jawaban')[$i]);
			$this->db->insert('hasil_user');
		}

		redirect(base_url('Index/riwayat'));
	}

	public function riwayat(){

		$this->hapus();
		$this->load->view('user/v_riwayat');
	}
		
}