<?php

	require "connect.php";
	require "Model/Product.php";

	$query = "SELECT * From san_pham";
	$data = mysqli_query($connect , $query);


	$mangProduct = array();


	while ($row = $data->fetch_assoc()) {
		$products = new Product($row['ma_san_pham'], $row['ten_san_pham'] ,$row['mo_ta'] , $row['gia_san_pham'] , $row['url'] , $row['loai_san_pham'] );
				
		array_push($mangProduct, $products);
	}
	echo json_encode($mangProduct);

?>