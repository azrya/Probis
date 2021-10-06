<h3>EDIT INSTRUKTUR</h3>
<?php
include("../koneksi.php");
$kode = $_POST["kodeins"];
$nama = $_POST["namains"];
$email = $_POST["emailins"];
$hp = $_POST["hpins"];
$posisifoto = $_FILES["fotoins"]["tmp_name"];
$namafoto = $_FILES["fotoins"]["name"];
$tipefoto = $_FILES["fotoins"]["type"];
if (!empty($posisifoto)) { // bila foto diganti
	// upload file:
	if ($tipefoto=="image/jpeg") {
		$target="../foto/$namafoto";
		move_uploaded_file($posisifoto,$target);
	}
	$sql = "UPDATE instruktur SET namaIns='$nama',emailIns='$email',hpIns='$hp', fotoIns='$namafoto' WHERE kodeins='$kode'";
}
else
	$sql = "UPDATE instruktur SET namaIns='$nama',emailIns='$email',hpIns='$hp' WHERE kodeins='$kode'";

$hasil=mysqli_query($con,$sql);
//echo $sql;
if ($hasil) 
	echo "<p>Sukses...</p>";
else
	echo "<p>Gagal...</p>";
echo "<a href='adm_edit_ins.php'>Kembali</a>";	
?>