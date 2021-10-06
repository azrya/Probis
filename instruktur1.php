<?php
include("koneksi.php");
echo "<h3>DATA INSTRUKTUR</h3>";
$kode = $_GET["kode"];
$sql = "SELECT * FROM instruktur WHERE kodeIns=$kode";
$hasil = mysqli_query($con,$sql);
$data = mysqli_fetch_array($hasil);
$kodeins = $data["kodeIns"];
$namains = $data["namaIns"];
$emailins = $data["emailIns"];
$hpins = $data["hpIns"];
$fotoins = $data["fotoIns"];
echo "<p>Kode : $kodeins</p>";
echo "<p>Nama : $namains</p>";
echo "<p>Email : $emailins</p>";
echo "<p>HP : $hpins</p>";

echo "<img src='foto/".$fotoins."'  width='300' />";
