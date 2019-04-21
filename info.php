<html>
<body>
<br>
<?php
	$hostname = 'ec2-3-86-254-163.compute-1.amazonaws.com';
	$username = 'demouser';
	$password = 'demoPassw0rd!';
	$dbname = 'capstonedatabase';
	$dbconnect = new mysqli($hostname, $username, $password, $dbname);
 	if ($dbconnect->connect_error) {
  	die("Error: " . $dbconnect->connect_error);
	}
	echo "You entered following details: <br>";
	
	if(isset($_POST['submit'])) {
		$Name=$_POST['Name'];
		$City=$_POST['City'];
	}
	$query = "INSERT INTO capstonetable (Name, City) VALUES ('$Name', '$City')";
	
	if (!mysqli_query($dbconnect, $query)) {
        	die('An error occurred when submitting your review.');
    	} else {	
		echo "Name: $Name <br> City: $City <br> <br> Thanks for your detail!";
    	}
?>
</body>
</html>
