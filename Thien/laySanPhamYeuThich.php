<?php
	require "connect.php";


	$khach = $_POST['khach'];

	$sql = "Select * from san_pham_yeu_thich , san_pham where san_pham_yeu_thich.ma_san_pham = san_pham.ma_san_pham and bo_thich = 0 and khach_hang = '". $khach ."'";
	$data = $connect->query($sql);

	$Products = [];
	if($data){
		while ($row = $data->fetch_assoc()) {
			$Products[] = $row;
		}
		echo json_encode($Products);
	}
?>