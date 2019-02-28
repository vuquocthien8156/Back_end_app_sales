<?php
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "cua_hang_ban_quan_ao_db";
	header('Content-Type: application/json');

	//Mở kết nối
	$connect = new mysqli($servername , $username , $password , $dbname);
	$connect->query("SET NAMES 'utf8'");
	if($connect->connect_error){
		die("connec error" . $connect->connect_error);
	}

?>	