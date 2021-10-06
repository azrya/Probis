<?php
include("koneksi.php");
echo "<h3>DATA MATAKULIAH</h3>";
echo "<table cellspacing=0 border=1 width=90%>
<tr><td>NO</td><td>KODE</td><td>NAMA</td><td>SKS</td><td>INSTRUKTUR</td></tr>";
$nomor = 1;
$sql = "SELECT a.*,b.namaIns FROM matakuliah a, instruktur b WHERE a.kodeIns=b.kodeIns";
$hasil = mysqli_query($con,$sql);
while ($data = mysqli_fetch_array($hasil)){
	$kodemk = $data["kodeMK"];
	$namamk = $data["NamaMK"];
	$sks = $data["sks"];
	$kdIns = $data["kodeIns"];
	$namainstruktur = $data["namaIns"];
	echo "<tr>";
	echo "<td align=right>$nomor</td>";
	echo "<td>$kodemk</td><td>$namamk</td><td align=center>$sks</td>";
	echo "<td><a href='instruktur1.php?kode=$kdIns'>$namainstruktur</a></td>";
	echo "</tr>";
	$nomor++;
}
echo "</table>";
?>

