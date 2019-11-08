// var attempt = 3; // Variable to count number of attempts.
// Below function Executes on click of login button.
function validate(){
    var username = document.getElementById("cnic").value;
    var password = document.getElementById("password").value;
    var password = document.getElementById("role").value;
    if ( username.length  == 13){
        alert ("Login successfully");
        window.location = "success.html"; // Redirecting to other page.
        return false;
    }
    else{
// attempt --;// Decrementing by one.
    alert("inbalid username or password or role");
// Disabling fields after 3 attempts.
// if( attempt == 0){
// document.getElementById("username").disabled = true;
// document.getElementById("password").disabled = true;
// document.getElementById("submit").disabled = true;
// return false;
// }
    }
}