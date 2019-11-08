<?php
    include "connect-db.php";

    $username = $_POST['username'];
    $password = $_POST['pass'];
    $role = $_POST['role'];
    // echo $role;
    

    $checkPass = false;

	if (isset($_POST['username'])){
    // echo $_POST['username'];
    $query = "SELECT * FROM users";
    $result = mysqli_query($con, $query);

    $resultRows = mysqli_num_rows($result);

    // echo $resultRows;
        if ($resultRows >=  0){
            while($row = mysqli_fetch_assoc($result)){
                if ($row["username"] == $username){
                    // echo "found";
                    
                    if ($row["password"] == $password){
                        if($row["role"] == $role){
                            echo "---loged in---";
                            $checkPass = true;
                        }
                        else{
                            echo "---access denied---";
                        }
                                     
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
            if($role == "focal-person"){
                header("Location: new-request.php");
                echo "<a href=index.php>--you are focal person--</a>";
            }
            if($role == "secretary"){
                echo "<a href=index.php>--you are secretary--</a>";
            }
            if($role == "director"){
                echo "<a href=index.php>--you are director--</a>";
            }
            if($role == "admin"){    
                header("Location: admin-account-create.php") ;          
                // echo "<a href=admin-account-create.php>--you are admin--</a>";
            }
        }

    $out = mysqli_fetch_assoc($result);
	
	}
?>