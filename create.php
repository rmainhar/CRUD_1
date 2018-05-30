<?php
//create.php
if ($_SERVER["REQUEST_METHOD"] == "POST")	//Check it is coming from a form
    {
		
	require_once 'login.php';				//mysql credentials

	//delcare PHP variables
	$lastName = $_POST["lastName"];			//The values in the $_POST must match the names given from the HTML document
	$className = $_POST["className"];
	$year = $_POST["year"];
	
	//Open a new connection to the MySQL server
	//see https://www.sanwebe.com/2013/03/basic-php-mysqli-usage for more info
	$conn = new mysqli($mysql_host, $mysql_username, $mysql_password, $mysql_database);
	
	//Output any connection error
	if ($conn->connect_error) {
		die('Error : ('. $conn->connect_errno .') '. $conn->connect_error);
	}   
	
		$statement = $conn->prepare("INSERT INTO student (studentName, class, year) VALUES(?, ?, ?)"); //prepare sql insert query
		//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
		$statement->bind_param('sss', $lastName, $className, $year); //bind value
		if($statement->execute())
			{
				//print output text
				echo nl2br("Hello "." ". $lastName . "! We are so glad you have taken ". $className.  "\r\nIn your ". $year ."th year.", false);
			}
			else{
					print $mysqli->error; //show mysql error if any 
				}
echo"<br><form action= 'update.php' method = 'get'>";
echo "<input name = 'action'   type = 'submit' value = 'Go Back'></form>";
         }
else{
    echo ("error");
    }         
?>