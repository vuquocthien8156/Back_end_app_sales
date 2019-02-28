<?php 
 require "connect.php";
 $Name = $_POST['Name'];
 $Email = $_POST['Email'];
 $Phone = $_POST['Phone'];
 $Pass = $_POST['Password'];
 $Cate = $_POST['Cate'];

 	$kiemTraEmail = "SELECT * FROM khach_hang where email = '". $Email."'";
 	$data = $connect->query($kiemTraEmail);

 	$query1 = "INSERT INTO tai_khoan values('".$Email."' , '".$Pass."' , '".$Cate."' , 0 , 0)";
 	$query = "INSERT INTO khach_hang values(NULL , '".$Name."' , '". $Phone ."' , '".$Email."' , NULL , NULL , 0 , 0 , 0)";
 	
 	if($data->num_rows != 1)
		if($connect->query($query) && $connect->query($query1))
	 	{
	 	// 	require 'C:\xampp\composer\vendor\autoload.php';


			// //PHPMailer Object
			// $mail = new PHPMailer\PHPMailer\PHPMailer();

			// //Enable SMTP debugging. 
			// $mail->SMTPDebug = 0;                               
			// //Set PHPMailer to use SMTP.
			// $mail->isSMTP();            
			// //Set SMTP host name                          
			// $mail->Host = "smtp.gmail.com";
			// //Set this to true if SMTP host requires authentication to send email
			// $mail->SMTPAuth = true;                          
			// //Provide username and password     
			// $mail->Username = "muadovoithien@gmail.com";                 
			// $mail->Password = "muadovoithien202122";                           
			// //If SMTP requires TLS encryption then set it
			// $mail->SMTPSecure = "tsl";                           
			// //Set TCP port to connect to 
			// $mail->Port = 587; 

			// //From email address and name
			// $mail->From = "from@yourdomain.com";
			// $mail->FromName = "Full Name";

			// //To address and name
			// $mail->addAddress("vuquocthien8156@gmail.com", "Recepient Name");

			// $mail->isHTML(true);

			// $mail->Subject = "Xác nhận email";
			// $mail->Body = "
			// <html>
			// <head>
			// <title>HTML email</title>
			// </head>
			// <body>
			// <h1>Xác nhận email</h1>
			// <from action='http://192.168.1.6:8000/Thien/confirm.php' method='POST' >
			// 	<input type='text' value='vuquocthien8156@gamil.com' name='email'/>
			// 	<input type='submit'  name='submit' value='Xác nhận'/>
			// </from>
			// </body>
			// </html>
			// ";
			// $mail->AltBody = "This is the plain text version of the email content";

			// if(!$mail->send()) 
			// {
			//     echo 4;
			// } 
			// else 
			// {
			//     echo 2;
			// }
			1
	 	}
		 else
		 	echo 2; // Lỗi
	else
		echo 3; // Email đã được sửa dụng
?>