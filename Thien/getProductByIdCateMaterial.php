<?php

	require "connect.php";
	require "Model/Product.php";
	
	$Macuthe = $_POST['MaCuThe'];

	$query = "SELECT * From san_pham where loai_san_pham = '".$Macuthe."'";
	$data = mysqli_query($connect , $query);


	$mangProduct = array();


	while ($row = mysqli_fetch_assoc($data)) {
		$products = new Product($row['ma_san_pham'], $row['ten_san_pham'] ,$row['mo_ta'] , $row['gia_san_pham'] , $row['url'] , $row['loai_san_pham'] );
				
		array_push($mangProduct, $products);
	}
	echo json_encode($mangProduct);

?>