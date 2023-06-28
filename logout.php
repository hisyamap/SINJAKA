<?php
if(!isset($_SERVER['HTTP_REFERER'])){
    // redirect them to your desired location
    header('location: index.php');
    exit;
}

ini_set("display_errors",0);
error_reporting(E_ALL ^ E_NOTICE ^ E_DEPRECATED);
error_reporting(0);
include "koneksi.php";

session_start();

$log = $_SESSION['d_log'];
$query = "UPDATE activity_log SET waktu_logout = now() WHERE id = '$log'";
$result = $conn->query($query);

session_destroy();

?>

<script>
	alert('Berhasil Logout');
	document.location = "./index.php";
</script>