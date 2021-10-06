<h3>EDIT MATAKULIAH</h3>
<form action="edit_matkul2.php" method="post">
<?php
include("../koneksi.php");
$kode = $_GET["kode"];
$sql = "SELECT * FROM matakuliah WHERE kodeMK='$kode'";
$hasil = mysqli_query($con,$sql);
$data = mysqli_fetch_array($hasil);
$namamk = $data["NamaMK"];
$sks = $data["sks"];
$kodeinsmk = $data["kodeIns"];
?>
<p>Kode MK <input type="text" name="kodemk" size="6" value="<?php echo $kode;?>" readonly/></p>
<p>Nama MK <input type="text" name="namamk" size="35" value="<?php echo $namamk;?>"/></p>
<p>SKS <input type="number" name="sks" size="4" value="<?php echo $sks;?>" min="1" max="5"/></p>
<p>Instruktur 
<select name="kodeinst">
	<option selected>Pilih salah satu</option>
<?php
// ambil nama2 instruktur dr tbl instruktur
$sql = "SELECT * FROM instruktur";
$hasil = mysqli_query($con,$sql);
while ($data = mysqli_fetch_array($hasil)) {
	$kodeins = $data["kodeIns"];
	$namains = $data["namaIns"];
	if ($kodeins==$kodeinsmk )
	echo "<option value='$kodeins' selected>$namains</option>";
	else
	echo "<option value='$kodeins'>$namains </option>";
}
?>
</select>
<p><input type="submit" value="Simpan"/></p>
</form>