<div class="row">
	<div class="col-md-6">
		<div style="margin-top: 14px; background-color: white;padding: 30px">
			<h5 class="text-info">Daftar Obat</h5><hr/>
			<form action="<?php echo base_url('index.php/admin/pembelian/nota/'.$detnota->id_nota) ?>" method="post">
				<input type="text" name="string" class="form-control" placeholder="masukan Nama barang atau kode barang" style="width: 100%">
				<small id="nama_kategori" class="form-text text-muted">Tekan enter untuk melakukan pencarian</small>
			</form>
			<table class="table table-sm bts-ats" style="font-size: 12px;">
				<tr>
					<td class="text-secondary">NO</td>
					<td class="text-secondary">NAMA</td>
					<td class="text-secondary">HARGA</td>
					<td class="text-secondary">STOK</td>
					<td class="text-secondary"></td>
				</tr>
				<?php $no=$offset+1 ?>
				<?php foreach ($menu as $data): ?>
					<form action="<?php echo base_url('index.php/admin/pembelian/input_menu/'.$detnota->tgl_nota) ?>" method="post">
						<tr>
							<td><input type="hidden" name="id_nota" value="<?php echo $detnota->id_nota ?>"><?php echo $no; ?></td>
							<td><input type="hidden" name="id_menu" value="<?php echo $data->id_menu ?>"><?php echo strtoupper($data->nama_menu); ?></td>
							<td><?php echo 'Rp.'.$data->harga_satuan; ?></td>
							<td><?php echo $data->stok; ?></td>
							<td><button type="submit" name="submit" value="submit" class="btn btn-outline-success btn-sm"><i class="fa fa-shopping-basket"></i></button></td>
						</tr>
					</form>
					<?php $no++ ?>
				<?php endforeach ?>
			</table>
			<div class="row">
				<div class="col">
					<!--Tampilkan pagination-->
					<?php echo $pagination; ?>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-6">
		<div style="margin-top: 14px; background-color: white;padding: 30px">
			<h5 class="text-info">Detail Pemesanan</h5><hr/>
			<table>
				<tr>
					<td>Tanggal</td>
					<td>:</td>
					<td><?php echo $detnota->tgl_nota; ?></td>
				</tr>
				<tr>
					<td>Waktu</td>
					<td>:</td>
					<td><?php echo $detnota->jam_nota; ?></td>
				</tr>
				<tr>
					<td>No Nota</td>
					<td>:</td>
					<td><?php echo $detnota->id_nota; ?></td>
				</tr>
				<tr>
					<td>Kasir</td>
					<td>:</td>
					<td><?php echo $detnota->username; ?></td>
				</tr>
				<tr>
					<td>Status</td>
					<td>:</td>
					<td><?php echo $detnota->nm_status; ?></td>
				</tr>
			</table>
			<?php if ($beli==TRUE): ?>
				<?php $no=1 ?>
				<table class="table table-sm" style="font-size: 12px;">
					<?php foreach ($beli as $data): ?>
						<form action="<?php echo base_url('index.php/admin/pembelian/update_menu_nota/'.$data->id_menu_to_nota) ?>" method="post">
							<tr>
								<td><?php echo $no; ?></td>
								<td><?php echo $data->nama_menu; ?></td>
								<td><input type="text" name="jml_menu" value="<?php echo $data->jml_menu ?>" style="width: 30px;text-align: center;"></td>
								<td><?php echo 'Rp.'.$data->total_bayar; ?></td>
								<?php if ($data->id_status == '1'): ?>
									<td><a class="btn btn-outline-danger btn-sm" href="<?php echo base_url('index.php/admin/pembelian/delete_order/'.$detnota->id_nota.'/'.$data->id_menu_to_nota) ?>"><i class="fa fa-trash"></i></a></td>
								<?php endif ?>
							</tr>
						</form>
						<?php $no++ ?>
					<?php endforeach ?>
					<tr>
						<td colspan="3">Total</td>
						<td>
							<?php $harga = 0 ?>
							<?php foreach ($beli as $data): ?>
								<?php $harga = $data->total_bayar + (int)@$harga; ?>
							<?php endforeach; ?>
							<b ><?php echo 'Rp.'.$harga; ?></b>
						</td>
						<td></td>
					</tr>
					<?php if ($detnota->id_status == '1'): ?>
						<tr>
							<td colspan="5"><button class="btn btn-outline-success btn-sm" data-toggle="modal" data-target="#bayar" style="width: 100%">Bayar</button></td>
						</tr>
					<?php else: ?>
						<tr>
							<td colspan="3">Jumlah Bayar</td>
							<td colspan="2"><b><?php echo 'Rp.'.$detnota->jumlah_bayar; ?></b></td>
						</tr>
						<tr>
							<td colspan="3">Kembalian</td>
							<td colspan="2"><b><?php echo 'Rp.'.$detnota->kembalian; ?></b></td>
						</tr>
					<?php endif ?>
					<tr>
						<td colspan="5"><button class="btn btn-outline-info btn-sm" style="width: 100%">Cetak Struk</button></td>
					</tr>
				</table>
			<?php else: ?>
				<div class="border border-danger" style="padding: 14px">Belum ada barang di pilih</div>
			<?php endif ?>
		</div>
	</div>
</div>
<!-- Modal -->
<div class="modal fade" id="bayar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title text-center" id="bayar">Pembayaran</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form action="<?php echo base_url('index.php/admin/pembelian/bayar/'.$detnota->id_nota.'/'.$harga) ?>" method="post">
				<div class="modal-body">
					<div class="form-group">
						<label for="exampleInputEmail1">Jumlah yang harus di bayar</label>
						<div class="form-control"><?php echo 'Rp.'.$harga; ?></div>
						<small id="emailHelp" class="form-text text-muted">Jumlah keseluruham dari jumlah biaya belanja</small>
					</div>
					<div class="form-group">
						<label for="jumlah_bayar">Jumlah yang yang diberikan</label>
						<input type="text" class="form-control" name="jumlah_bayar" id="jumlah_bayar" value="<?php echo $harga ?>" placeholder="Masukan Rupiah">
						<small id="jumlah_bayar" class="form-text text-muted">Jumlah uang yang diberikan oleh pelanggan</small>
					</div>
				</div>
				<div class="modal-footer">
					<button type="submit" name="submit" value="submit" class="btn btn-success">Bayar</button>
				</div>
			</form>
		</div>
	</div>
</div>