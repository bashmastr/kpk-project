<?php include 'config.php' ?>

<?php

    function fill_district($conn) {

        $sql = "SELECT * FROM district";
        $result = $conn->query($sql);
        $output = "";
        if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc()) {
                $output .= '<option value='.$row["district_id"].'>'.$row["district_name"].'</option>';
            }
        } else {
            echo "0 results";
        }
        return ($output);
    }

    function fill_college($conn, $district_id) {
        
        echo $district_id;
        $sql = "SELECT college_id, college_name FROM college WHERE district_id='.$district_id.';";
        
        $result = $conn->query($sql);
        $output = "";
        if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc()) {
                $output .= '<option value='.$row["college_id"].'">'.$row["college_name"].'</option>';
            }
        } else {
            echo "0 results";
        }
        
        echo ($output);
    }

    if(isset($_POST["id"]))
    {
        // echo "hamza";
        $id = $_POST["id"];
        fill_college($conn, $id);
    }