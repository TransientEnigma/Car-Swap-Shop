using System;

public class clsEMail
{
    public clsEMail()
    {
    }

    public bool SendEMail(string SenderEMail, string RecipientEMail, string SubjectLine, string Message)
    {
        //create a new clsDataConnectionOLDB object
        clsDataConnectionOLDB oldbDB = new clsDataConnectionOLDB();
        //add the stored procedure parameter and parameter name for the sender email
        oldbDB.AddParameter("@SenderEMail", SenderEMail);
        //add the stored procedure parameter and parameter name for the recipeint email
        oldbDB.AddParameter("@RecipientEMail", RecipientEMail);
        //add the stored procedure parameter and parameter name for the subjectline
        oldbDB.AddParameter("@SubjectLine", SubjectLine);
        //add the stored procedure parameter and parameter name for the message
        oldbDB.AddParameter("@Message", Message);
        //execute the stored procedure
        oldbDB.Execute("query_SendEmail");

        //oldcode using old clsDataConnection
        //clsDataConnection DB = new clsDataConnection("select * from tblEmail");        
        //DB.NewRecord["SenderEMail"] = SenderEMail;
        //DB.NewRecord["RecipientEMail"] = RecipientEMail;
        //DB.NewRecord["SubjectLine"] = SubjectLine;
        //DB.NewRecord["Message"] = Message;
        //DB.AddNewRecord();
        //DB.SaveChanges();
        return true;
    }
}