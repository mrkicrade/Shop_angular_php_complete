<?php

require('connection.php');

$data = file_get_contents('php://input');
$result = json_decode($data);
// var_dump($result);
$user_id = $result->user_id;
// $product_title = $result->product_title;
// var_dump($user_id);
// print_r($user_id);
// var_dump($product_title);
$sql = "SELECT product_title, model, quantity, price, equal FROM orders WHERE user_id = '$user_id'";
// $sql = "SELECT * FROM orders WHERE user_id = '$user_id'";
$query = mysqli_query($db,$sql);
$products = mysqli_fetch_all($query,MYSQLI_ASSOC);

$json_data = json_encode($products);
echo $json_data;
