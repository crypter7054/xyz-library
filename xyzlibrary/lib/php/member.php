<?php 

// Configuration and create connection.
include_once("class/DB.class.php");
include_once("class/Member.class.php");

$member = new Member();
$member->open();

if($_POST['method'] == "add")
{
    $member->add_member($_POST['nama_lengkap'], $_POST['jenis_kelamin'], $_POST['alamat'], $_POST['no_telp'], $_POST['email']);
    $response["status"] = 0;
    
}else{
    $member->get_data();
    $i=0;
    while(list($id, $nama_lengkap, $jenis_kelamin, $alamat, $no_telp, $email) = $member->get_result())
    {
        $response[$i]['id'] = $id;
        $response[$i]['nama_lengkap'] = $nama_lengkap;
        $response[$i]['jenis_kelamin'] = $jenis_kelamin;
        $response[$i]['alamat'] = $alamat;
        $response[$i]['no_telp'] = $no_telp;
        $response[$i]['email'] = $email;
        
        $i++;
    }
}

$member->close();

header("Content-Type: application/json; charset=utf-8");
echo json_encode($response);

?>