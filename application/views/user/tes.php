<?php $this->load->view('user/header'); ?>
<style type="text/css">
	.costume{
		border: thin solid #229a0c;
	    margin-top: 60px;
	    margin-bottom: 30px;
	    padding: 20px;
	}

	.input-group{
		margin-top: 10px;
		margin-left: 20px;
	}
</style>
<center>
	<div class="col-md-7 text-justify costume">
		
		<ul class="list-group list-group-flush">
		<?php 
			$no=1;
			foreach ($get_soal as $key) {
		?>
		  <li class="list-group-item"><?php echo $no.". ".$key->soal;  ?>
		  <?php 
		  	$this->db->where('jawaban.id_soal',$key->id_soal);
		  	$getJawaban = $this->db->get('jawaban')->result();
		  	foreach ($getJawaban as $row) {
		  ?>
		  	<div class="input-group">
			  <div class="input-group-prepend">
			    <div class="input-group-text">
			    <input type="radio" name="id_jawaban[<?php echo $no ?>]" aria-label="Radio button for following text input">
			    </div>
			  </div>
			  <input type="text" class="form-control" aria-label="Text input with radio button" disabled="" value="<?php echo $row->jawaban ?>">
			</div>
		<?php } ?>
		  </li>
		<?php $no++; } ?>
		</ul>
	</div>
</center>

<?php $this->load->view('user/footer'); ?>