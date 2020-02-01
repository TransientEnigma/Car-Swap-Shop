<%@ Page Language="C#" %>

<!DOCTYPE html>
<script runat="server">

</script>


<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Swap Processor</title>
    <meta charset="utf-8" />
    <link href="Car.css" rel="stylesheet" />
</head>
    <body>
    <%

        //create an instance of the security class
        clsSecurity CheckInput = new clsSecurity();
        //declare a variable to store the text txtTitle from the form
        string textTitle;
        //declare a variable to store the text txtTitle from the form
        string textDescription;
        //request the txtTitle of the text box from the form
        textTitle = Request.Form["txtTitle"];
        //request the txtDescription from the form
        textDescription = Request.Form["txtDescription"];
        //concatenate the text and check for potentially dangerous input
        if(CheckInput.ValidateInput(textTitle + textDescription) == false)
        {
            //flag a message
            Response.Write
            (
                "<div class=\"formattedText\"><table border=\"10\"><td>" + "Dangerous Text Detected" + "</td></table></div>"
            );
        }
        else
        {
            Response.Write("<div class=\"formattedText\"><table border=\"10\"><td>" + "Following content submitted to the database:" + "<br/>"+ textTitle + "<br/>" + textDescription + "<br />" +"</td></table></div>");
        }
   %>
    </body>
    </html>