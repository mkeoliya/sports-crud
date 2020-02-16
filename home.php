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
if(isset($_POST['submit1']))
{
	header('Location: pointsHome.php');
}
if(isset($_POST['submit2']))
{
	header('Location: result.php');
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
<form method="post" name="homeform">
<button class="snip1339" name="submit1" id="submit1" onClick="submit()">Insert Points<i class="ion-plus-round"></i></button>

<button class="snip1339" name="submit2" id="submit2" onClick="submit()">Generate Result<i class="ion-plus-round"></i></button>



</form>
</body>
</html>