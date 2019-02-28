<?php
	require "connect.php";


 	$User = isset($_POST['khach_hang']) ? $_POST['khach_hang'] : "";
 	$Email = isset($_POST['Email']) ? $_POST['Email'] : "" ;
	$Pass = isset($_POST['Password']) ? $_POST['Password'] : "";
 	$Name = isset($_POST['Name']) ? $_POST['Name'] : "";
 	$Phone = isset($_POST['Phone']) ? $_POST['Phone'] : "";
 	$Address = isset($_POST['DiaChi']) ? $_POST['DiaChi'] : "";
 	$Default = isset($_POST['MacDinh']) ? $_POST['MacDinh'] : "";
 	$Delete = isset($_POST['Xoa']) ? $_POST['Xoa'] : "";

 	$kq = 1;

 	$query = "UPDATE khach_hang Set ";

 	if($Pass != ""){
 		$query1 = "UPDATE tai_khoan Set mat_khau = '".$Pass."'  where email = '".$Email."'" ;
 		if( !$connect->query($query1) ){
 			echo 2;
 		}
 		else{
 			echo 1;
 		}
 		return;
 	}

 	$set = [];

 	 if($Name != "" || $Phone != ""){
 		$set[] = " ten_khach_hang = '".$Name."' , so_dien_thoai = '".$Phone."'" ;
 	}

 	if($Address != ""){
 		$set[] = " dia_chi = '".$Address."'" ;
 	}

 	if($Default != ""){
 		$up = "Update khach_hang Set mac_dinh = 0 where email = '" . $Email . "'";
 		if($connect->query($up))
 			$set[] = " mac_dinh = '".$Default."'" ;
 	}

 	if($Delete != ""){
 		$set[] = " da_xoa = 1 " ;
 	}

 	$set = implode(",", $set);
 	$query .= $set . " where id = " . $User ;


 	if( !$connect->query($query) ){
		echo 2;
	}
	else{
		echo 1;
	}
?>