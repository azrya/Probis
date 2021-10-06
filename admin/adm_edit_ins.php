<?php
include("../koneksi.php");
echo "<h3>EDIT DATA INSTRUKTUR</h3>";
echo "<table cellspacing=0 border=1 width=90%>
<tr><td>NO</td><td>KODE</td><td>NAMA</td><td>EMAIL</td><td>Aksi</td></tr>";
$nomor = 1;
$sql = "SELECT * FROM instruktur";
$hasil = mysqli_query($con,$sql);
while ($data = mysqli_fetch_array($hasil)){
	$kodeins = $data["kodeIns"];
	$namains = $data["namaIns"];
	$emailins = $data["emailIns"];
	echo "<tr>";
	echo "<td align=right>$nomor</td>";
	echo "<td>$kodeins</td><td>$namains</td><td>$emailins</td>";
	echo "<td><a href='edit_ins.php?kode=$kodeins'>Edit</a> | <a href='del_ins.php?kode=$kodeins'>Hapus</a></td>";
	echo "</tr>";
	$nomor++;
}
echo "</table>";
?>

