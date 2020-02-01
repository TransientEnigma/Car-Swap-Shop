<%@ Page Language = "C#"  %>
<!DOCTYPE html>
<script runat = "server">
</script>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
            The Car Swap Shop
    </title>
    <link href="Car.css" rel="stylesheet" />
</head>
<body>
<div class="HeaderContainer">
    <div  class="Logo">
         <img src="../CarSwapImages/swap-shop.png" width="150">
    </div>
        <div class="ArrowsAndText">
            <div class="HeaderText">
                <div class="HeaderCompanyNameLeft">
                    <h1 class="textshadow">The Car </h1>
                </div>
                <img src="../CarSwapImages/swap-arrows.png" width="100">
                <div class="HeaderCompanyNameRight">
                    <h1 class="textshadow">Swap Shop</h1>
                </div>
            </div>
            <div class="HeaderHistoryText">
                <h3 class="textshadow">Swapping Cars Since 2019</h3>
            </div>
        </div>
</div>

<article>
    <div class="ArticleContainerLeftSide">
        <div class="WelcomeMessage">
            <h1>Welcome to the Car Swap Shop</h1>
        </div>
        <div class="BigImage">
             <img src="../CarSwapImages/Display.png" />
             <div class="numOne">
            <div class="EnterSwap">
                    <form method="post" action="SwapProcessor.aspx">
                        Car make and model you wish to offer me:
                        <br />
                        <input type="text" name="txtTitle" size="40" /> <input name="btnSubmit" type="submit" value="Submit Offer" />
                        <br />
                        Enter additional detailsL
                        <textarea name="txtDescription" cols="50" rows="5"></textarea>
                        <br />

                    </form>
                       <h1>No.1 for car swaps</h1></div> 
                    
                </div>
            <div class="CarSelectTable">
                    <%
                    // create an instance of the Car collection
                    clsCarCollection newCarCollection = new clsCarCollection();
                    // create the index variable initialised at 0
                    Int32 Index = 0;
                    // get the count of records
                    Int32 RecordCount = newCarCollection.Count;
                    //loop through each car
                    %>
                    <table>
                        <tr>
                            <th>
                                <%
                                // write the car in the table header of the browser
                                Response.Write("CarNo");
                                %>
                            </th>
                            <th>
                                <%
                                // write the car name in the table header to the browser
                                Response.Write("CarName");
                                %>
                            </th>
                        </tr>
                        <%
                        while (Index < RecordCount)
                        {
                        %>
                        <tr>
                            <td> <!-- write the car to the browser -->
                                <a href="aCar.aspx?CarNo=<% Response.Write(newCarCollection.CarList[Index].CarNo);%>"><%Response.Write(newCarCollection.CarList[Index].CarNo);%></a>

                            </td>
                            <td>

                                <%
                                // write the car to the browser
                                Response.Write(newCarCollection.CarList[Index].CarName);
                                %>

                            </td>
                        </tr>
                        <%
                        // increment the index
                        Index++;
                        }
                        %>
                  </table>
            </div>
        </div>

                
                
        </div> 

        <div class="ArticleRightSidebar">
            <nav>
              <form method="post" action="DefaultProcessor.aspx">
                    Email:
                    <br />
                    <input type="email" name="txtEmail" placeholder="Enter email..." />
                    <br />
                    Password:
                    <br />
                    <input type="password" name="txtPassword" placeholder="Enter Password..." />
                    <br />
                    <input type="submit" value="Submit" class="button1" />
              </form>
                <ul>
                    <li><a href="redirect1.html">Welcome Page</a></li>
                    <li><a href="redirect1.html">Swap Page</a></li>
                    <li><a href="Signup.aspx">Sign Up Page</a></li>
                    <li><a href="redirect1.html">About Page</a></li>
                </ul>
            </nav>
        </div>
</article>
    <footer> 
        <div class="IconContainer">
            <a href="redirect1.html">
                <div class="LinedUpIcons">
                    <img src="../CarSwapImages/information.png" height="40" />
                    <h5>Information</h5>
                </div>
            </a>
            <a href="redirect1.html">
                <div class="LinedUpIcons">
                    <img src="../CarSwapImages/terms.png" height="40" />
                    <h5>Terms & Conditions</h5>
                </div>
            </a>
            <a href="redirect1.html">
                <div class="LinedUpIcons">
                    <img src="../CarSwapImages/team.png" height="40" />
                    <h5>Meet the Team</h5>
                </div>
            </a>
        </div>
        <div class="Copywrite">
            The Car Swap Shop, Copywrite &copy; 2019
        </div>
    </footer>
</body>
</html>