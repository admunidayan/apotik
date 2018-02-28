<div class="row">
	<div class="col">
		<div style="margin-top: 14px; background-color: white;padding: 30px">
			<h5 class="text-info">Daftar Nota di tanggal <?php echo $tanggal; ?></h5>
			<table class="table table-sm" style="font-size: 13px">
				<tr>
					<td class="text-secondary">No</td>
					<td class="text-secondary">No Nota</td>
					<td class="text-secondary">Kasir</td>
					<td class="text-secondary">Total</td>
					<td class="text-secondary"></td>
				</tr>
				<?php $no = 1 ?>
				<?php foreach ($hasil as $data): ?>
					<tr>
						<td><?php echo $no; ?></td>
						<td><?php echo $data->id_nota; ?></td>
						<td><?php echo $data->username ?></td>
						<td><?php echo 'Rp.'.$data->total_bayar_nota ?></td>
						<td><a href="<?php echo base_url('index.php/admin/histori/nota/'.$data->id_nota) ?>">Detail</a></td>
					</tr>
					<?php $no++ ?>
				<?php endforeach ?>
			</table>
		</div>
	</div>
	<div class="col">
		<div style="margin-top: 14px; background-color: white;padding: 30px">
			<h5 class="text-info">Jumlah Barang Terjual</h5>
			<table class="table table-sm" style="font-size: 13px">
				<tr>
					<td class="text-secondary text-center">No</td>
					<td class="text-secondary">Nama Barang</td>
					<td class="text-secondary text-center">Jml</td>
				</tr>
				<?php $no = 1 ?>
				<?php foreach ($brglaku as $barang): ?>
					<tr>
						<td class="text-center"><?php echo $no; ?></td>
						<td><?php echo strtoupper($barang->nama_menu); ?></td>
						<td class="text-center"><?php echo $barang->jml_laku; ?></td>
					</tr>
					<?php $no++ ?>
				<?php endforeach ?>
			</table>
		</div>
	</div>
</div>