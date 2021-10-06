<h3>TAMBAH INSTRUKTUR</h3>
<?php
include("../koneksi.php");
$nama = $_POST["namains"];
$email = $_POST["emailins"];
$hp = $_POST["hpins"];
$posisifoto = $_FILES["fotoins"]["tmp_name"];
$namafoto = $_FILES["fotoins"]["name"];
$tipefoto = $_FILES["fotoins"]["type"];
// upload file:
if (!empty($posisifoto)) {
	if ($tipefoto=="image/jpeg") {
		$target="../foto/$namafoto";
		move_uploaded_file($posisifoto,$target);
	}
}
$sql = "INSERT INTO instruktur (namaIns,emailIns,hpIns,fotoIns) VALUES ('$nama','$email','$hp','$namafoto')";
$hasil=mysqli_query($con,$sql);
//echo $sql;
if ($hasil) 
	echo "<p>Sukses...</p>";
else
	echo "<p>Gagal...</p>";
echo "<a href='menuadmin.php'>Kembali</a>";	
?>

