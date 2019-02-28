<?php
	require "connect.php";
	require "Model/KhachHang.php";
	
	$user = $_POST['Username'];
	$Pass = isset($_POST['Password']) ? $_POST['Password'] : "";

	if($Pass != "")
	{
		$query = "SELECT * from khach_hang , tai_khoan where khach_hang.email = tai_khoan.email and mat_khau = '".$Pass."' and khach_hang.email = '".$user."' and khach_chinh = 0" ;
	}
	else
		$query = "SELECT * from khach_hang where email = '".$user."' and khach_chinh = 0" ;

	$data = mysqli_query($connect , $query);

	if($row = mysqli_fetch_assoc($data))
	{
		$Khachhang = new KhachHang($row['id'], $row['ten_khach_hang'] , $row['email'] , $row['so_dien_thoai'] , $row['avata'] , $row['khach_chinh'] , $row['dia_chi'], $row['mac_dinh']);
		echo json_encode($Khachhang);
	}
	else
		echo "0";
?>