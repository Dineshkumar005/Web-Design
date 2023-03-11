<?php
// Create connection
$con=mysqli_connect('localhost','root','','Signup');
// Check connection

if (!$con) {
    die("Connection failed: ");
  }
  if(isset($_POST['Signin']))
  {
    $Email_id=$_POST['Signin-Email'];
    $Password=$_POST['Signin-Password'];
    $duplicate=mysqli_query($con,"select* from signup where Email='$Email_id' or Password='$Password'");
    if(mysqli_num_rows($duplicate)>0)
    {
       header("location:Main.html");
    }
    else{
   echo'<script>alert("Invalid User Id or Password")</script>';
  }
  }
?>