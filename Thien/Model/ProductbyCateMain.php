<?php
class ProductbyCateMain{
		function __construct($maLoaiMain ,$tenLoaiMain , $products){
			$this->MaLoaiMain  = $maLoaiMain;
			$this->TenLoaiMain  = $tenLoaiMain;
			$this->Products = $products;
		}
	}