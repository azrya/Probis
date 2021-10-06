<h3>TAMBAH MATAKULIAH</h3>
<?php
include("../koneksi.php");
$kode = $_POST["kodemk"];
$nama = $_POST["namamk"];
$sks = $_POST["sks"];
$ins = $_POST["kodeinst"];
$sql = "INSERT INTO matakuliah (kodeMK,namaMK,sks,kodeIns) VALUES ('$kode','$nama','$sks','$ins')";
$hasil=mysqli_query($con,$sql);
//echo $sql;
if ($hasil) 
	echo "<p>Sukses...</p>";
else
	echo "<p>Gagal...</p>";
echo "<a href='adm_add_matkul.php'>Kembali</a>";	
?>