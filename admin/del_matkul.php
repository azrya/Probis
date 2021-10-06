<?php
include("../koneksi.php");
echo "<h3>HAPUS DATA MATAKULIAH</h3>";
$kode = $_GET["kode"];
$sql = "DELETE FROM matakuliah WHERE kodeMK='$kode'";
$hasil = mysqli_query($con,$sql);
if ($hasil) 
	echo "<p>Sukses...</p>";
else
	echo "<p>Gagal...</p>";
echo "<a href='adm_edit_matkul.php'>Kembali</a>";	
?>