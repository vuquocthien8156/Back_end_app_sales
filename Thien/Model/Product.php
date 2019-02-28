<?php

	class Product{
		
		function __construct($maSanPham , $tenSanPham , $moTa , $giaSanPham , $url , $loaiSanPham)
		{
			$this->MaSanPham = $maSanPham;
			$this->TenSanPham = $tenSanPham;
			$this->MoTa = $moTa;
			$this->GiaSanPham =  $giaSanPham;
			$this->URL = $url;
			$this->LoaiSanPham = $loaiSanPham;
		}
	}