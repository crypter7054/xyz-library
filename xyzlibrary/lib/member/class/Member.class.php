<?php 

class Member extends DB
{

    function add_member($nama_lengkap, $jenis_kelamin, $alamat, $no_telp, $email)
    {
        $query = "INSERT INTO member 
        VALUES ('', '$nama_lengkap', '$jenis_kelamin', '$alamat', '$no_telp', '$email')";
        
        return $this->execute($query);
    }

    function get_member()
    {
        $query = "SELECT * FROM member";
        return $this->execute($query);
    }
}

?>