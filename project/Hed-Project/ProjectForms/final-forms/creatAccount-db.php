<?php

include "connect-db.php";
$username = $_POST['username'];
$password = $_POST['psw'];
$role = $_POST['role'];


echo "$username $password";

$checkPass = false;

if (isset($_POST['username']) && isset($_POST['psw'])){
// // echo $_POST['username'];
    if($role == "f"){
        $role = "focal-person";
    }
    if($role == "s"){
        $role = "secretary";
    }
    if($role == "d"){
        $role = "director";
    }
    if($role == "a"){
        $role = "admin";
    }
    $query = "INSERT INTO users (username, password, role ) VALUES  ('$username','$password','$role') ";
    $result = mysqli_query($con, $query);

echo"account created go to login -- <a href=index.php>login</a> --";
// $resultRows = mysqli_num_rows($result);

// echo $resultRows;
//     if ($resultRows >=  0){
//         while($row = mysqli_fetch_assoc($result)){
//             if ($row["username"] == $username){
//                 // echo "found";
//                 if ($row["password"] == $password){
//                     echo "loged in";
//                     $checkPass = true;
                    
//                 }
//             }
          
//         }
//     }
//     if($checkPass == false){
//         echo "username and password invalid ";
//         echo "<a href=index.php>--click retry--</a>";
//     }

// $out = mysqli_fetch_assoc($result);

}

?>