<?php
	require "connect.php";

	$Userr = $_POST['Userr'];

	$query = "SELECT Sum(so_luong) as SL from gio_hang where khach_hang = '".$Userr . "'";
	$data = mysqli_query($connect , $query);

	if($row = mysqli_fetch_assoc($data))
	{
		echo $row['SL'];
	}
?>