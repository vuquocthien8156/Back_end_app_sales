<?php 
	require "connect.php";
	$Khach = $_POST['KhachHang'];
	$GhiChu = $_POST['GhiChu'];
	$NgayLap = $_POST['NgayLap'];
	$PhiShip = $_POST['PhiShip'];
	$TongTien = $_POST['TongTien'];

	$Carts = $_POST['Carts'];

	$array_carts = json_decode($Carts , true);
	

	$query = "INSERT INTO don_hang values(null , '".$Khach."' , '".$GhiChu."' , '".$NgayLap."' , ".$PhiShip." , ".$TongTien."  , 0 , NUll)";
	
 	if($connect->query($query)){
 		$ID_Last = ($connect->query("SELECT MAX(ma_don_hang) as max FROM don_hang"))->fetch_assoc()['max'];
 		foreach ($array_carts as $row){
 				$ThanhTien = $row['gia']*$row['soluong'];
				$queryDetail = "INSERT INTO chi_tiet_don_hang values( ".$ID_Last." , ".$row['Masp']." , ".$row['gia']." ,  ".$row['soluong']." , ".$ThanhTien." , 0)";
				$connect->query($queryDetail);
 		}
 		echo 1;
 	}
 	else
 		echo 2;

?>