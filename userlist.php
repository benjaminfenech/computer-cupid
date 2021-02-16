<?php
require('db.php');
include("authentication.php");
include("mainnav.php"); 
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Dashboard</title>
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
<div class="form">

<h2>Current Users:</h2>

<?php
$sql = "SELECT * FROM user ORDER BY username";
$result = mysqli_query($con,$sql);


while ($row = mysqli_fetch_array($result)) {
    $username = $row['username'];

    echo "<b>" . $username . "</b><br>";
}
?>

</div>
</body>
</html>