<html>
<head><title>Demo Crud</title></head>
<body>
<h2>Demo Crud dengan metode Query()</h2>
<p><a href="Crud/create">tambah</a></p>
<table border="1">
<tr>
    <th width="80">Kode</th>
    <th width="120">Nama barang</th>
    <th width="80">Harga</th>
    <th width="80">Stok</th>
    <th width="100">Ubah</th>
    <th width="100">Hapus</th>
</tr>
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "posdb";

try {
    $db = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // Set the fetch mode to PDO::FETCH_ASSOC
    $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
} catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}

// Now fetch the rows from the result set
$rows = $db->query("SELECT * FROM barang")->fetchAll();

// Iterate over each row in the result set
foreach ($rows as $row){
?>
<tr>
    <td><?php echo isset($row['kode']) ? $row['kode'] : '';?></td>
    <td><?php echo isset($row['nama']) ? $row['nama'] : '';?></td>
    <td><?php echo isset($row['harga']) ? $row['harga'] : '';?></td>
    <td><?php echo isset($row['stok']) ? $row['stok'] : '';?></td>
    <td align="center">
    <a href="Crud/update/<?php echo isset($row['kode']) ? $row['kode'] : ''; ?>">Ubah</a>
    </td>
    <td align="center">
    <a href="Crud/delete/<?php echo isset($row['kode']) ? $row['kode'] : ''; ?>">Hapus</a>
    </td>
</tr>
<?php
}
?>
</table>
</body>
</html>