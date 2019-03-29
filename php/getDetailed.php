<?php

require('connection.php');

$data = file_get_contents('php://input');
$result = json_decode($data);
$id = $result->id;
$sql = "SELECT * FROM products WHERE id = '$id'";
$query = mysqli_query($db,$sql);
$product = mysqli_fetch_assoc($query);

$json_data = json_encode($product);
echo $json_data;