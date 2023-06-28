<?php
ini_set("display_errors",0);
error_reporting(E_ALL ^ E_NOTICE ^ E_DEPRECATED);
error_reporting(0);
 

if (isset($_POST['login'])) {
	include_once 'koneksi.php';
    $nama = $_POST['nama'];
    $password = $_POST['password'];
    $nama = $conn->real_escape_string($nama);
    $password = $conn->real_escape_string($password);
 
    $sql = "SELECT * FROM user WHERE nama='".$nama."' AND password='".$password."'";
    $hasil = $conn->query($sql);

    if ($hasil->num_rows == 1) {
    	session_start();
    	$row = $hasil->fetch_assoc();
		$_SESSION['a_nama']=$row['nama'];
		$_SESSION['b_peran']=$row['peran'];
		$peran = $row['peran'];
		$query = "INSERT INTO activity_log VALUES ('','$nama','$peran',now(),'')";	
		$result = $conn->query($query);
		$activity_id = mysqli_fetch_array(mysqli_query($conn,"SELECT id FROM activity_log ORDER BY id DESC LIMIT 1;"));
		$id = $activity_id['id'];
		$_SESSION['d_log'] = $id;
		if($peran=='Admin'){
			?>
			<script>
				alert('Selamat Datang Admin');
				document.location="home.php";
			</script>
			<?php
		}
		if($peran=='OP Purwokerto'){
			?>
			<script>
				alert('Selamat Datang OP Purwokerto');
				document.location="Purwokerto";
			</script>
			<?php
		}
		if($peran=='OP Kutoarjo'){
			?>
			<script>
				alert('Selamat Datang OP Kutoarjo');
				document.location="Kutoarjo";
			</script>
			<?php
		}
		if($peran=='OP Kroya'){
			?>
			<script>
				alert('Selamat Datang OP Kroya');
				document.location="Kroya";
			</script>
			<?php
		}
        ?>

		<?php
    } else {
        echo "<script>alert('Nama atau password Anda salah. Silahkan coba lagi!')</script>";
    }
}

?>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>SINJAKA</title>
	<link rel="stylesheet" href="./aset/styles.css">
</head>
<body>
	<div class="header">
		<div class="header-left">
			<img style="width: 230px; height: 50px;" src="./aset/images/Name.png">
		</div>
		<div class="header-right">
			<a href="https://www.kai.id/s">
		   		<img style="width: 108px; height: 46px;" src="./aset/images/kai_logo.png">
			</a>
		</div>
	</div>
	<div class="content2">
		<h1>Sign In</h1>
		<div class="login">
			<div id="boxlogin">
				<img style="width: 74px; height: 61px;" src="./aset/images/train-icon.png">
				<form method='post' name="loginform" action='<?php $_SERVER['PHP_SELF']; ?>'>
					<div class="formlogin">
					<table>
						<tr>
							<td>Nama</td>
						</tr>
						<tr>
							<td><input type="text" name="nama" maxlength="30"></td>
						</tr>
						<tr>
							<td>Password</td>
						</tr>
						<tr>
							<td><input type="Password" name="password" maxlength="30" id="inputPassword"></td>
						</tr>
						<tr>
							<td><input type="checkbox" onclick="myFunction()">Tampilkan Password
							<script>
								function myFunction() {
									var x = document.getElementById("inputPassword");
									if (x.type === "password") {
										x.type = "text";
									} else {
										x.type = "password";
									}
								}
							</script></td>
						</tr>
					</table>
					</div>
					<input type="submit" class="tombollogin" name="login" value="Login">
				</form>
			</div>
		</div>
	</div>
</body>
</html>