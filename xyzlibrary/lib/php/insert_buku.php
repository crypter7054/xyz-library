<?php

// Configuration and create connection.
include_once("class/DB.class.php");
include_once("class/Buku.class.php");

$response["status"] = 1;

$buku = new Buku();
$buku->open();

$result = $buku->add_data($_POST['isbn'], $_POST['judul'], $_POST['penulis'], $_POST['penerbit'], $_POST['tahun_terbit'], $_POST['jumlah_buku'], $_POST['kategori'], $_POST['deskripsi']);

if($results>0)
{
    $response["status"] = 0;
}

$buku->close();

header("Content-Type: application/json; charset=utf-8");
echo json_encode($response);

?>