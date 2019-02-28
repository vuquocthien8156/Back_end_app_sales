<?php

	require "connect.php";
	$khach_hang = $_POST['khach_hang'];
	$MaSP = $_POST['MaSP'];
	$Soluong = $_POST['SoLuong'];
	if(isset($_POST['Kieu']))
		$Kieu = $_POST['Kieu'];
	else
		$Kieu = "";

	$checkCart = "SELECT * from gio_hang where ma_san_pham = '".$MaSP."' and khach_hang = '".$khach_hang."' ";
	$query1 = $connect->query($checkCart);
	
	if($query1->num_rows == 1)
	{
		if($Kieu != "")
		{
			if($Kieu == 0)
			{
				$Update = "UPDATE gio_hang SET so_luong = so_luong + 1 WHERE ma_san_pham = '".$MaSP."' and khach_hang = '".$khach_hang."' ";
			}
			else
			{
				$Update = "UPDATE gio_hang SET so_luong = so_luong - 1 WHERE ma_san_pham = '".$MaSP."' and khach_hang = '".$khach_hang."' ";
			}
		}
		else
			$Update = "UPDATE gio_hang SET so_luong = so_luong + '".$Soluong."' WHERE ma_san_pham = '".$MaSP."' and khach_hang = '".$khach_hang."' "  ;
		echo $connect->query($Update) ? 1 : 0;
	}
	else{
		$Insert = "INSERT INTO gio_hang values ('".$khach_hang."','".$MaSP."','".$Soluong."')";

		echo $connect->query($Insert) ? 1 : 0;
	}
?>