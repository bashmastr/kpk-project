<?php
$servername = "localhost";
$username = "root";
$password = "123456";
$database = "login";

// Create connection
$con = new mysqli($servername, $username, $password,$database);

// Check connection
if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}
// echo "Connected successfully";
?>
