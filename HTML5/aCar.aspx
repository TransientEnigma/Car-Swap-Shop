<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    //declare the variable to store the CarNo
    Int32 CarNo;
    //declare an instance of clsCar
    clsCar aCar = new clsCar();

    protected void Page_Load(object sender, EventArgs e)
    {
        //try to read in the query string assuming it is a valid number
        //localhost:49597/HTML5/aCar.aspx?CarNo=2
        try
        {
            //use the Request object to get the data for the CarNo
            CarNo = Convert.ToInt32(Request.QueryString["CarNo"]);
            aCar.FindCar(CarNo);
        
        }
        catch
        {
            //in the case of an error do nothing
        }
    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>A Car Swap Shop</title>
    <meta charset="utf-8" />
    <link href="Car.css" rel="stylesheet" />
</head>
<body>
<form method="post" action="DatabaseCheckProcessor.aspx">
        <div class="aCarTable" >
            <img src="../CarSwapImages/<%Response.Write(aCar.CarImage);%>" />
        <table>
            <tr>
                <td>Car No.</td><td><input type="text" name="txtCarNo" value="<%Response.Write(aCar.CarNo);%>"/></td>
            </tr>
            <tr>
                <td>Title</td><td> <input type="text" name="txtCarName" value="<%Response.Write(aCar.CarName);%>"/></td>
            </tr>
         </table>
            <input type="hidden" name="txtCarJPEG" value="<%Response.Write(aCar.CarImage);%>" />
            View database contents: <input type="submit" value="Check Database" />
        </div>

</form>



</body>
</html>
