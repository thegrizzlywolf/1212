<h1>Data Pelanggan</h1>
<a href="<?php echo base_url('index.php/pelanggan/create'); ?>">Tambah Data</a>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Nama</th>
        <th>No Telp</th>
        <th>Email</th>
        <th>Aksi</th>
    </tr>
    <?php foreach($pelanggan as $p): ?>
    <tr>
        <td><?php echo $p->id_pelanggan; ?></td>
        <td><?php echo $p->nama_pelanggan; ?></td>
        <td><?php echo $p->no_telp_pelanggan; ?></td>
        <td><?php echo $p->email_pelanggan; ?></td>
        <td>
            <a href="<?php echo base_url('index.php/pelanggan/edit/').$p->id_pelanggan; ?>">Edit</a>
            <a href="<?php echo base_url('index.php/pelanggan/delete/').$p->id_pelanggan; ?>">Hapus</a>
        </td>
    </tr>
    <?php endforeach; ?>
</table>