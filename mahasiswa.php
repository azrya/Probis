<?php
include("koneksi.php");
echo "<h3>DATA MAHASISWA</h3>";
echo "<form method='post' action=''>
Ketik nama <input type='text' name='txtcari'/> 
Urut berdasarkan <select name='urut'>
<option value='Nama' selected>Nama</option>
<option value='TempatLahir'>Tempat lahir</option>
</select>
<input type='submit' value='Cari'/><br/><br/>";
echo "<table cellspacing=0 border=1 width=90%>
<tr><td>NO</td><td>NIM</td><td>NAMA</td><td>TEMPAT LAHIR</td><td>JNS KEL</td></tr>";
$nomor = 1;
$tCari = isset($_POST["txtcari"])?$_POST["txtcari"]:"";
$tUrut = isset($_POST["urut"])?$_POST["urut"]:"";
if ($tCari=="") // tidak ada pncarian
	$sql = "SELECT * FROM mhsw";
else
	$sql = "SELECT * FROM mhsw WHERE Nama LIKE '%".$tCari."%'";
if ($tUrut!="") 
	$sql .= " ORDER BY $tUrut";
$hasil = mysqli_query($con,$sql);
while ($data = mysqli_fetch_array($hasil)){
	$nim = $data["NIM"];
	$nama = $data["Nama"];
	$jk = $data["Kelamin"];
	$tmplahir = $data["TempatLahir"];
	echo "<tr>";
	echo "<td align=right>$nomor</td>";
	echo "<td>$nim</td><td>$nama</td><td>$tmplahir</td>";
	echo "<td>$jk</td>";
	echo "</tr>";
	$nomor++;
}
echo "</table>";
?>

