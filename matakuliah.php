<?php
include("koneksi.php");
$sql = "SELECT * FROM matakuliah";
$hasil = mysqli_query($con,$sql);
echo "<h3>DATA MATAKULIAH</h3>";
echo "<table cellpadding=4 cellspacing=0 border=1 width=90%>
<tr><td align='center'>NO</td>
<td align='center'>KODE</td>
<td align='center'>NAMA</td>
<td align='center'>SKS</td></tr>";
$nomor = 1;
while ($data = mysqli_fetch_array($hasil)){
	$kodemk = $data["kodeMK"];
	$namamk = $data["NamaMK"];
	$sks = $data["sks"];
	echo "<tr>";
	echo "<td align=right>$nomor</td>";
	echo "<td>$kodemk</td><td>$namamk</td><td align=center>$sks</td>";
	echo "</tr>";
	$nomor++;
}
echo "</table>";
?>

