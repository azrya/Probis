<h3>EDIT INSTRUKTUR</h3>
<form action="edit_ins2.php" method="post" enctype="multipart/form-data" >
<?php
include("../koneksi.php");
$kode = $_GET["kode"];
$sql = "SELECT * FROM instruktur WHERE kodeIns='$kode'";
$hasil = mysqli_query($con,$sql);
$data = mysqli_fetch_array($hasil);
$namains = $data["namaIns"];
$emailins = $data["emailIns"];
$hpins = $data["hpIns"];
$fotoins = $data["fotoIns"];
?>
<p>Kode Instruktur <input type="text" name="kodeins" size="6" value="<?php echo $kode;?>" readonly/></p>
<p>Nama Instruktur<input type="text" name="namains" size="35" value="<?php echo $namains;?>"/></p>
<p>Email <input type="text" name="emailins"  value="<?php echo $emailins;?>" /></p>
<p>Nomor HP <input type="text" name="hpins"  value="<?php echo $hpins;?>" /></p>
<p>
<img src="../foto/<?=$fotoins;?>" width="200"/><br/>
Foto <input type="file" name="fotoins" /></p>
<input type="submit" value="Simpan"/></p>
</form>