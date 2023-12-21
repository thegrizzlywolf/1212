<h1>Tambah Data Pelanggan</h1>
<form action="<?php echo base_url('index.php/pelanggan/store'); ?>" method="post">
    <label for="id_pelanggan">ID:</label>
    <input type="text" name="id_pelanggan" id="id_pelanggan" required><br>

    <label for="nama_pelanggan">Nama:</label>
    <input type="text" name="nama_pelanggan" id="nama_pelanggan" required><br>

    <label for="no_telp_pelanggan">No Telp:</label>
    <input type="text" name="no_telp_pelanggan" id="no_telp_pelanggan" required><br>

    <label for="email_pelanggan">Email:</label>
    <input type="email" name="email_pelanggan" id="email_pelanggan" required><br>

    <button type="submit">Simpan</button>
</form>
