<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Don Bosco Sports Management System</title>
<link href="css/index.css" rel="stylesheet" type="text/css">
    <link href="css/style2.css" rel="stylesheet" type="text/css">
<style type="text/css">
    body,td,th {
	color: #FFFFFF;
	
}
.styled select {
	-webkit-appearance: button;
    -moz-appearance: button;
    -webkit-user-select: none;
    -moz-user-select: none;
    -webkit-padding-end: 20px;
    -moz-padding-end: 20px;
    -webkit-padding-start: 2px;
    -moz-padding-start: 2px;
	color:#555;
	padding-top: 2px;
    padding-bottom: 2px;
    text-overflow: ellipsis;
	input[type=text], textarea {
  -webkit-transition: all 0.30s ease-in-out;
  -moz-transition: all 0.30s ease-in-out;
  -ms-transition: all 0.30s ease-in-out;
  -o-transition: all 0.30s ease-in-out;
      box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.1);

  outline: none;
  padding: 3px 0px 3px 3px;
  margin: 5px 1px 3px 0px;
  border: 1px solid #DDDDDD;
}
 
input[type=text]:focus, textarea:focus {
  box-shadow: 0 0 5px rgba(81, 203, 238, 1);
  padding: 3px 0px 3px 3px;
  margin: 5px 1px 3px 0px;
  border: 1px solid rgba(81, 203, 238, 1);
}
	
  background: transparent;
  width: 150px;
  font-size: 20px;
  border: 1px solid #ccc;
  height: 34px;
}
.styled {
  margin: 50px;
  width: 120x;
  height: 34px;
  border: 1px solid #111;
  border-radius: 3px;
  overflow: hidden;
  
}
</style>
</head>

<body>
<?php
include("header1.php");
include("header.php");
include("conn.php");
if(isset($_POST['submit1']))
{
  //echo "<script>alert('hi');</script>";
  $part = $_POST['part'];
  $event = $_POST['event'];
  $house = $_POST['house'];
  $division = $_POST['division'];
  $sql = "SELECT * FROM participants WHERE part_name='".$part."' AND house='".$house."' AND division='".$division."' LIMIT 1";
  $res = mysqli_query($con,$sql);
  $val=mysqli_num_rows($res);
 // echo "<script>alert($val);</script>";
  if(mysqli_num_rows($res)==1)
  {
    $row = mysqli_fetch_assoc($res);
    $event_1 = $row['event_1'];
    $event_2 = $row['event_2'];
    $event_3 = $row['event_3'];
    $event_4 = $row['event_4'];
    $event_5 = $row['event_5'];
    if(strcmp($event_2,"")==0)
    {
      $update_event2 = mysqli_query($con,"UPDATE participants SET event_2 = '".$event."' WHERE part_name = '".$part."'");
    }
    else if(strcmp($event_3,"")==0)
    {
      $update_event3 = mysqli_query($con,"UPDATE participants SET event_3 = '".$event."' WHERE part_name = '".$part."'");
    }
    else if(strcmp($event_4,"")==0)
    {
      $update_event4 = mysqli_query($con,"UPDATE participants SET event_4 = '".$event."' WHERE part_name = '".$part."'");
    }
    else if(strcmp($event_5,"")==0)
    {
      $update_event5 = mysqli_query($con,"UPDATE participants SET event_5 = '".$event."' WHERE part_name = '".$part."'");
    }

  }
  else
  {
    $sql = "INSERT INTO participants (part_name,house,division,event_1) VALUES ('$part','$house','$division','$event')";
    $res = mysqli_query($con,$sql);
  }
	//header('Location: pointsHome.php');
}
?>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<form method="post" action="insert.php" name="homeform">
  <input type="text" placeholder="Participant Name" name="part"><br><br>
  <select name="event">
    <?php

      $pulldown = "SELECT * FROM events ORDER BY id DESC";
      $result_pulldown = mysqli_query($con,$pulldown);
      while($data=mysqli_fetch_assoc($result_pulldown)){
        extract($data);
        $cat_value=$data['id'];
        
        
              
               echo '<option value="' . $data['event_name'] . '">' . $data['event_name'] . '</option>';
              
      }

    ?>

  </select><br><br>
  <select name="house">
    <option value="red">Red</option>
    <option value="blue">Blue</option>
    <option value="green">Green</option>
    <option value="yellow">Yellow</option>
  </select><br><br>
  <select name="division">
    <option value="a">A</option>
    <option value="b">B</option>
    <option value="c">C</option>
    <option value="d">D</option>
    <option value="e">E</option>
    <option value="f">F</option>
  </select><br><br>
<button class="snip1339" name="submit1" id="submit1" onClick="submit()">Submit<i class="ion-plus-round"></i></button>

</form>
</body>
</html>