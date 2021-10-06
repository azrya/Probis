<?php
$server = "localhost";
$database = "probisku";
$user = "root";
$pass = "";
$con = mysqli_connect($server,$user,$pass) or die("Koneksi ke server gagal!");
mysqli_select_db($con,$database) or die("Database tidak bisa diakses!");
?>


