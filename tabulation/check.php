<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Review the Entry</title>
<link href="../css/index.css" rel="stylesheet" type="text/css">
    <link href="css/style2.css" rel="stylesheet" type="text/css">
<style type="text/css">
body,td,th {
	color: #EFEFEF;
}
</style>
</head>

<body>
<?php
session_start();
include("../header-files/header1.php");
include("../header-files/header.php");
include("../header-files/conn.php");
$pos1 = $_SESSION['pos1'];
$pos2 = $_SESSION['pos2'];
$pos3 = $_SESSION['pos3'];
$pos4 = $_SESSION['pos4'];
$event = $_SESSION['event'];
$sql1 = mysqli_query($con,"SELECT * FROM participants WHERE part_name = '". $pos1 ."'");
while($data1=mysqli_fetch_array($sql1)){
	extract($data1);
	$house1 = $data1['house'];
}
$sql2 = mysqli_query($con,"SELECT * FROM participants WHERE part_name = '". $pos2 ."'");
while($data2=mysqli_fetch_array($sql2)){
	extract($data2);
	$house2 = $data2['house'];
}
$sql3 = mysqli_query($con,"SELECT * FROM participants WHERE part_name = '". $pos3 ."'");
while($data3=mysqli_fetch_array($sql3)){
	extract($data3);
	$house3 = $data3['house'];
}
$sql4 = mysqli_query($con,"SELECT * FROM participants WHERE part_name = '". $pos4 ."'");
while($data4=mysqli_fetch_array($sql4)){
	extract($data4);
	$house4 = $data4['house'];
}
$sql_eventPoint = mysqli_query($con,"SELECT * FROM events WHERE event_name= '".$event."'");
while($data4=mysqli_fetch_array($sql_eventPoint)){
	extract($data4);
	$point1 = $data4['point1'];

}
$sql_eventPoint = mysqli_query($con,"SELECT * FROM events WHERE event_name= '".$event."'");
while($data4=mysqli_fetch_array($sql_eventPoint)){
	extract($data4);
	$point2 = $data4['point2'];
}
	$sql_eventPoint2 = mysqli_query($con,"SELECT * FROM events WHERE event_name= '".$event."'");
while($data4=mysqli_fetch_array($sql_eventPoint2)){

	extract($data4);

	$point3 = $data4['point3'];
}
	$sql_eventPoint3 = mysqli_query($con,"SELECT * FROM events WHERE event_name= '".$event."'");

while($data4=mysqli_fetch_array($sql_eventPoint3)){
	extract($data4);

	$point4 = $data4['point4'];
}
$sql_eventCat="SELECT * FROM events WHERE event_name = '".$event."'";
$result_sql_eventCat = mysqli_query($con,$sql_eventCat);
while($dataCat=mysqli_fetch_array($result_sql_eventCat)){
	extract($dataCat);
	$event_cat=$dataCat['event_cat'];
}
$sql_eventtype="SELECT * FROM events WHERE event_name = '".$event."'";
$result_sql_eventtype = mysqli_query($con,$sql_eventtype);
while($datatype=mysqli_fetch_array($result_sql_eventtype)){
	extract($datatype);
	$event_type=$datatype['event_type'];
}
//die("UPDATE ".$house1." SET ".$event." = ".$event." + '".$point1."'");
if(isset($_POST['submit'])){
	//$query = "UPDATE green SET 100mts = 100mts + 15";
	$query1 = "UPDATE ".$house1." SET ".$event." = ".$event." + '".$point1."'";
$result_point1 = mysqli_query($con,$query1);
$query2 = "UPDATE ".$house2." SET ".$event." = ".$event." + '".$point2."'";
$result_point2 = mysqli_query($con,$query2);
$query3 = "UPDATE ".$house3." SET ".$event." = ".$event." + '".$point3."'";
$result_point3 = mysqli_query($con,$query3);
$query4 = "UPDATE ".$house4." SET ".$event." = ".$event." + '".$point4."'";
$result_point4 = mysqli_query($con,$query4);
if($event_cat == "track" && $event_type == "ind"){
	$part_point1 = mysqli_query($con,"UPDATE participants SET points = points + '".$point1."' WHERE part_name = '".$pos1."'");
	$part_point2 = mysqli_query($con,"UPDATE participants SET points = points + '".$point2."' WHERE part_name = '".$pos2."'");
	$part_point3 = mysqli_query($con,"UPDATE participants SET points = points + '".$point3."' WHERE part_name = '".$pos3."'");
	$part_point4 = mysqli_query($con,"UPDATE participants SET points = points + '".$point4."' WHERE part_name = '".$pos4."'");
}
$red_add = mysqli_query($con,"UPDATE red SET total = 100m + 200m + 400m + 800m + 1500m + long_jump + high_jump + shotput + discuss + javelin + hop_step_jump + hurdles + obstacle + wheel_barrow + sacrace + coordination_race + slow_cycle + piggy_back + tug_o_war + tunnel_ball + relay_race + drill_jr + drill_sr + march_past + predecided");
$blue_add = mysqli_query($con,"UPDATE blue SET total = 100m + 200m + 400m + 800m + 1500m + long_jump + high_jump + shotput + discuss + javelin + hop_step_jump + hurdles + obstacle + wheel_barrow + sacrace + coordination_race + slow_cycle + piggy_back + tug_o_war + tunnel_ball + relay_race + drill_jr + drill_sr + march_past + predecided");
$green_add = mysqli_query($con,"UPDATE green SET total = 100m + 200m + 400m + 800m + 1500m + long_jump + high_jump + shotput + discuss + javelin + hop_step_jump + hurdles + obstacle + wheel_barrow + sacrace + coordination_race + slow_cycle + piggy_back + tug_o_war + tunnel_ball + relay_race + drill_jr + drill_sr + march_past + predecided");
$yellow_add = mysqli_query($con,"UPDATE yellow SET total = 100m + 200m + 400m + 800m + 1500m + long_jump + high_jump + shotput + discuss + javelin + hop_step_jump + hurdles + obstacle + wheel_barrow + sacrace + coordination_race + slow_cycle + piggy_back + tug_o_war + tunnel_ball + relay_race + drill_jr + drill_sr + march_past + predecided");
$update_valid = mysqli_query($con,"UPDATE events SET valid = 0 WHERE event_name = '".$event."'");
header('Location: hello.php');
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
<form name="check_form" method="post">
<font size="+3">Event: <u><b><?php echo $event; ?></b></u></font>
<p>
<label ><font size="+2">
Position 1:</font></label><p>Name: <input type="text" value="<?php echo $pos1 ?>" disabled>
House: <input type="text" value="<?php echo $house1 ?>" disabled>
<p>
<label ><font size="+2">
Position 2:</font></label><p>Name: <input type="text" value="<?php echo $pos2 ?>" disabled>
House: <input type="text" value="<?php echo $house2 ?>" disabled>
<p>
<label ><font size="+2">
Position 3:</font></label><p>Name: <input type="text" value="<?php echo $pos3 ?>" disabled>
House: <input type="text" value="<?php echo $house3 ?>" disabled>
<p>
<label ><font size="+2">
Position 4:</font></label><p>Name: <input type="text" value="<?php echo $pos4 ?>" disabled>
House: <input type="text" value="<?php echo $house4 ?>" disabled>
<p>
<button class="snip1339" name="submit" id="submit" >Submit<i class="ion-plus-round"></i></button>
</p>


</form>
</body>
</html>
