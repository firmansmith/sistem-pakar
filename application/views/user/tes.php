<?php $this->load->view('user/header'); ?>
<style type="text/css">
	.costume{
		border: thin solid #50d8af;
	    margin-top: 60px;
	    margin-bottom: 30px;
	    padding: 20px;
	}

	.input-group{
		margin-top: 10px;
		margin-left: 20px;
	}
</style>
<form action="<?php echo base_url('Index/cek_soal');?>" method="post">
	<center>
		<div class="col-md-7 costume">
			
			<ol class="list-group list-group-flush text-justify" start="<?php echo $nomor; ?>">
			<?php 
				$no=$nomor;
				foreach ($get_soal as $key) {
			?>
			  <li class="list-group-item"><?php echo $no.". ".$key->soal;  ?>
			  	<input type="hidden" name="id_soal[<?php echo $no ?>]" id="id_soal[<?php echo $no ?>]" value="<?php echo $key->id_soal;?>">
			  <?php 
			  	$this->db->where('jawaban.id_soal',$key->id_soal);
			  	$getJawaban = $this->db->get('jawaban')->result();
			  	foreach ($getJawaban as $row) {
			  ?>
			  	<div class="input-group">
				  <div class="input-group-prepend">
				    <div class="input-group-text">
				    <input type="radio" name="id_jawaban[<?php echo $no ?>]" aria-label="Radio button for following text input" value="<?php echo $row->id_jawaban; ?>">
				    </div>
				  </div>
				  <input type="text" class="form-control" aria-label="Text input with radio button" disabled="" value="<?php echo $row->jawaban ?>">
				</div>
			<?php } ?>
			  </li>
			<?php $no++; } ?>
			</ol>
			<div class="row text-right" style="padding-right: 0px;">
				<input type="hidden" name="nomor" id="nomor" value="<?php echo $no-1; ?>">
				<input type="hidden" name="awal" id="awal" value="<?php echo $nomor; ?>">
				<input type="submit" name="" value="Simpan" class="btn btn-primary">
			</div>
		</div>
	</center>
</form>

<?php $this->load->view('user/footer'); ?>