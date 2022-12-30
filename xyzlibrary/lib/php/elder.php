<?php

// Configuration and create connection.
include_once("class/DB.class.php");
include_once("class/Elder.class.php");

$elder = new Elder();
$elder->open();

$response['status'] = 1;

if($_POST['method'] == "signup")
{
    $elder->add_data($_POST['name'], $_POST['gender'], $_POST['birthdate']);
    $response["status"] = 0;
}

$elder->close();

header("Content-Type: application/json; charset=utf-8");
echo json_encode($response);

?>