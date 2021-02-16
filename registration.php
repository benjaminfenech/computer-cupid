<?php
require('db.php');
include("homemainnav.php");
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Registration</title>
<link rel="stylesheet" href="css/style.css" />
</head>
<body>

<script type="text/javascript">
function FormValidation() {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confirmpassword").value;

        if (password.length < 5) {
        alert("Password must be at least 5 characters.");
        return false;
        }

        else if (password != confirmPassword) {
        alert("Passwords do not match.");
        return false;
        }

        else {
        return true;
        }
}
</script>

<?php

// If the form is submitted, check the username against the database
if (isset($_POST['submit'])){

        // remove backslashes before escaping special characters
        $username = stripslashes($_REQUEST['username']);
	$username = mysqli_real_escape_string($con,$username); 
	$email = stripslashes($_REQUEST['email']);
	$email = mysqli_real_escape_string($con,$email);
	$password = stripslashes($_REQUEST['password']);
	$password = mysqli_real_escape_string($con,$password);
        
        // Hash password (just using random salt and default cost)
        $hashedpassword = password_hash($password , PASSWORD_BCRYPT);

        $query = "SELECT * FROM `user` WHERE username='$username'";
	$result = mysqli_query($con,$query);
	$rows = mysqli_num_rows($result);
        
        // if the chosen username is found, redirect the user back to registration 
	if($rows==1) {
                echo "<div class='form'>
                <h3>This username is already registered.</h3>
                <br/>Please try and <a href='registration.php'>register</a> again.</div>";
        }

        // if the username is unique, register the user details in the database.
        else {
                $query = "INSERT into `user` (username, password, email) VALUES ('$username', '$hashedpassword', '$email')";
                $result = mysqli_query($con,$query);
                if($result){
                        echo "<div class='form'>
                        <h3>You are registered successfully.</h3>
                        <br/>Click here to <a href='login.php'>Login</a></div>";
                }
        }
}
else {
?>

<div class="form">
<h1>Registration</h1>
        <form name="registration" action="" method="post">
                <input type="text" name="username" id="username" placeholder="Username" required />
                <input type="email" name="email" id="email" placeholder="Email" required />
                <input type="password" name="password" id="password" placeholder="Password" required />
                <input type="password" name="confirmpassword" id="confirmpassword" placeholder="Confirm Password" required /><br>
                <input type="submit" name="submit" id="submit" value="Register" onclick="return FormValidation()" />
        </form>
</div>

<?php } ?>

</body>
</html>