<?php

class Elder extends DB
{
    // Add data with default value.
    function add_data($name, $gender, $birthdate)
    {
        date_default_timezone_set("Asia/Jakarta");
        $created_at = date("Y-m-d H:i:s");

        $query = "INSERT INTO elder VALUES ('', '$name', '$gender', '$birthdate', '$created_at')";
        return $this->execute($query);
    }
    
    // Delete data.
    function delete_data($id)
    {
        $query = "DELETE FROM elder WHERE id = '$id'";
        return $this->execute($query);
    }

    // Get default data.
    function get_data()
    {
        $query = "SELECT * FROM elder";
        return $this->execute($query);
    }

    function get_user($id)
    {
        $query = "SELECT * FROM elder WHERE id = '$id'";
        return $this->execute($query);
    }
}

?>