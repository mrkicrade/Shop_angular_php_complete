<?php

require('connection.php');

$data = file_get_contents('php://input');
$res = json_decode($data);
var_dump($res);
$user_id = $res->user_id;
$productTitle = $res->productTitle;
$model = $res->model;
$color = $res->color;
$quantity = $res->number;
$price = $res->price;
$id_product = $res->id;
$equal = $res->equal;

// $sql = "INSERT INTO orders VALUES(NULL,'$user_id','$productTitle','$model','$color','$quantity','$price','$equal')";
$sql = "INSERT INTO orders VALUES(NULL,'$user_id','$productTitle','$model','$color','$quantity','$price','$equal')";
$query = mysqli_query($db, $sql);