<?php
include("koneksi.php");
$sql = "SELECT * FROM matakuliah";
$hasil = mysqli_query($con,$sql);
echo "<h3>DATA MATAKULIAH</h3>";
echo "<table cellspacing=0 border=1 width=100%>
<tr><td>NO</td><td>KODE</td><td>NAMA</td><td>SKS</td><td>INSTRUKTUR</td></tr>";
$nomor = 1;
while ($data = mysqli_fetch_array($hasil)){
	$kodemk = $data["kodeMK"];
	$namamk = $data["NamaMK"];
	$sks = $data["sks"];
	$kode = $data["kodeIns"];
	$sql2 = "SELECT * FROM instruktur WHERE kodeIns=$kode";
	$hasil2 = mysqli_query($con,$sql2);
	$datains = mysqli_fetch_array($hasil2);
	$namainstruktur = $datains["namaIns"];
	echo "<tr>";
	echo "<td align=right>$nomor</td>";
	echo "<td>$kodemk</td><td>$namamk</td><td align=center>$sks</td>";
	echo "<td>$namainstruktur</td>";
	echo "</tr>";
	$nomor++;
}
echo "</table>";
?>

