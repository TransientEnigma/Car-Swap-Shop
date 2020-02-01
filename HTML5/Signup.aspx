<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="Car.css" rel="stylesheet" />
    <title>Sign up</title>
</head>
<body>
    <div class="formattedText">
    <form method="post" action="SignUpProcessor.aspx">
            
        <table border=1>
            <tr ><td colspan="2"><h1>Sign Up</h1></td></tr>
            <tr><td>E-mail Address</td><td><input type="email" name="txtEMail" /></td></tr>
            <tr><td>Password</td><td><input type="password" name="txtPassword" /></td></tr>
            <tr><td>Confirm Password</td><td><input type="password" name="txtPasswordConfirm" /></td></tr>
            <tr><td colspan="2"><input type="submit" value="Submit" /></td></tr> 
        </table>
    </form>
    </div>
</body>
</html>
