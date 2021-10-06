<?php
session_start();
// cek apakah sdh login ato belum
if (!$_SESSION["admin"]) {                 
	$psn = "ANDA HARUS LOGIN TRLEBIH DAHULU!";
	header("location:index.php?msg=$psn");
} 
?>
<h3>MENU ADMINISTRATOR</h3>
<p>Hai, <?php echo $_SESSION["namaadmin"];?></p>
<ul>
<li><a href="adm_add_matkul.php">Tambah data matakuliah</a></li>
<li><a href="adm_edit_matkul.php">Edit data matakuliah</a></li>
<li><a href="adm_add_ins.php">Tambah data instruktur</a></li>
<li><a href="adm_edit_ins.php">Edit data instruktur</a></li>
<li><a href="logout.php">Logout</a></li>
</ul>
