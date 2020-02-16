<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>DBPC Sports '18 Tabulation</title>
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
session_start();
include("header1.php");
include("header.php");
include("conn.php");

if(isset($_POST['submit'])){
	$pos1=$_POST['name1'];
	$pos2=$_POST['name2'];
	$pos3=$_POST['name3'];
	$pos4 = $_POST['name4'];
	$_SESSION['pos1']=$pos1;
	$_SESSION['pos2']=$pos2;
	$_SESSION['pos3']=$pos3;
	$_SESSION['pos4']=$pos4;
	$_SESSION['event']=$_POST['event'];
	header('Location: check.php?pos1='.$pos1.'&pos2='.$pos2.'&pos3='.$pos3.'&event='.$_POST['event']);
	
}

?>
<form method="post" name="indexform">
<p>
<font size="+2">Event: </font>
<select name="event" id="event" class="styled">
<?php

$pulldown = "SELECT * FROM events ORDER BY id DESC";
$result_pulldown = mysqli_query($con,$pulldown);
while($data=mysqli_fetch_assoc($result_pulldown)){
	extract($data);
	$cat_value=$data['id'];
	
	
        
         echo '<option value="' . $data['event_name'] . '">' . $data['event_name'] . '</option>';
        
}

?>
</select>
</p>
<font size="+2">Position 1: </font>
<select name="name1" id="name1" class="styled">
<?php

$pulldown = "SELECT * FROM participants ORDER BY id DESC";
$result_pulldown = mysqli_query($con,$pulldown);
while($data=mysqli_fetch_assoc($result_pulldown)){
	extract($data);
	$cat_value=$data['id'];
	
	
        
         echo '<option value="' . $data['part_name'] . '">' . $data['part_name'] . '</option>';
        
}



?>
</select>

<font size="+2">Position 2: </font>
<select name="name2" id="name2" class="styled">
<?php

$pulldown = "SELECT * FROM participants ORDER BY id DESC";
$result_pulldown = mysqli_query($con,$pulldown);
while($data=mysqli_fetch_assoc($result_pulldown)){
	extract($data);
	$cat_value=$data['id'];
	
	
        
         echo '<option value="' . $data['part_name'] . '">' . $data['part_name'] . '</option>';
        
}



?>
</select>


<font size="+2">Position 3: </font>
<select name="name3" id="name3" class="styled">
<?php

$pulldown = "SELECT * FROM participants ORDER BY id DESC";
$result_pulldown = mysqli_query($con,$pulldown);
while($data=mysqli_fetch_assoc($result_pulldown)){
	extract($data);
	$cat_value=$data['id'];
	
	
        
         echo '<option value="' . $data['part_name'] . '">' . $data['part_name'] . '</option>';
        
}



?>
</select>


<font size="+2">Position 4:</font>
<select name="name4" id="name4" class="styled">
<?php

$pulldown = "SELECT * FROM participants ORDER BY id DESC";
$result_pulldown = mysqli_query($con,$pulldown);
while($data=mysqli_fetch_assoc($result_pulldown)){
	extract($data);
	$cat_value=$data['id'];
	
	
        
         echo '<option value="' . $data['part_name'] . '">' . $data['part_name'] . '</option>';
        
}



?>
</select>

<p>
<button class="snip1339" name="submit" id="submit" onClick="submit()">Submit<i class="ion-plus-round"></i></button>
</p>
</form>
</body>
</html>