<?php $this->load->view('user/header'); ?>
profil
<style type="text/css">
	.costume{
		border: thin solid #50d8af;
	    margin-top: 60px;
	    margin-bottom: 30px;
	    padding: 20px;
	}
	.row{
		margin-top: 10px;
	}
</style>

		<center>
		<div class="col-md-8 text-justify costume">
			<!--alert-->
			<!--  -->
			<!--batas alert-->
			<form action="<?php echo base_url('Login/updateUser') ?>" method="post">
			<div class="row">
				<div class="col-md-3">
					<label>Nama Lengkap</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="nama_lengkap" class="form-control" id="nama_lengkap" placeholder="Nama Lengkap" value="<?php echo $user->nama_lengkap; ?>">
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<label>Email</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="email" class="form-control" id="email" placeholder="Email" value="<?php echo $user->email; ?>">
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<label>Status</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="status" class="form-control" id="email" placeholder="Status" value="<?php echo $user->status; ?>">
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<label>Jenis Kelamin</label>
				</div>
				<div class="col-md-5">
					<select class="form-control" id="kelamin" name="kelamin">
						<option value="Laki-laki"<?php if($user->kelamin=='Laki-laki'){?> active <?php }?>>Laki-laki</option>
						<option value="Perempuan" <?php if($user->kelamin=='Perempuan'){?> active <?php }?>>Perempuan</option>
					</select>
				</div>
			</div>
			 <div class="row">
				<div class="col-md-3">
					<label>Username</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="username" class="form-control" id="username" placeholder="Username" value="<?php echo $user->username; ?>">
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<label>Pasword</label>
				</div>
				<div class="col-md-5">
					<input type="password" name="password" class="form-control" id="password" placeholder="Username" value="">
				</div>
			</div>
			<div class="row">
				<div class="col-md-8 text-right">
				<input type="submit" name="" value="Simpan" class="btn btn-success">

				</div>
			</div>
			</form>
		</div>
	</center>