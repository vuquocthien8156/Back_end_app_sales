<?php 
	require "connect.php";

	$email = $_POST['khach'];
	$default = $_POST['chinh'];

	if($default == 0)
		$sql = "Select * from khach_hang where email = '$email' and da_xoa = 0";
	else
		$sql = "Select * from khach_hang where mac_dinh = 1 and email = '$email' and da_xoa = 0";


	$data = $connect->query($sql);

	$lsKhach = [];


	while ($row = $data->fetch_assoc()) {
		$lsKhach[] = $row;
	}

	echo json_encode($lsKhach);
?>