<?php
	require "connect.php";
	
	$name = $_POST['Name'];
	$phone = $_POST['Phone'];
	$address = $_POST['Address'];
	$email = $_POST['Email'];
	$macdinh = $_POST['MacDinh'];

 	$insert = "INSERT INTO khach_hang values(NULL , '".$name."' , '". $phone ."' , '".$email."' , '".$address."' , NULL , 1 , '".$macdinh."' , 0)";
	
	echo $connect->query($insert) ? 1 : 0;
?>