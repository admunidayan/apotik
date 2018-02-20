<div style="margin-top: 14px; background-color: white;padding: 30px">
	<h5 class="text-info">Edit User</h5><hr/>
	<form action="<?php echo base_url('index.php/admin/users/proses_edit') ?>" method="post">
		<div class="row">
			<div class="col">
				<div class="form-group">
					<label for="first_name">Nama Depan</label>
					<input type="hidden" name="id" value="<?php echo $detail->id ?>">
					<input type="text" class="form-control" name="first_name" id="first_name" placeholder="Nama Depan" value="<?php echo $detail->first_name ?>" required>
					<small id="first_name" class="form-text text-muted">Semua jenis karakter (Huruf, Angka dan simbol) Dapat digunakan</small>
				</div>
			</div>
			<div class="col">
				<div class="form-group">
					<label for="last_name">Nama Belakang</label>
					<input type="text" class="form-control" name="last_name" id="last_name" placeholder="Nama Belakang" value="<?php echo $detail->last_name ?>">
					<small id="last_name" class="form-text text-muted">Semua jenis karakter (Huruf, Angka dan simbol) Dapat digunakan</small>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label for="username">Username</label>
			<input type="text" class="form-control" name="username" id="username" placeholder="Username, John, eka234 dll" value="<?php echo $detail->username ?>" required>
			<small id="username" class="form-text text-muted">hanya dapat menggunakan gabungan angka dan huruf dan tanpa spasi</small>
		</div>
		<div class="form-group">
			<label for="email">Email</label>
			<input type="email" class="form-control" name="email" id="email" placeholder="jhon@gmail.com" value="<?php echo $detail->email ?>" required>
			<small id="email" class="form-text text-muted">Gunakan penulisan email yang benar</small>
		</div>
		<div class="form-group">
			<label for="password">Password</label>
			<input type="password" class="form-control" name="password" id="password" placeholder="*******">
			<small id="password" class="form-text text-muted">Minimal 8 karakter atau lebih menggunakan kombinasi huruf dan angka</small>
		</div>
		<div class="form-group">
			<label for="repassword">Ulangi Password</label>
			<input type="password" class="form-control" name="repassword" id="repassword" placeholder="*******">
			<small id="repassword" class="form-text text-muted">Masukan ulang password anda diatas</small>
		</div>
		<div class="form-group" style="margin-top: 30px;">
			<label class="control-label">Groups</label><br/>
			<?php foreach ($groups as $gg): ?>
				<input type="checkbox" name="groups[]" value="<?php echo $gg->id; ?>" 
				<?php foreach ($usergroups as $us): ?>
					<?php if ($gg->id==$us){echo('checked');} ?>
				<?php endforeach ?>
				> <?php echo $gg->name; ?>
			<?php endforeach ?>
		</div>
		<button type="submit" class="btn btn-success">Simpan</button>
	</form>
</div>