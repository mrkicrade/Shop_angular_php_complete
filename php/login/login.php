<?php

session_start();
require('../connection.php');

$data = file_get_contents('php://input');
$res = json_decode($data);
// var_dump($res);
$email = $res->email;
$sifra = $res->sifra;
// var_dump($email);
// var_dump($sifra);

$sql = "SELECT user_id, ime, prezime FROM users WHERE email = '$email' AND sifra = '$sifra'";
$query = mysqli_query($db , $sql);
$result = mysqli_fetch_object($query);
// var_dump($result);
$json_data = json_encode($result);
echo $json_data;

// $_SESSION['user_id'] = $result->user_id;
// $_SESSION['ime'] = $result->ime;
// $_SESSION['prezime'] = $result->prezime;

if ($result) {
    $_SESSION['user_id'] = $result->user_id;
    $_SESSION['ime'] = $result->ime;
    $_SESSION['prezime'] = $result->prezime;
    // header('Location: ../index.php');
} else {
    header('Location: ../error/error.php');
}
