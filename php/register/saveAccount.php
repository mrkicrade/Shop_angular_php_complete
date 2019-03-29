<?php

require('../connection.php');

$data = file_get_contents('php://input');
$result = json_decode($data);
// var_dump($result);
$ime = $result->ime;
$prezime = $result->prezime;
$email = $result->email;
$sifra = $result->sifra;
$adresa = $result->adresa;
$postanski_broj = $result->postanski_broj;
$grad = $result->grad;
$telefon = $result->telefon;
// var_dump($postanski_broj);

$sql = "INSERT INTO users VALUES(NULL,'$ime','$prezime','$email','$sifra','$adresa','$postanski_broj','$grad','$telefon')";
$query = mysqli_query($db, $sql);