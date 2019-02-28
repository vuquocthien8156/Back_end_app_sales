<?php

	require "connect.php";
	$target = "img";
    header('Content-Type: bitmap; charset=utf-8');

	$img = $_POST['image'];
	$Email = $_POST['Email'];

	if(!file_exists($target))
	{
		mkdir($target , 0777 , true);
	}

	$target = $target . "/avata" . $Email . ".jpeg";
	
	$query ="UPDATE khach_hang set avata =  '".$target."'  where email = '".$Email."' and khach_chinh = 0";

	if(mysqli_query($connect , $query))
	{
		file_put_contents($target, base64_decode($img));
		echo 1;		
	} 
	else
		echo 0;

?>