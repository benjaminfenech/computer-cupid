<?php
require('db.php');
include("authentication.php");
include("mainnav.php");
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>My Messages</title>
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
<?php
if (isset($_POST['sendmessage'])){ 
    $fromuser = $_SESSION['username'];
    $fromuserid = $_SESSION['userid'];
    $touser = $_POST['recipientuser'];
    $messagetext = $_POST['messagetext'];
    $time= date('Y-m-d H:i:s');

    $findquery = "SELECT * FROM user WHERE id='$touser'";
    $result = mysqli_query($con,$findquery);
    $row=mysqli_fetch_array($result,MYSQLI_BOTH);
    $rows = mysqli_num_rows($result);
    $recipientid = $row['id'];
        
    // if the chosen username is found, redirect the user back to registration 
	if($rows==0) {
        echo '<script language="javascript">';
        echo 'alert("No user found. Please try again.")';
        echo '</script>';
    }
    else{
    $querymessage="INSERT INTO message (from_user_id, to_user_id, datetime, text) VALUES ('$fromuserid', '$recipientid', '$time', '$messagetext')";  
    mysqli_query($con,$querymessage) or die("<div class='form'>Message couldn't be sent. Try again later.</div>");  
    echo '<script language="javascript">';
    echo 'alert("Message was successfully sent.")';
    echo '</script>';
    }
}  
?>

<div class="form">
<h2>Send someone a message:</h2>
<form action="" method="post">
<b>Send to:</b>
<?php

$sqlusers = "SELECT * FROM user ORDER BY username";
$result = mysqli_query($con,$sqlusers);

echo "<select name='recipientuser'>";
while ($row = mysqli_fetch_array($result)) {
    echo "<option value='" . $row['id'] . "'>" . $row['username'] . "</option>";
}
echo "</select>";

?>
<br><b>Message:</b><br><textarea style="width:600px; height:100px" type="text" name="messagetext" placeholder="Enter your message here" required /></textarea><br>
<input type="submit" name="sendmessage" value="Send"><br>  
</form> 
<h2>Received Messages:</h2>

<table>
  <tr>
    <th>From</th>
    <th>Time</th>
    <th>Message</th>
  </tr>

<?php  

$myid = $_SESSION['userid'];
$sqlmsg = "SELECT * FROM message WHERE to_user_id='$myid'";
$resultmsg = mysqli_query($con,$sqlmsg);


while ($row = mysqli_fetch_array($resultmsg)) {
    $senderid = $row['from_user_id'];
    $querysendname = "SELECT username FROM user WHERE id='$senderid'";
    $result2 = mysqli_query($con, $querysendname);
    $row2 = mysqli_fetch_assoc($result2);
    $username = $row2['username'];
    echo "<tr>";
    echo "<td>" . $username . "</td>";
    echo "<td>" . $row['datetime'] . "</td>";
    echo "<td>" . $row['text'] . "</td>";
    echo "</tr>";
}

?>
</table>

<h2>Sent Messages:</h2>

<table>
  <tr>
    <th>To</th>
    <th>Time</th>
    <th>Message</th>
  </tr>
<?php  

$myid = $_SESSION['userid'];
$sqlmsg = "SELECT * FROM message WHERE from_user_id='$myid'";
$resultmsg = mysqli_query($con,$sqlmsg);


while ($row = mysqli_fetch_array($resultmsg)) {
    $senderid = $row['to_user_id'];
    $querysendname = "SELECT username FROM user WHERE id='$senderid'";
    $result3 = mysqli_query($con, $querysendname);
    $row3 = mysqli_fetch_assoc($result3);
    $username = $row3['username'];
    echo "<tr>";
    echo "<td>" . $username . "</td>";
    echo "<td>" . $row['datetime'] . "</td>";
    echo "<td>" . $row['text'] . "</td>";
    echo "</tr>";
}

?>
</table>

</div>
</body>
</html>