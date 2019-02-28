<?php
	$khach = "vuquocthien8156@gmail.com";

	function lay($sql){
		require "connect.php";
		$data = $connect->query($sql);
		$num = $data->num_rows;
		$result = [];
		if($num > 0){
			while ($row = $data->fetch_assoc()) {
				$result[] = $row;
			}
		}
		return $result;
	}

	$donhang = "Select * from don_hang , khach_hang where don_hang.khach_hang = khach_hang.id and email = '" . $khach . "'";

	$arrDon = lay($donhang);


	foreach ($arrDon as &$value) {
		// $khach = "Select * from khach_hang where id = " . $value['khach_hang'];
		// $value['khach_hang'] = lay($khach)[0];

		$chitiet = "Select * from chi_tiet_don_hang where ma_don_hang = " . $value['ma_don_hang'];
		$value["chitiet"] = lay($chitiet);
		foreach ($value["chitiet"] as &$value2) {
			$sanpham = "select * from san_pham where ma_san_pham = " . $value2['ma_san_pham'];
			$value2['san_pham'] = lay($sanpham)[0];
			unset($value2['ma_san_pham']);
			unset($value2['ma_don_hang']);
		}
	}
	echo json_encode($arrDon);
?>