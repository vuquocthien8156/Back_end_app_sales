<?php
	require "connect.php";
	require "Model/Product.php";
	require "Model/ProductbyCateMain.php";

	$query = "SELECT loai_san_pham.ma_loai, loai_san_pham.ten_loai , ma_san_pham, ten_san_pham,mo_ta,gia_san_pham,url,loai_san_pham FROM san_pham , loai_cu_the , loai_san_pham WHERE san_pham.loai_san_pham = loai_cu_the.ma_loai_cu_the and loai_cu_the.ma_loai = loai_san_pham.ma_loai GROUP BY loai_san_pham.ma_loai , loai_san_pham.ten_loai, ma_san_pham, ten_san_pham,mo_ta,gia_san_pham,url,loai_san_pham ";
	

	$data = $connect->query($query);

	$mangProduct = array();
	$mangProductBy = array();
	$count = $data->num_rows;
	//echo $count;
	$counter = 0;
	$i = 1;

	if($count > 0){
			$is = true;
			$tenLoaiMain = "";
			$maLoaiMain = "";
			while ($row = $data->fetch_assoc()) {
		
				if($is){
					$tenLoaiMain = $row["ten_loai"];
					$maLoaiMain = $row["ma_loai"];
					$is = false;
				}

				if((int)$row["ma_loai"] == $i){
					$products = new Product($row['ma_san_pham'], $row['ten_san_pham'] ,$row['mo_ta'] , $row['gia_san_pham'] , $row['url'] , $row['loai_san_pham'] );
				}
				else{
					array_push($mangProductBy, new ProductbyCateMain($maLoaiMain, $tenLoaiMain , $mangProduct));
					
					$mangProduct = array();
					$i = (int)$row["ma_loai"];
					$is=true;
					$products = new Product($row['ma_san_pham'], $row['ten_san_pham'] ,$row['mo_ta'] , $row['gia_san_pham'] , $row['url'] , $row['loai_san_pham'] );
					}

				array_push($mangProduct, $products);

				if(++$counter == $count)
				{
					array_push($mangProductBy, new ProductbyCateMain($maLoaiMain, $tenLoaiMain , $mangProduct));
				}
			
			}

		}		
		else
			echo "error";

	echo json_encode($mangProductBy , JSON_UNESCAPED_UNICODE);

?>