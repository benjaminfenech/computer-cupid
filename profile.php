<?php
require('db.php');
include("authentication.php");
include("mainnav.php");
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>My Profile</title>
<link rel="stylesheet" href="css/style.css" />
</head>
<body>

<?php  

$username = $_SESSION['username'];
$sqlget = "SELECT * FROM user WHERE username='$username'";
$resultget=mysqli_query($con,$sqlget);
$row=mysqli_fetch_array($resultget,MYSQLI_BOTH);
$userid = $row['id'];
$userprofile = $row['profile'];
$userurl = $row['photo_url'];
$email = $row['email'];

?>

<div class="form">
    <h2>My Profile</h2>
    <p>
        <img src="<?php echo $userurl ?>" alt="User profile image" style="width:100px;height:100px;"><br >
        <b>Username:</b><br ><?php echo $username; ?><br >
        <b>Email Address:</b><br ><?php echo $email; ?><br >
        <b>Profile Description:</b><br ><?php echo $userprofile; ?><br><br><br>
        
    </p>
</div>

<?php

// If preferences are submitted, loop through checkboxes
// to find selections and insert them into the database   
if (isset($_POST['update'])){ 
    $checkbox1 = $_POST['chkl'] ; 
        for ($i=0; $i<sizeof ($checkbox1);$i++) {  
        $query="INSERT INTO likes (user_id, computer_id) VALUES ('$userid', '".$checkbox1[$i]. "')";  
        mysqli_query($con,$query) or die('<div class="form">Please reset your preferences before updating them.</div>');  
        }  
echo '<script language="javascript">';
echo 'alert("Preference data was successfully updated.")';
echo '</script>';
}  

if (isset($_POST['reset'])){ 
    $querydelete="DELETE FROM likes WHERE user_id='$userid'";  
    mysqli_query($con,$querydelete) or die("<div class='form'>Preferences couldn't be reset. Try again later.</div>");  
    echo '<script language="javascript">';
    echo 'alert("Preference data was successfully updated.")';
    echo '</script>';
}  

if (isset($_POST['profile'])){ 
    $postuserprofile = $_POST['profiletext'];
    $queryprofile="UPDATE user SET profile='$postuserprofile' WHERE id='$userid'";  
    mysqli_query($con,$queryprofile) or die("<div class='form'>Profile couldn't be updated. Try again later.</div>");
    echo '<script language="javascript">';
    echo 'alert("Profile description was successfully updated.")';
    echo '</script>';
}  

if (isset($_POST['profileimg'])){ 
    $postuserurl = $_POST['profileurl'];
    $queryurl="UPDATE user SET photo_url='$postuserurl' WHERE id='$userid'";  
    mysqli_query($con,$queryurl) or die("<div class='form'>Profile couldn't be updated. Try again later.</div>");
    echo '<script language="javascript">';
    echo 'alert("Image URL was successfully updated.")';
    echo '</script>';
}  
?>  

<div class="form">
<form action="" method="post">
    Update your computer preferences:<br > 
    <input type="checkbox" name="chkl[ ]" value="1">Macbook Air 2014 11"<br />  
    <input type="checkbox" name="chkl[ ]" value="2">Macbook Air 2014 13"<br />  
    <input type="checkbox" name="chkl[ ]" value="3">Macbook Air 2015 11"<br />  
    <input type="checkbox" name="chkl[ ]" value="4">Macbook Air 2015 13"<br />  
    <input type="checkbox" name="chkl[ ]" value="5">Macbook Air 2017 13"<br />  
    <input type="checkbox" name="chkl[ ]" value="6">Macbook Air 2018 13"<br />  
    <input type="checkbox" name="chkl[ ]" value="7">Dell XPS 11<br />  
    <input type="checkbox" name="chkl[ ]" value="8">Dell XPS 12<br />  
    <input type="checkbox" name="chkl[ ]" value="9">Dell XPS 13<br />  
    <input type="checkbox" name="chkl[ ]" value="10">Dell XPS 14<br />  
    <input type="checkbox" name="chkl[ ]" value="11">Dell XPS 15<br />  
    <input type="checkbox" name="chkl[ ]" value="12">Dell XPS 16<br />  
    <input type="checkbox" name="chkl[ ]" value="13">Custom Computer<br />  

    <input type="submit" name="update" value="Update">  
    <input type="submit" name="reset" value="Reset Preferences"> 
    <br ><br >
</form> 

<form action="profile.php" method="post">  
    Update profile description:<br><textarea style="width:300px" type="text" name="profiletext" placeholder="Describe yourself here" required /></textarea>
    <input type="submit" name="profile" value="Update">  
</form> 

<form action="profile.php" method="post">  
    Update profile image URL:<br><input type="text" name="profileurl" placeholder="Enter an image URL" required />
    <input type="submit" name="profileimg" value="Update">  
</form> 

</div>
</body>
</html>