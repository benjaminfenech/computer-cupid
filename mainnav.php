
<nav>
  <ul>
    <li><a href="index.php">Home</a></li>
    <li><a href="about.php">About</a></li>
    <li><a href="mostliked.php">Most Liked</a></li>
    <li><a href="userlist.php">Userlist</a></li>
    <li style="float:right"><a href="logout.php">Log Out</a></li>
    <li style="float:right"><a href="matches.php">Matches</a></li>
    <li style="float:right"><a href="messages.php">Messages</a></li>
    <li style="float:right"><a href="profile.php">Profile</a></li>
    <li style="float:right"><a><?php echo $_SESSION['username']; ?></a></li>
  </ul>
</nav>
