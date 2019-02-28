<?php

	require "connect.php";
	require "Model/Product.php";

	$KeyWord = $_POST['KeyWord'];

	$query = "SELECT * From san_pham where ten_san_pham like '%$KeyWord%' ";
	$data = mysqli_query($connect , $query);

	$mangProduct = array();


	if($data){
		while ($row = mysqli_fetch_assoc($data)) {
			$products = new Product($row['ma_san_pham'], $row['ten_san_pham'] ,$row['mo_ta'] , $row['gia_san_pham'] , $row['url'] , $row['loai_san_pham'] );
					
			$mangProduct[] = $products;
		}
		echo json_encode($mangProduct);
	}

?>