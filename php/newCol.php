<?php

require('connection.php');

// $data = file_get_contents('php://input');
// $result = json_decode($data);
// var_dump($result);
// die();
// $coll = $result->coll;
$sql = "SELECT * FROM products WHERE newCol = 'true'";
$query = mysqli_query($db,$sql);
$result = mysqli_fetch_all($query,MYSQLI_ASSOC);
$json_data = json_encode($result);
echo $json_data;