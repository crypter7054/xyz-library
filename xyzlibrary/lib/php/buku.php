<?php

// Configuration and create connection.
include_once("class/DB.class.php");
include_once("class/Buku.class.php");

$buku = new Buku();
$buku->open();


// if ($_POST['method'] == "update") {
//     $buku->update_data($_POST['isbn'], $_POST['judul'], $_POST['penulis'], $_POST['penerbit'], $_POST['tahun_terbit'], $_POST['jumlah_buku'], $_POST['kategori'], $_POST['deskripsi']);
//     $response["status"] = 0;

// }
if ($_POST['method'] == "delete") {
    $buku->delete_data($_POST['isbn']);
    $response["status"] = 0;
    
}else {
    $buku->get_data();
    $i=0;
    while(list($isbn, $judul, $penulis, $penerbit, $tahun_terbit, $jumlah_buku, $kategori) = $buku->get_result())
    {
        $response[$i]['isbn'] = $isbn;
        $response[$i]['judul'] = $judul;
        $response[$i]['penulis'] = $penulis;
        $response[$i]['penerbit'] = $penerbit;
        $response[$i]['tahun_terbit'] = $tahun_terbit;
        $response[$i]['jumlah_buku'] = $jumlah_buku;
        $response[$i]['kategori'] = $kategori;
        $i++;
    }
}



$buku->close();

header("Content-Type: application/json; charset=utf-8");
echo json_encode($response);

?>