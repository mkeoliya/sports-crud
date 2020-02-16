<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Don Bosco Sports Management System</title>
<link href="../css/index.css" rel="stylesheet" type="text/css">
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
include("../header-files/header1.php");
include("../header-files/header.php");
include("../header-files/conn.php");
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
<?php

$pulldown = "SELECT * FROM events ORDER BY id DESC";
$result_pulldown = mysqli_query($con,$pulldown);
$i=0;
while($data=mysqli_fetch_assoc($result_pulldown)){
  if($i%4==0)
    echo "<br>";
  extract($data);
  $cat_value=$data['id'];
  echo '<a href="points.php?event='.$data['event_name'].'&type='.$data['event_type'].'"><button class="snip1339" onClick="submit()">'.$data['event_name'].'<i class="ion-plus-round"></i></button></a>';
  $i++;
}

?>
<!--<form method="post" name="homeform">
<button class="snip1339" name="discipline" id="discipline" onClick="submit()">Discipline<i class="ion-plus-round"></i></button>
<button class="snip1339" name="marchpast" id="marchpast" onClick="submit()">March Past<i class="ion-plus-round"></i></button>
<button class="snip1339" name="drill_sr" id="drill_sr" onClick="submit()">Senior Drill<i class="ion-plus-round"></i></button>
<button class="snip1339" name="drill_jr" id="drill_jr" onClick="submit()">Junior Drill<i class="ion-plus-round"></i></button>
<button class="snip1339" name="relay" id="relay" onClick="submit()">Relay Race<i class="ion-plus-round"></i></button>
<button class="snip1339" name="tunnel_ball" id="tunnel_ball" onClick="submit()">Tunnel Ball<i class="ion-plus-round"></i></button>
<button class="snip1339" name="tug_o_war" id="tug_o_war" onClick="submit()">Tug O War<i class="ion-plus-round"></i></button>
<button class="snip1339" name="piggy_back" id="piggy_back" onClick="submit()">Piggy Back<i class="ion-plus-round"></i></button>
<button class="snip1339" name="slow_cycle" id="slow_cycle" onClick="submit()">Slow Cycle<i class="ion-plus-round"></i></button>
<button class="snip1339" name="coordination_race" id="coordination_race" onClick="submit()">Coordination Race<i class="ion-plus-round"></i></button>
<button class="snip1339" name="sacrace" id="sacrace" onClick="submit()">Sacrace<i class="ion-plus-round"></i></button>
<button class="snip1339" name="wheel_barrow" id="wheel_barrow" onClick="submit()">Wheel Barrow<i class="ion-plus-round"></i></button>
<button class="snip1339" name="obstacle" id="obstacle" onClick="submit()">Obstacle Race<i class="ion-plus-round"></i></button>
<button class="snip1339" name="hurdles" id="hurdles" onClick="submit()">Hurdle Race<i class="ion-plus-round"></i></button>
<button class="snip1339" name="hop_step_jump" id="hop_step_jump" onClick="submit()">Hop Step Jump<i class="ion-plus-round"></i></button>
<button class="snip1339" name="javelin" id="javelin" onClick="submit()">Javelin Throw<i class="ion-plus-round"></i></button>
<button class="snip1339" name="discuss" id="discuss" onClick="submit()">Discuss Throw<i class="ion-plus-round"></i></button>
<button class="snip1339" name="shotput" id="shotput" onClick="submit()">Shotput<i class="ion-plus-round"></i></button>
<button class="snip1339" name="high_jump" id="high_jump" onClick="submit()">High Jump<i class="ion-plus-round"></i></button>
<button class="snip1339" name="long_jump" id="long_jump" onClick="submit()">Long Jump<i class="ion-plus-round"></i></button>
<button class="snip1339" name="1500m" id="1500m" onClick="submit()">1500m<i class="ion-plus-round"></i></button>
<button class="snip1339" name="800m" id="800m" onClick="submit()">800m<i class="ion-plus-round"></i></button>
<button class="snip1339" name="400m" id="400m" onClick="submit()">400m<i class="ion-plus-round"></i></button>
<button class="snip1339" name="200m" id="200m" onClick="submit()">200m<i class="ion-plus-round"></i></button>
<button class="snip1339" name="100m" id="100m" onClick="submit()">100m<i class="ion-plus-round"></i></button>

<a href="points.php?even100m"><button class="snip1339" name="100m" id="100m" onClick="submit()">1000m<i class="ion-plus-round"></i></button></a>




</form>-->
</body>
</html>
