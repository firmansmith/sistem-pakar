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
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>No</th>
				<th>Tanggal</th>
			</tr>
		</thead>
		<tbody>
		<?php $no=1; foreach ($riwayat as $key) { ?>
			<tr>
				<td><?php echo $no; ?></td>
				<td><a href="<?php echo base_url('Index/detail_riwayat')."/".$key->id_riwayat ?>"><?php echo $key->tanggal; ?></a></td>
			</tr>
		<?php $no++; } ?>
		</tbody>
	</table>
</div>
</center>

<?php $this->load->view('user/footer'); ?>