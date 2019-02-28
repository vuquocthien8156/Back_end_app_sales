<?php
	require "connect.php";
	require "Model/LoaiCuThe.php";
	require "Model/LoaiCuTheBy.php";

	$query = "SELECT loai_san_pham.loai_thoi_trang , loai_san_pham.ma_loai , loai_san_pham.ten_loai , ma_loai_cu_the , ten_loai_cu_the ,loai_cu_the.link FROM loai_cu_the , loai_san_pham WHERE loai_cu_the.ma_loai = loai_san_pham.ma_loai GROUP BY loai_san_pham.ma_loai ,loai_san_pham.loai_thoi_trang , loai_san_pham.ten_loai , ma_loai_cu_the , ten_loai_cu_the , loai_cu_the.link";

	$data = mysqli_query($connect , $query);


	$LoaiCuThes = array();
	$Array = array();
	$count = mysqli_num_rows($data);
	$counter = 0;
	$i = 1;
	$dem = 1;
	if($data)
	{
		    $is = true;
		    $check = true;
			$LoaiThoiTrang = "";
			$MaLoai = "";
			$TenLoai = "";
			while ($row = mysqli_fetch_assoc($data)) {
				
				if ($is) {
					$TenLoai = $row["ten_loai"];
					$MaLoai = $row["ma_loai"];
					$LoaiThoiTrang = $row["loai_thoi_trang"];
					$is = false;
				}


				if((int)$row["ma_loai"] == $i){
					$loaicuthe = new LoaiCuThe($row["ma_loai_cu_the"] , $row["ten_loai_cu_the"] , $row["link"]);
					array_push($LoaiCuThes, $loaicuthe);
	
				}
				else{
					array_push($Array, new LoaiCuTheBy($LoaiThoiTrang, $MaLoai , $TenLoai , $LoaiCuThes));
					
					$LoaiCuThes = array();
					$i = (int)$row["ma_loai"];
					
					$loaicuthe = new LoaiCuThe($row["ma_loai_cu_the"] , $row["ten_loai_cu_the"] , $row["link"]);

					array_push($LoaiCuThes, $loaicuthe);
					
					$TenLoai = $row["ten_loai"];
					$MaLoai = $row["ma_loai"];
					$LoaiThoiTrang = $row["loai_thoi_trang"];

				}

				if(++$counter == $count)
				{
					array_push($Array, new LoaiCuTheBy($LoaiThoiTrang, $MaLoai , $TenLoai , $LoaiCuThes));
				}
			}
	}
	echo json_encode($Array , JSON_UNESCAPED_UNICODE);
?>