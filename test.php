<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
</head>

<body>
<?php
session_start();
include("conn.php");
$res = mysqli_query($con, "SELECT * FROM participants WHERE division='a' ORDER BY points DESC");
while($row = mysqli_fetch_assoc($res))
{
	echo $row['part_name'];
}

/**$sql_a=mysql_query("SELECT MAX(points) FROM participants WHERE division = 'a'");
$max_a=mysql_result($sql_a, 0);

$sql = mysql_query("SELECT * FROM participants WHERE points = '".$max_a."' AND division = 'a'");
while($data = mysql_fetch_array($sql)){
	extract($data);
	echo $data['part_name']."<br>".PHP_EOL;
	
}**/
?>


</body>
</html>