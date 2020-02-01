<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        //This code is now no longer required
        ////declare a variable to store the password from the form 
        //string Password;
        ////request the contents of the text box from the form
        //Password = Request.Form["txtPassword"];
        ////declare a variable to store the email from the textbox of the form
        //string Email;
        ////request the contents of the email textbox from the form
        //Email = Request.Form["txtEmail"];
        ////write the data back to the browser
        //Response.Write("Your password is " +  Password + " and your Email is " + Email);

        //the following code will take the password and email from the form passed to it
        //and check it against the database
        //create an instance of the security class
        clsSecurity Check = new clsSecurity();
        //declare a variable to store the password from the form
        string Password;
        //var for email address
        string EMail;
        //request the contents of the text boxes from the form
        Password = Request.Form["txtPassword"];
        EMail = Request.Form["txtEmail"];
        if(Check.Login(EMail,Password) == true)
        {
            //redirect to signup successfull html page
            Response.Redirect("LoginSuccess.html");
        }
        else
        {
            //redirect to signup successfull html page
            Response.Redirect("LoginFail.html");
        }
    }
</script>


