<?php 

class Peminjaman extends DB
{

    function add_peminjaman($id_buku, $id_peminjam, $tanggal_peminjaman, $tanggal_pengembalian, $status)
    {
        $query = "INSERT INTO peminjaman 
        VALUES ('', '$id_buku', '$id_peminjam', '$tanggal_peminjaman', '$tanggal_pengembalian','$status')";
        
        return $this->execute($query);
    }

    function get_data()
    {
        $query = "SELECT * FROM peminjaman";
        return $this->execute($query);
    }
}

?>