<?php
 	require "connect.php";
	
	$email = $_POST['email'];

 	$confirm = "Update tai_khoan set xac_nhan = 1 where email = '" . $email . "'";

 	if($connect->query($confirm))
 		echo "Xác nhận thành công";
 	else
 		echo "Xác nhận không thành công";
?>