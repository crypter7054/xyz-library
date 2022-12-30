<?php

// Configuration and create connection.
include_once("class/DB.class.php");
include_once("class/Buku.class.php");

$buku = new Buku();
$buku->open();


if($_POST['method'] == "add")
{
    $buku->add_data($_POST['isbn'], $_POST['judul'], $_POST['penulis'], $_POST['penerbit'], $_POST['tahun_terbit'], $_POST['jumlah_buku'], $_POST['kategori']);

}elseif ($_POST['method'] == "update") {
    $buku->update_data($_POST['isbn'], $_POST['judul'], $_POST['penulis'], $_POST['penerbit'], $_POST['tahun_terbit'], $_POST['jumlah_buku'], $_POST['kategori']);

}elseif ($_POST['method'] == "delete") {
    $buku->delete_data($_POST['isbn']);
    
}



$buku->close();

header("Content-Type: application/json; charset=utf-8");
echo json_encode($response);

?>