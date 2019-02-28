<?php
	require "connect.php";

	$khach_hang = $_POST['khach_hang'];  

	$delete = "DELETE FROM gio_hang WHERE khach_hang = '".$khach_hang."'";

	echo $connect->query($delete) ? 1 : 0;
?>