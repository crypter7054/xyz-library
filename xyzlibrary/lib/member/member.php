<?php 

// Configuration and create connection.
include_once("class/DB.class.php");
include_once("class/Member.class.php");

$member = new Member();
$member->open();

$response['status'] = 1;

if($_POST['method'] == "signup")
{
    $member->add_member($_POST['nama_lengkap'], $_POST['jenis_kelamin'], $_POST['alamat'], $_POST['no_telp'], $_POST['email']);
    $response["status"] = 0;
}

$member->close();

header("Content-Type: application/json; charset=utf-8");
echo json_encode($response);

?>