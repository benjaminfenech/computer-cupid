<?php
require('db.php');
include("authentication.php");
include("mainnav.php");
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>My Matches</title>
<link rel="stylesheet" href="css/style.css" />
</head>
<body>

<div class="form">

<?php 
	$query = "SELECT computer_id, count(*) AS counter FROM likes GROUP BY computer_id ORDER BY counter desc";
    $result = mysqli_query($con, $query);
	
	echo "<h2> Top interests accross site users: </h2>";
	
	while($row = mysqli_fetch_assoc($result)) {
        $computerid = $row['computer_id'];
        $queryidname = "SELECT title FROM computer WHERE id='$computerid'";
        $result2 = mysqli_query($con, $queryidname);
        $row2 = mysqli_fetch_assoc($result2);
        $title = $row2['title'];

		echo "<br><strong>" . $row['counter'] . " like(s): </strong> " . $title;
	}
?>

</div>
</body>
</html>
