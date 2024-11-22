
//check the password validation
function checkPassword () 
{
	if (document.getElementById("password1").value != document.getElementById("password2").value )
	{
		alert ("Password mismatched TRY Again !");
		return false;
	}
	else {
		alert ("Submission completed !");
		return true;
	}		
}

// show user entered passwords
function showPasswords() {
    var pass1 = document.getElementById("password1");
    var pass2 = document.getElementById("password2");
  if (pass1.type === "password" || pass2.type === "password") {
    pass1.type = "text";
    pass2.type = "text";
  }
  else {
    pass1.type = "password";
    pass2.type = "password";
  }
}
