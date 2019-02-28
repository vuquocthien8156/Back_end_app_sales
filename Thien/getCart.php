<?php
	
	require "connect.php";
	require "Model/Cart.php";

	$Userr = $_POST['Userr'];

	$query = "SELECT  gio_hang.ma_san_pham , san_pham.ten_san_pham , san_pham.gia_san_pham , gio_hang.so_luong , san_pham.url from gio_hang , san_pham WHERE khach_hang = '$Userr' and gio_hang.ma_san_pham = san_pham.ma_san_pham";
	$data = mysqli_query($connect , $query);

	

	$Carts = array();
	while ($row = mysqli_fetch_assoc($data)) {
		array_push($Carts, new Cart($row['ma_san_pham'], $row['ten_san_pham'] , $row['gia_san_pham'] , $row['so_luong'] ,$row['url']));
	}

	echo json_encode($Carts);
?>