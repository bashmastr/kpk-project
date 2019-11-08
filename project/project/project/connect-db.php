<?php
$servername = "localhost";
$username = "bashmastr";
$password = "qamar";
$database = "kpk";

// Create connection
$con = new mysqli($servername, $username, $password,$database);

// Check connection
if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}
// echo "Connected successfully";
?>
