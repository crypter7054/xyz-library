<?php 

// Configuration and create connection.
include_once("class/DB.class.php");
include_once("class/Peminjaman.class.php");
include_once("class/Member.class.php");
include_once("class/Buku.class.php");

$peminjaman = new Peminjaman();
$peminjaman->open();

$buku = new Buku();
$buku->open();

$member = new Member();
$member->open();

if($_POST['method'] == "add")
{
    // $peminjaman->add_peminjaman();
    // $response["status"] = 0;
    
}else{
    $peminjaman->get_data();
    $i=0;
    while(list($id, $id_buku, $id_peminjam, $tanggal_peminjaman, $tanggal_pengembalian, $status) = $peminjaman->get_result())
    {
        // ambil judul buku
        $buku->get_buku($id_buku);
        list($x, $judul, $x, $x, $x, $x, $x) = $buku->get_result();

        // ambil nama peminjam
        $member->get_member($id_peminjam);
        list($x, $peminjam, $x, $x, $x, $x, $x) = $member->get_result();

        $response[$i]['id'] = $id;
        $response[$i]['id_buku'] = $id_buku;
        $response[$i]['judul'] = $judul;
        $response[$i]['peminjam'] = $peminjam;
        $response[$i]['tanggal_peminjaman'] = $tanggal_peminjaman;
        $response[$i]['tanggal_pengembalian'] = $tanggal_pengembalian;
        $response[$i]['status'] = $status;
        
        $i++;
    }
}

$peminjaman->close();
$buku->close();
$member->close();

header("Content-Type: application/json; charset=utf-8");
echo json_encode($response);

?>