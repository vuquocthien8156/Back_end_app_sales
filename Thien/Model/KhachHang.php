<?php
class KhachHang{
		function __construct($id , $TenKH , $Mail , $SDT, $Img ,$khach_chinh, $diachi, $macdinh){
			$this->TenKH = $TenKH;
			$this->Mail = $Mail;
			$this->SDT = $SDT;
			$this->Img = $Img;
			$this->id = $id;
			$this->khach_chinh = $khach_chinh;
			$this->dia_chi = $diachi;
			$this->mac_dinh = $macdinh;	
		}
	}