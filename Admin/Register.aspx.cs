using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CreateUserButton_Click(object sender, EventArgs e)
    {
        String Sql = "INSERT INTO [User] (userID, password, fullname, departID, userType) VALUES (@userID, @password, @fullname, @departID, @userType)";
        try
        {
            int check = Database.ExecuteNonQuery(Sql,
               "@userID", txtUserID.Text,
               "@fullname", txtFullName.Text,
               "@departID", DropDownListDepart.SelectedValue,
               "@password", txtPassword.Text,
               "@userType", DropDownListUserType.SelectedValue);
            if (check > 0)
            {
                lbOk.Text = "New user is added!";
                lbOk.Visible = true;
            }
            else
            {
                lbOk.Text = "Error with SQL!!!";
                lbOk.Visible = true;
            }
        }
        catch
        { 
            lbOk.Text = "Error with SQL!!!";
            lbOk.Visible = true;            
        }
    }
}