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
<?php if($detail_hasil) {?>
<div class="col-md-10 text-justify costume">
	<div class="row">
		<div class="col-md-2"><label>Hasil Diagnosa</label></div>
		<div class="col-md-8">
			<?php echo $detail_hasil->kode_diagnosa; ?>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2"><label>Deskripsi</label></div>
		<div class="col-md-8">
			<?php echo $detail_hasil->deskripsi; ?>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2"><label>Kelebihan</label></div>
		<div class="col-md-8">
			<?php echo $detail_hasil->kelebihan; ?>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2"><label>Kekurangan</label></div>
		<div class="col-md-8">
			<?php echo $detail_hasil->kekurangan; ?>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2"><label>Saran</label></div>
		<div class="col-md-8">
			<?php echo $detail_hasil->saran; ?>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2"><label>Jurusan</label></div>
		<div class="col-md-8">
			<?php echo $detail_hasil->jurusan; ?>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2"><label>Karir</label></div>
		<div class="col-md-8">
			<?php echo $detail_hasil->karir; ?>
		</div>
	</div>
</div>
<?php }else{?>
<div class="col-md-10 text-justify costume">
	<h1><i>Hasil diagnosa tidak ditemukan</i></h1>
</div>
<?php } ?>
</center>

<?php $this->load->view('user/footer'); ?>