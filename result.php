<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Result Generation</title>
<link href="css/index.css" rel="stylesheet" type="text/css">
    <link href="css/style2.css" rel="stylesheet" type="text/css">
<style>

table {
    border-collapse: collapse;
    width: 80%;
}

th, td {
  
 
    padding: 20px;
    text-align: center;
 text-shadow:#747474;
    border-bottom: 1px solid #ddd;
 
}

tbody:nth-child(even) {background-color: #747474}
th {
    background-color: #4CAF50;
    color: white;
}
td:hover {background-color: #f5f5f5}

body,td,th {
	color: #E0E0E0;
}
</style>
</head>

<body>
<?php
session_start();
include("header1.php");
include("header.php");
include("conn.php");
$sql_red=mysqli_query($con,"SELECT * FROM red");
while($data1=mysqli_fetch_array($sql_red)){
	extract($data1);
	$point_red = $data1['total'];
}
$sql_blue=mysqli_query($con,"SELECT * FROM blue");
while($data2=mysqli_fetch_array($sql_blue)){
	extract($data2);
	$point_blue = $data2['total'];
}
$sql_green=mysqli_query($con,"SELECT * FROM green");
while($data3=mysqli_fetch_array($sql_green)){
	extract($data3);
	$point_green = $data3['total'];
}
$sql_yellow=mysqli_query($con,"SELECT * FROM yellow");
while($data4=mysqli_fetch_array($sql_yellow)){
	extract($data4);
	$point_yellow = $data4['total'];
}
$sql_a=mysqli_query($con,"SELECT MAX(points) AS max FROM participants WHERE division = 'a'");
$row = mysqli_fetch_array($sql_a);
$max_a=$row['max'];

$sql_b=mysqli_query($con,"SELECT MAX(points) AS max FROM participants WHERE division = 'b'");
$row = mysqli_fetch_array($sql_b);
$max_b=$row['max'];

$sql_c=mysqli_query($con,"SELECT MAX(points) AS max FROM participants WHERE division = 'c'");
$row = mysqli_fetch_array($sql_c);
$max_c=$row['max'];

$sql_d=mysqli_query($con,"SELECT MAX(points) AS max FROM participants WHERE division = 'd'");
$row = mysqli_fetch_array($sql_d);
$max_d=$row['max'];

$sql_e=mysqli_query($con,"SELECT MAX(points) AS max FROM participants WHERE division = 'e'");
$row = mysqli_fetch_array($sql_e);
$max_e=$row['max'];

$sql_f=mysqli_query($con,"SELECT MAX(points) AS max FROM participants WHERE division = 'f'");
$row = mysqli_fetch_array($sql_f);
$max_f=$row['max'];

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

<font size="+4">House points</font>
<p>
<table width="999" height="100" border="2" align="center" cellpadding="2" cellspacing="2" cols="5" >
<tbody>
<tr>
<th width="25%" align="center" style="color:Black; height:10px; background-color: #FF0000"><strong>Red House</strong></th>
      <th width="25%" align="justify" bgcolor="#E6E6E6" style="color:Black; height:10px; background-color: #51CBEE" ><strong>Blue House</strong></th>
      <th width="25%" align="justify" bgcolor="#E6E6E6" style="color:Black; height:10px;" ><strong>Green House</strong></th>
      <th width="25%" align="justify" bgcolor="#E6E6E6" style="color:Black; height:10px; background-color: #FFDD00" ><strong>Yellow House</strong></th>
    </tr>
    </tbody>
    <tr>
    <td bgcolor="#FFFFFF" style="color:Black; height:15px"><?php echo $point_red; ?></td>
    <td bgcolor="#FFFFFF" style="color:Black; height:15px"><?php echo $point_blue; ?></td>
    <td bgcolor="#FFFFFF" style="color:Black; height:15px"><?php echo $point_green; ?></td>
    <td bgcolor="#FFFFFF" style="color:Black; height:15px"><?php echo $point_yellow; ?></td>
    </tr>
 
</table>
<br>
<br>
<br>
<font size="+4">Best Athlete</font>
<br>
<br>
<br>
<br>	
<font size="+3">Division A: <br></font>


<?php

$sql1 = mysqli_query($con,"SELECT * FROM participants WHERE points = '".$max_a."' AND division = 'a'");
while($data1 = mysqli_fetch_array($sql1)){
	extract($data1);
echo $data1['part_name']." (".$max_a.") <br>";
	
}
?>
<br>
<br>
<font size="+3">Division B: <br></font>
<?php

$sql2 = mysqli_query($con,"SELECT * FROM participants WHERE points = '".$max_b."' AND division = 'b'");
while($data2 = mysqli_fetch_array($sql2)){
	extract($data2);
echo $data2['part_name']." (".$max_b.") <br>";
	
}
?>
<br>
<br>
<font size="+3">Division C: <br></font>
<?php

$sql3 = mysqli_query($con,"SELECT * FROM participants WHERE points = '".$max_c."' AND division = 'c'");
while($data3 = mysqli_fetch_array($sql3)){
	extract($data3);
echo $data3['part_name']." (".$max_c.") <br>";
	
}
?>
<br>
<br>
<font size="+3">Division D: <br></font>
<?php

$sql4 = mysqli_query($con,"SELECT * FROM participants WHERE points = '".$max_d."' AND division = 'd'");
while($data4 = mysqli_fetch_array($sql4)){
	extract($data4);
echo $data4['part_name']." (".$max_d.") <br>";
	
}
?>
<br>
<br>
<font size="+3">Division E: <br></font>
<?php

$sql5 = mysqli_query($con,"SELECT * FROM participants WHERE points = '".$max_e."' AND division = 'e'");
while($data5 = mysqli_fetch_array($sql5)){
	extract($data5);
echo $data5['part_name']." (".$max_e.") <br>";
	
}
?>
<br>
<br>
<font size="+3">Division F: <br></font>
<?php

$sql6 = mysqli_query($con,"SELECT * FROM participants WHERE points = '".$max_f."' AND division = 'f'");
while($data6 = mysqli_fetch_array($sql6)){
	extract($data6);
echo $data6['part_name']." (".$max_f.") <br>";
	
}
?>

</div>
</body>
</html>