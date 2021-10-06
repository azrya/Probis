<h3>LOGIN ADMINISTRATOR</h3>
<form action="ceklogin.php" method="post">
<p>Username <input type="text" name="usernm"  required/></p>
<p>Password <input type="password" name="passwrd" required/></p>
<p><input type="submit" value=" Login "/></p>
</form>
<?php
// tampilkan pesan [bila ada]
if (isset($_GET["msg"]))  
	echo "<p style='color:red'>".$_GET["msg"]."</p>";
?>