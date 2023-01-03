<?php

// Configuration and create connection.
include_once("class/DB.class.php");
include_once("class/Buku.class.php");

$response["status"] = 1;

$buku = new Buku();
$buku->open();

$result = $buku->delete_data($_POST['isbn']);

if($results>0)
{
    $response["status"] = 0;
}

$buku->close();

header("Content-Type: application/json; charset=utf-8");
echo json_encode($response);

?>