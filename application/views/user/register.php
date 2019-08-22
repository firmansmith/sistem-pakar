<?php $this->load->view('user/header'); ?>
<style type="text/css">
	.costume{
		border: thin solid #229a0c;
	    margin-top: 60px;
	    margin-bottom: 30px;
	    padding: 20px;
	}
</style>

		<center>
		<div class="col-md-5 text-justify costume">
			<!--alert-->
			<!--  -->
			<!--batas alert-->
			<form action="<?php echo base_url('Login/proses_register') ?>" method="post">
			  <div class="form-group">
			    <label>Nama Lengkap</label>
			    <input type="text" class="form-control" id="nama_lengkap" name="nama_lengkap" placeholder="Masukan Nama Lengkap">
			  </div>
			  <div class="form-group">
			    <label>Email</label>
			    <input type="text" class="form-control" id="email" name="email" placeholder="Masukan email">
			  </div>
			  <div class="form-group">
			    <label>Status</label>
			    <input type="text" class="form-control" id="status" name="status" placeholder="Masukan Status">
			  </div>
			  <div class="form-group">
			    <label>Jenis Kelamin</label>
			    <select id="kelamin" name="kelamin" class="form-control">
			    	<option value="Laki-laki">Laki-laki</option>
			    	<option value="Perempuan">Perempuan</option>
			    </select>
			  </div>
			  <div class="form-group">
			    <label>Username</label>
			    <input type="text" class="form-control" id="username" name="username" placeholder="Masukan Username">
			  </div>
			  <div class="form-group">
			    <label>Password</label>
			    <input type="password" class="form-control" id="password" name="password" placeholder="Password">
			  </div>
			  <button type="submit" class="btn btn-success">Daftar</button>
			</form>
		</div>
	</center>
	
<?php $this->load->view('user/footer'); ?>