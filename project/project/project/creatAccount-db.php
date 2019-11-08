<?php

include "connect-db.php";
$username = $_POST['cnic'];
$password = $_POST['psw'];
$role = $_POST['role'];


echo "$username ";

// $checkPass = false;

if (isset($_POST['cnic']) && isset($_POST['psw'])){
    echo "yes";
    $query = "INSERT INTO users (cnic, password, role ) VALUES  ('$username',SHA1('$password'),'$role') ";
    if (!mysqli_query($con,$query)){
      echo("Error description: " . mysqli_error($con));
    }
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