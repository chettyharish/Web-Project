<?php



			$emailsub = 'Email From WildIndia!';
			$emailadd = 'chettyharish@yahoo.co.in';
			
	/*variables*/		
			$fnamep = $_POST['fname'];
			$lnamep = $_POST['lname'];
			$emailp = $_POST['email'];
			$date = $_POST['dotDay'];
			$month = $_POST['dotMonth'];
			$year = $_POST['dotYear'];
			$mess = $_POST['comments'];
			
			*/message being sent*/
			
			$body = <<<EOD
<br><hr<br>
First name: $fname <br>
Last name: $lname <br>
Day of Travelling: $dotDay <br>
Month of Travelling: $dotMonth <br>
Year of Travelling: $dotYear <br>
Message: $comments <br>
EOD;


			$headers = "From: $email\r\n";
			$headers .="Content-type: text/html\r\n";
			$success = mail($emailadd,$emailsub,$body,$headers);
			
			
			/*Resutlts page*/
			$theResults = <<<EOD
<html>
<head></head>
<body
Your Email has been sent
</body>
</html
EOD;
echo "$theResults";
?>