<h3>TAMBAH MATAKULIAH</h3>
<form action="add_matkul2.php" method="post">
<p>Kode MK <input type="text" name="kodemk" size="6" required/></p>
<p>Nama MK <input type="text" name="namamk"/></p>
<p>SKS <input type="number" name="sks" size="4"/></p>
<p>Instruktur 
<select name="kodeinst">
	<option selected>- Pilih salah satu -</option>
<?php
include("../koneksi.php");
$sql = "SELECT * FROM instruktur";
$hasil = mysqli_query($con,$sql);
while ($data = mysqli_fetch_array($hasil)) {
	$kdins = $data["kodeIns"];
	$nmins = $data["namaIns"];
	echo "<option value='".$kdins."'>$nmins</option>";
}
?>
</select>
</p>
<p><input type="submit" value="Simpan"/></p>
</form>