<?php
	require "connect.php";

	$Masp = $_POST['MaSP'];
	$khach_hang = $_POST['khach_hang'];  

	$delete = "DELETE FROM gio_hang WHERE ma_san_pham = '".$Masp."' and khach_hang = '".$khach_hang."'";

	echo $connect->query($delete) ? 1 : 0;
?>