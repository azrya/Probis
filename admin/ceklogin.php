<?php
$usernm = $_POST["usernm"];
$passwrd = md5($_POST["passwrd"]);
// cek pd tabel admin
include("../koneksi.php");
$sql = "SELECT * FROM admin WHERE usernm='".$usernm."' AND passwrd='".$passwrd."'";
$hasil = mysqli_query($con,$sql);
// cek jml record hasil query
$jml = mysqli_num_rows($hasil);
if ($jml > 0){ // bila ditemukan 
// login berhasil, alihkan ke file menuadmin
	session_start();
	$data = mysqli_fetch_array($hasil);
	$nama_admin = $data["nama"];
	$_SESSION["admin"]=true;
	$_SESSION["namaadmin"]=$nama_admin;
	header('location:menuadmin.php');
} else {
// login gagal, alihkan ke form login
// sambil beri pesan
	$psn = "USERNAME ATAU PASSWORD SALAH!!!!!";
	header("location:index.php?msg=$psn");
}	
?>