<?php $this->load->view('user/header'); ?>
<style type="text/css">
	.costume{
		border: thin solid #50d8af;
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
			<form action="<?php echo base_url('Login/proses_login') ?>" method="post">
			  <div class="form-group">
			    <label>Username</label>
			    <input type="text" class="form-control" id="username" name="username" placeholder="Masukan Username">
			  </div>
			  <div class="form-group">
			    <label>Password</label>
			    <input type="password" class="form-control" id="password" name="password" placeholder="Password">
			  </div>
			  <button type="submit" class="btn btn-success">login</button> <a href="<?php echo base_url('Index/register') ?>">Register</a>
			</form>
		</div>
	</center>
	
<?php $this->load->view('user/footer'); ?>