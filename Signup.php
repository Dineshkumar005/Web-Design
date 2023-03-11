<?php
// Create connection
$con=mysqli_connect('localhost','root','','Signup');
// Check connection
if (!$con) {
    die("Connection failed: ");
  }
  if(isset($_POST['Signup-Submit']))
  {
    $Name=$_POST['Signup-Name'];
    $Email_id=$_POST['Signup-Email'];
    $Password=$_POST['Signup-Password'];
    $Confirm_Password=$_POST['Signup-ConfirmPassword'];
   
    $ins="insert into signup(Name,Email,Password,ConfirmPassword)values('$Name','$Email_id','$Password','$Confirm_Password')";
    $r=mysqli_query($con,$ins);
    if($r)
    {
        echo'<script>alert("SignUp Successful")</script>';
    }
    else
    {
        echo'<script>alert("Please Retry")</script>';
    }
  }
?>