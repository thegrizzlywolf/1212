<html>
<head><title>Demo CRUD</title></head>
<body>
<h2>Demo CRUD dengan metode query()</h2>
<p><strong>Update Data</strong></p>
<form action="update" method="post">
<?php echo $model->labels['kode']; ?> <br />
<input type ="text" name="kode" size="10" maxlength="4"
readonly value="<?php echo $model->kode;?>" /><br /><br />
<?php echo $model->labels['nama']; ?> <br />
<input type ="text" name="nama" size="30"
maxlength="25" value="<?php echo $model->nama;?>" /><br /><br />
<?php echo $model->labels['harga']; ?> <br />
<input type ="text" name="harga" size="20"
value="<?php echo $model->harga;?>"/><br /><br />
<?php echo $model->labels['stok']; ?> <br />
<input type ="text" name="stok" size="10"
value="<?php echo $model->stok;?>"/><br /><br />
<input type ="submit" name="btnSubmit" value="Simpan">
<input type ="button" value="Batal" onclick="javascript:history.go(-1);"/>
</form>
</body>
</html>