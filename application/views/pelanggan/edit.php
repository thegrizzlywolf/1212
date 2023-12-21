<h1>Edit Data Pelanggan</h1>
<form action="<?php echo base_url('index.php/pelanggan/update/').$pelanggan->id_pelanggan; ?>" method="post">
    <label for="nama_pelanggan">Nama:</label>
    <input type="text" name="nama_pelanggan" id="nama_pelanggan" value="<?php echo $pelanggan->nama_pelanggan; ?>" required><br>

    <label for="no_telp_pelanggan">No Telp:</label>
    <input type="text" name="no_telp_pelanggan" id="no_telp_pelanggan" value="<?php echo $pelanggan->no_telp_pelanggan; ?>" required><br>

    <label for="email_pelanggan">Email:</label>
    <input type="email" name="email_pelanggan" id="email_pelanggan" value="<?php echo $pelanggan->email_pelanggan; ?>" required><br>

    <button type="submit">Update</button>
</form>
