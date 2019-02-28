<?php
	require "connect.php";
	
	$khach = $_POST['khach'];
	$yeuthich = $_POST['yeuthich'];
	$masp = $_POST['masp'];

	if($yeuthich == 1){
		$count = $connect->query("select count(*) as sl from san_pham_yeu_thich where khach_hang = '". $khach ."' and ma_san_pham = '" . $masp ."'");
				//echo $count;
				if($count->fetch_assoc()['sl'] > 0){
					$update = "Update san_pham_yeu_thich set bo_thich = 0 where khach_hang = '". $khach ."' and ma_san_pham = '" . $masp ."'";
					
					if($connect->query($update)){	
						echo 1;
					}
					else
						echo 0;

				}
				else{
					$insert = "Insert into san_pham_yeu_thich values('".  $masp . "' , '". $khach . "' , 0)";
				
					if($connect->query($insert)){
						echo 1;
					}
					else
						echo 0;
				}
	}
	else{
		$update = "Update san_pham_yeu_thich set bo_thich = 1 where khach_hang = '". $khach ."' and ma_san_pham = '" . $masp ."'";
		
		if($connect->query($update)){	
			echo 1;
		}
		else
			echo 0;

	}
?>