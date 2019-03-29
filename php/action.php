<?php

require('connection.php');

$sql = "SELECT * FROM products WHERE action = 'true'";
$query = mysqli_query($db,$sql);
$result = mysqli_fetch_all($query,MYSQLI_ASSOC);
$json_data = json_encode($result);
echo $json_data;