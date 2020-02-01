using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;

/// <summary>
/// Summary description for clsSecurity
/// </summary>
public class clsSecurity
{
    public clsSecurity()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public string SignUp(string EMail, string Password, string PasswordConfirm)
    {
        //public method allowing the user to sign up for an account

        //string variable  to store error messages
        string ErrorMsg = "";
        //if the two passwords match
        if (Password == PasswordConfirm)
        {
            //get the hash of the plain text password
            string HashPassword = GetHashString(Password + EMail);
            //add the record to the database
            //create an instance of the class clsDataConnection
            clsDataConnectionOLDB oldbDBConnection = new clsDataConnectionOLDB();
            //add the stored procedure parameter and parameter name for the email
            oldbDBConnection.AddParameter("@Email", EMail);
            //add the stored procedure parameter and parameter name for the hash password
            oldbDBConnection.AddParameter("@HashPassword", HashPassword);
            //execute the stored procedure
            oldbDBConnection.Execute("query_SignUp");

            //old obsolete code due to the new clsDataConnectionOLDB
            //clsDataConnection DB = new clsDataConnection("select * from Users");
            //DB.NewRecord["Email"] = EMail;
            //DB.NewRecord["UserPassword"] = HashPassword;
            //DB.AddNewRecord();
            //DB.SaveChanges();
        }
        //if the passwords do not match
        else
        {
            //generate an error message
            ErrorMsg = "The passwords do not match.";

        }
        //return the error message (if there is one)
        return ErrorMsg;
    }


    private string GetHashString(string SomeText)
    {
        if (SomeText != "") //if there is text to process
        {
            //create an instance of the hash generator
            SHA256Managed HashGenerator = new SHA256Managed();
            //string var to store the final hash
            string HashString;
            //array to store the bytes of the original text
            byte[] TextBytes;
            //array to store the bytes of the new hash
            byte[] HashBytes;
            //convert the text in the string to an array of bytes
            TextBytes = System.Text.Encoding.UTF8.GetBytes(SomeText);
            //generate the hash based on the array of bytes
            HashBytes = HashGenerator.ComputeHash(TextBytes);
            //generate the hash string replacing blank characters with -
            HashString = BitConverter.ToString(HashBytes).Replace("-", "");
            return HashString;
        }
        else//if there is nothing to process
        {
            //return a blank string
            return "";
        }
    }
    public Boolean Login(string EMail, string Password)
    {
        //convert the plain text password to a hash code
        Password = GetHashString(Password + EMail);
        //find the record matching the users email address and password

        //this code is now obsolete because the of the introduction of clsDataConnectionOLDB
        //clsDataConnection UserAccount = new clsDataConnection("select * from Users where EMail='" + EMail + "' and UserPassword= '" + Password + "'");
        clsDataConnectionOLDB oldbDBConnect = new clsDataConnectionOLDB();
        //add the stored procedure parameter and parameter name for the email
        oldbDBConnect.AddParameter("@EMail", EMail);
        //add the stored procedure parameter and parameter name for the hash password
        oldbDBConnect.AddParameter("@Password", Password);
        //execute the stored procedure
        oldbDBConnect.Execute("query_Login");


        //if there is only one record found then return true
        if (oldbDBConnect.Count == 1)
        {
            return true;

        }
        else //otherwise return false
        {
            return false;
        }
    }

    public Boolean ValidateInput(string SomeText)
    {
        //checks for illigal content in the input
        //will scan for any text containing <sript>
        //Boolean flag used to indicate a problem
        Boolean OK = true;
        //convert all text in input to lower case <SCRIPT> is just as bad as <script>
        SomeText = SomeText.ToLower();
        //if the text contains the suspect content
        if (SomeText.Contains("<script>"))
        {
            //flag a problem
            OK = false;
        }
        //return the state of the above tests
        return OK;
    }

}