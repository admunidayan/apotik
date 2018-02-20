<div style="margin-top: 14px; background-color: white;padding: 30px">
	<div class="media">
		<div class="media-left">
			<h5 class="text-info">Daftar Obat</h5><hr/>
		</div>
		<div class="media-body"></div>
		<div class="media-right"><button class="btn btn-outline-success" data-toggle="modal" data-target="#addobat"><i class="fa fa-plus-circle"></i> Tambah Obat</button></div>
	</div>
	<form action="<?php echo base_url('index.php/admin/obat/index') ?>" method="post">
		<input type="text" name="string" class="form-control" placeholder="masukan Nama barang atau kode barang" style="width: 100%">
		<small id="nama_kategori" class="form-text text-muted">Tekan enter untuk melakukan pencarian</small>
	</form>
	<table class="table bts-ats">
		<tr class="bg-info text-light">
			<td class="text-center">No</td>
			<td>Nama Obat</td>
			<td>Kategori</td>
			<td>Stok</td>
			<td>Harga Satuan</td>
			<td colspan="2" class="text-center">Action</td>
		</tr>
		<?php $no = $offset+1 ?>
		<?php foreach ($hasil as $data): ?>
			<tr>
				<td class="text-center"><?php echo $no; ?></td>
				<td><?php echo strtoupper($data->nama_menu); ?></td>
				<td class="text-secondary"><?php echo $data->nama_kategori; ?></td>
				<td class="text-secondary"><?php echo $data->stok; ?></td>
				<td class="text-secondary"><?php echo 'Rp.'.$data->harga_satuan; ?></td>
				<td class="text-center"><a class="text-info" href="<?php echo base_url('index.php/admin/obat/edit/'.$data->id_menu) ?>"><i class="fa fa-pencil"></i></a></td>
				<td class="text-center"><a class="text-danger" href="<?php echo base_url('index.php/admin/obat/delete/'.$data->id_menu) ?>"><i class="fa fa-trash"></i></a></td>
			</tr>
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
<!-- Modal -->
<div class="modal fade" id="addobat" tabindex="-1" role="dialog" aria-labelledby="addobat" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="addobat">Tambah Obat</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form action="<?php echo base_url('index.php/admin/obat/input_menu') ?>" method="post">
				<div class="modal-body">
					<div class="form-group">
						<label for="nama_menu">Nama Obat</label>
						<input type="text" class="form-control" name="nama_menu" id="nama_menu" placeholder="Nama Obat">
						<small id="nama_menu" class="form-text text-muted">Semua jenis karakter (Huruf, Angka dan simbol) Dapat digunakan</small>
					</div>
					<div class="form-group">
						<label for="kode_menu">Kode Obat</label>
						<input type="text" class="form-control" name="kode_menu" id="kode_menu" placeholder="Kode Menu">
						<small id="kode_menu" class="form-text text-muted">Hanya dapat menggunakan gabungan angka dan huruf</small>
					</div>
					<div class="form-group">
						<label for="id_kategori">Kategori Obat</label>
						<div>
							<select class="custom-select" name="id_kategori" id="id_kategori" style="width: 100%">
								<?php foreach ($kategori as $data): ?>
									<option value="<?php echo $data->id_kategori ?>"><?php echo $data->nama_kategori; ?></option>
								<?php endforeach ?>
							</select>
						</div>
						<small id="id_kategori" class="form-text text-muted">Pilih salah satu kategori obat</small>
					</div>
					<div class="row">
						<div class="col">
							<div class="form-group">
								<label for="stok">Jumlah Stok</label>
								<input type="text" class="form-control" name="stok" id="stok" placeholder="Jumlah stok tersedia">
								<small id="stok" class="form-text text-muted">Isikan dengan anka, tidak boleh dengan huruf</small>
							</div>
						</div>
						<div class="col">
							<div class="form-group">
								<label for="harga_satuan">Harga Satuan</label>
								<input type="text" class="form-control" name="harga_satuan" id="harga_satuan" placeholder="Masukan Jumlah Rupiah, Misal 5000">
								<small id="harga_satuan" class="form-text text-muted">Penulisan ditulis dengan angka tanpa titik Misal Rp.50.000 di tulis "50000"</small>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="ket_menu">Keterangan Obat</label>
						<textarea class="form-control" name="ket_menu" placeholder="Masukan Keterangan"></textarea>
						<small id="ket_menu" class="form-text text-muted">Deskripsi obat, maksimal 144 karakter.</small>
					</div>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-success">Simpan</button>
				</div>
			</form>
		</div>
	</div>
</div>