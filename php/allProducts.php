<?php
header('Content-Type: text/html; charset=ISO-8859-1');
require('connection.php');


$sql = "SELECT * FROM products";
$query = mysqli_query($db,$sql);
$result = mysqli_fetch_all($query,MYSQLI_ASSOC);
$json_data = json_encode($result);
echo $json_data;