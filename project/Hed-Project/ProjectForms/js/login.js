var attempt = 3; // Variable to count number of attempts.
// Below function Executes on click of login button.
function validate(){
var username = document.getElementById("username").value;
var password = document.getElementById("password").value;
if ( username == "Tehseen" && password == "123456")
	{
	alert ("Focal Person Login Successfull. Click OK Button");
	window.location = "FPMainForm.html"; // Redirecting to other page.
	return false;
	}
if ( username == "Ali" && password == "123456")
	{
	alert ("Director Login Successfull. Click OK Button");
	window.location = "DirMainForm.html"; // Redirecting to other page.
	return false;
	}

if ( username == "Khan" && password == "123456")
	{
	alert ("Secretary Login Successfull. Click OK Button");
	window.location = "SecMainForm.html"; // Redirecting to other page.
	return false;
	}
else
	{
	attempt --;// Decrementing by one.
	alert("You have left "+attempt+" attempt;");
	// Disabling fields after 3 attempts.
	if( attempt == 0)
		{
		document.getElementById("username").disabled = true;
		document.getElementById("password").disabled = true;
		document.getElementById("submit").disabled = true;
		return false;
		}
	}
}