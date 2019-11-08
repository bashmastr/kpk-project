<?php
    include "connect-db.php";

    $username = $_POST['cnic'];
    $password = $_POST['psw'];

    // $role = $_POST['role'];
    $checkPass = false;

	if (isset($_POST['cnic'])){
   
        $query = "SELECT * FROM users";
        // $query = "SELECT * FROM users where cnic = '".$username."'";
        // print_r($query);


        $result = mysqli_query($con, $query);
        // if (!mysqli_query($con, $query)){
        //     echo("Error description: " . mysqli_error($con));
        //   }
      

        $resultRows = mysqli_num_rows($result);
       
            if ($resultRows >=  0){
                while($row = mysqli_fetch_assoc($result)){
                    print_r($row["cnic"]);
                    echo $username;
                    if ($row["cnic"] == $username){
                        echo "user name matched  ";
                        // echo "matchedas1231123  ";
                        if (($row["password"]) == SHA1($password)){
                            echo "pass matched ";
                            
                                echo "--1-loged in---";
                                $checkPass = true;
                                $role = $row["role"];                 
                        }
                        else{
                            echo "  password not matched ";
                        }
                    

                    }
                
                }
            }
            if($checkPass == false){
                echo "username and password invalid ";            
                // header("Location:index.php");
                echo "<a href=index.php>--click retry--</a>";
            }

            // link roles

            if($checkPass == true){
                if($role == "4"){
                    header("Location: new-request.php");
                    // echo "<a href=index.php>--you are focal person--</a>";
                }
                if($role == "3"){
                    echo "<a href=index.php>--you are secretary--</a>";
                }
                if($role == "2"){
                    echo "<a href=index.php>--you are director--</a>";
                }
                if($role == "1"){    
                    header("Location: admin-account-create.php") ;          
                    // echo "<a href=admin-account-create.php>--you are admin--</a>";
                }
            }

        $out = mysqli_fetch_assoc($result);
        
	}
?>