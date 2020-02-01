<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        //variable to store the email address
        string EMail = Request.Form["txtEMail"];
        //variable to store the password
        string Password = Request.Form["txtPassword"];
        //variable to store the password confirmation
        string PasswordConfirm = Request.Form["txtPasswordConfirm"];
        //create an instance of the security class
        clsSecurity SecurityCheck = new clsSecurity();
        //call up the sign up method passing in the string values
        string Error = SecurityCheck.SignUp(EMail, Password, PasswordConfirm);
        if(Password.Length <= 6)
        {
            //redirect to signup successfull html page
            Response.Redirect("SignUpFail.html");
        }
        if(Error == "")
        {
            //redirect to signup successfull html page
            Response.Redirect("SignUpSuccess.html");
        }
        else
        {
            //redirect to signup successfull html page
            Response.Redirect("SignUpFail.html");
        }
    }

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
       
</body>
</html>
