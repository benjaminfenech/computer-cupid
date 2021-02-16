<?php
require('db.php');
include("homemainnav.php");
session_start();
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
<?php
// If form submitted, insert values into the database.
if (isset($_POST['username'])){
    // remove backslashes before escaping special characters
	$username = stripslashes($_REQUEST['username']);
	$username = mysqli_real_escape_string($con,$username);
	$password = stripslashes($_REQUEST['password']);
	$password = mysqli_real_escape_string($con,$password);

	//Check if this user and password combination exists in the database
    $query = "SELECT * FROM `user` WHERE username='$username'";
	$result = mysqli_query($con,$query);
	$rows = mysqli_num_rows($result);
	
if($rows==1){
	$row = mysqli_fetch_assoc($result);
	if(password_verify($password,$row['password'])){
		//If the password is correct, set the user session and redirect to the index.
		$_SESSION['username'] = $username;
		header("Location: index.php");
	}	
	else{
		echo "<div class='form'>
		<h3>Username/password is incorrect.</h3>
		<br/>Click here to <a href='login.php'>Login</a></div>";
	}
}
    else{
	echo "<div class='form'>
	<h3>No user was found, please try again.</h3>
	<br/>Click here to <a href='login.php'>Login</a></div>";
	}
}

else{
?>
<div class="form">
<h1>Log In</h1>
<form action="" method="post" name="login">
<input type="text" name="username" placeholder="Username" required />
<input type="password" name="password" placeholder="Password" required /><br >
<input name="submit" type="submit" value="Login" />
</form>
<p>Not registered yet? <a href='registration.php'>Register Here</a></p>
</div>
<?php } ?>
</body>
</html>