<?php
//include auth.php file on all secure pages
include("authentication.php");
include("db.php");
include("mainnav.php");
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Welcome Home</title>
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
<div class="form">
<p>Welcome back <?php echo $_SESSION['username']; ?>!</p>
<p>
<?php
//query db to find corresponding email for the user
$username = $_SESSION['username'];
$sql = "SELECT * FROM user WHERE username='$username'";
$result=mysqli_query($con,$sql);
$row=mysqli_fetch_array($result,MYSQLI_BOTH);
$email = $row['email'];
$userid = $row['id'];
$_SESSION['email'] = $email;
$_SESSION['userid'] = $userid;

echo "Email is: ";
echo $email;
?>
</p>

</div>
</body>
</html>