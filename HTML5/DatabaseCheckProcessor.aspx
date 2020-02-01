<%@ Page Language="C#" %>

<!DOCTYPE html>
<script runat="server">

</script>


<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Data Check Processor</title>
    <meta charset="utf-8" />
    <link href="Car.css" rel="stylesheet" />
 
    

</head>
   
   
    <body>
    <%

        //variable to store the Car Number Input
        string CarNoInput = Request.Form["txtCarNo"];
        //variable to store the CarNameInput
        string CarNameInput = Request.Form["txtCarName"];
        //variable to store the CarJPEGInput
        string CarJPEGInput = Request.Form["txtCarJPEG"];
        //create an instance of the security class

        Response.Write
            (   
                "<div class=\"formattedText\"><table border=\"10\"><td>" +
                "Car Number is: " + CarNoInput
                + "<br/>" +
                "Car Name is: " + CarNameInput
                + "<br/>" +
                "Car JPEG is: " + CarJPEGInput
                + "<br/>" 
                + "</td></table></div>"
            );

    %>
    </body>
    </html>