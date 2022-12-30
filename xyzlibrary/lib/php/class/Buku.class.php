<?php

class Buku extends DB
{
    // Add data with default value.
    function add_data($isbn, $judul, $penulis, $penerbit, $tahun_terbit, $jumlah_buku, $kategori)
    {
        $query = "INSERT INTO buku VALUES ('$isbn', '$judul', '$penulis', '$penerbit', '$tahun_terbit', '$jumlah_buku', '$kategori')";
        return $this->execute($query);
    }

    // update data
    function update_data($isbn, $judul, $penulis, $penerbit, $tahun_terbit, $jumlah_buku, $kategori)
    {
        $query = "UPDATE buku SET judul_buku='$judul', penulis='$penulis', penerbit='$penerbit', tahun_terbit='$tahun_terbit', jumlah_buku='$jumlah_buku', kategori='$kategori' WHERE isbn='$isbn'";
        return $this->execute($query);
    }
    
    // Delete data.
    function delete_data($isbn)
    {
        $query = "DELETE FROM buku WHERE isbn = '$isbn'";
        return $this->execute($query);
    }

    // Get default data.
    function get_data()
    {
        $query = "SELECT * FROM buku";
        return $this->execute($query);
    }

    function get_user($isbn)
    {
        $query = "SELECT * FROM buku WHERE isbn = '$isbn'";
        return $this->execute($query);
    }

    // ambil kategori
    function get_kategori()
    {
        $query = "SELECT kategori FROM buku GROUP BY kategori";
        return $this->execute($query);
    }
}

?>