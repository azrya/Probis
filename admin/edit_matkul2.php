<h3>EDIT MATAKULIAH</h3>
<?php
include("../koneksi.php");
$kode = $_POST["kodemk"];
$nama = $_POST["namamk"];
$sks = $_POST["sks"];
$ins = $_POST["kodeinst"];
$sql = "UPDATE matakuliah SET namaMK='$nama',sks='$sks',kodeIns='$ins' WHERE kodeMK='$kode'";
$hasil=mysqli_query($con,$sql);
//echo $sql;
if ($hasil) 
	echo "<p>Sukses...</p>";
else
	echo "<p>Gagal...</p>";
echo "<a href='adm_edit_matkul.php'>Kembali</a>";	
?>