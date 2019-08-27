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

	public function fakta(){
		$this->hapus();
		$this->load->view('user/fakta');
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
		$id_user = $this->session->userdata('id_user');
		$this->db->where('id_user',$id_user);
		$data['user'] = $this->db->get('user')->row();
		$this->load->view('user/profil', $data);
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

		$this->db->where('id_user',$this->session->userdata('id_user'));
		$this->db->order_by('id_riwayat','DESC');
		$data['riwayat'] = $this->db->get('riwayat')->result();
		$this->load->view('user/v_riwayat',$data);
	}

	public function detail_riwayat($id_riwayat){

		$hasil_diagnosa = "";

		//mencari hasil kategori 1
		$this->db->where('hasil_user.id_riwayat',$id_riwayat);
		$this->db->where('soal.id_kategori',1);
		$this->db->join('jawaban','jawaban.id_jawaban=hasil_user.id_jawaban');
		$this->db->join('soal','soal.id_soal=jawaban.id_soal');
		$sql = $this->db->get('hasil_user')->result();

		$jawaban_a1 = 0;
		$jawaban_b1 = 0;
		//hitung jawaban a dan b dari kategori 1
		foreach ($sql as $key) {
			$kode = $key->kode;
			if($kode=="A"){
				$jawaban_a1 = $jawaban_a1 +1;
			}else{
				$jawaban_b1 = $jawaban_b1 +1;
			}
		}

		//menentukan hasil kategori 1
		if($jawaban_a1 >= $jawaban_b1){
			$hasil_diagnosa .= "E";
		}else{
			$hasil_diagnosa .= "I";
		}

		//batas mencari hasil kategori1

		//mencari hasil kategori2
		$this->db->where('hasil_user.id_riwayat',$id_riwayat);
		$this->db->where('soal.id_kategori',2);
		$this->db->join('jawaban','jawaban.id_jawaban=hasil_user.id_jawaban');
		$this->db->join('soal','soal.id_soal=jawaban.id_soal');
		$sql = $this->db->get('hasil_user')->result();

		$jawaban_a2 = 0;
		$jawaban_b2= 0;
		//hitung jawaban a dan b dari kategori 2
		foreach ($sql as $key) {
			$kode = $key->kode;
			if($kode=="A"){
				$jawaban_a2 = $jawaban_a2 +1;
			}else{
				$jawaban_b2 = $jawaban_b2 +1;
			}
		}

		//menentukan hasil kategori 2
		if($jawaban_a2 >= $jawaban_b2){
			$hasil_diagnosa .= "S";
		}else{
			$hasil_diagnosa .= "N";
		}
		//batas mencari hasil kategori2

		//mencari hasil kategori3
		$this->db->where('hasil_user.id_riwayat',$id_riwayat);
		$this->db->where('soal.id_kategori',3);
		$this->db->join('jawaban','jawaban.id_jawaban=hasil_user.id_jawaban');
		$this->db->join('soal','soal.id_soal=jawaban.id_soal');
		$sql = $this->db->get('hasil_user')->result();

		$jawaban_a3 = 0;
		$jawaban_b3 = 0;
		//hitung jawaban a dan b dari kategori 3
		foreach ($sql as $key) {
			$kode = $key->kode;
			if($kode=="A"){
				$jawaban_a3 = $jawaban_a3 +1;
			}else{
				$jawaban_b3 = $jawaban_b3 +1;
			}
		}

		//menentukan hasil kategori 3
		if($jawaban_a3 >= $jawaban_b3){
			$hasil_diagnosa .= "T";
		}else{
			$hasil_diagnosa .= "F";
		}
		//batas mencari hasil kategori3

		//batas mencari hasil kategori4
		$this->db->where('hasil_user.id_riwayat',$id_riwayat);
		$this->db->where('soal.id_kategori',4);
		$this->db->join('jawaban','jawaban.id_jawaban=hasil_user.id_jawaban');
		$this->db->join('soal','soal.id_soal=jawaban.id_soal');
		$sql = $this->db->get('hasil_user')->result();

		$jawaban_a4 = 0;
		$jawaban_b4 = 0;
		//hitung jawaban a dan b dari kategori 4
		foreach ($sql as $key) {
			$kode = $key->kode;
			if($kode=="A"){
				$jawaban_a4 = $jawaban_a4 +1;
			}else{
				$jawaban_b4 = $jawaban_b4 +1;
			}
		}

		//menentukan hasil kategori 4
		if($jawaban_a4 >= $jawaban_b4){
			$hasil_diagnosa .= "J";
		}else{
			$hasil_diagnosa .= "P";
		}
		//batas mencari hasil kategori4

		$this->db->where('hasil_diagnosa.kode_diagnosa',$hasil_diagnosa);
		$data['detail_hasil'] = $this->db->get('hasil_diagnosa')->row();

		$this->load->view('user/detail_hasil',$data);

	}
		
}