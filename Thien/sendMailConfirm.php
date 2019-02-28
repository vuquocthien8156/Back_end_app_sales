<?php

			require 'C:\xampp\composer\vendor\autoload.php';


			//PHPMailer Object
			$mail = new PHPMailer\PHPMailer\PHPMailer();

			//Enable SMTP debugging. 
			$mail->SMTPDebug = 3;                               
			//Set PHPMailer to use SMTP.
			$mail->isSMTP();            

			//Set SMTP host name                          
			$mail->Host = "smtp.gmail.com";
			//Set this to true if SMTP host requires authentication to send email
			$mail->SMTPAuth = true; 

			//Provide username and password     
			$mail->Username = "muadovoithien@gmail.com";                 
			$mail->Password = "muadovoithien202122";                           
			//If SMTP requires TLS encryption then set it
			$mail->SMTPSecure = "tsl";                           
			//Set TCP port to connect to 
			$mail->Port = 587; 

			//From email address and name
			$mail->From = "from@yourdomain.com";
			$mail->FromName = "QT shop";

			//To address and name
			$mail->addAddress("vuquocthien8156@gmail.com", "Recepient Name");

			$mail->isHTML(true);

			$mail->Subject = "Xác nhận email";
			$mail->Body = "
			<html>
			<head>
			<title>HTML email</title>
			</head>
			<body>
			<h1>Xác nhận email</h1>
			
				<form action='192.168.1.6:8000/Thien/confirm.php' method='POST'>

					<input type='hidden' value='vuquocthien8156@gmail.com' name='email' />
					<input type='submit' value='Xác nhận' />

				</form>

			</body>
			</html>
			";
			$mail->AltBody = "This is the plain text version of the email content";

			if($mail->send()) 
			{
			    echo 1;
			} 
			else 
			{
			    echo 2;
			}