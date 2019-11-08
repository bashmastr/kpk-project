<?php 

     $servername = "localhost";
     $username = "phpmyadmin";
     $password = "soothscier123";
     $dbname = "transfer_application";

     // Create connection
     $conn = new mysqli($servername, $username, $password, $dbname);

     if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
     }

?>