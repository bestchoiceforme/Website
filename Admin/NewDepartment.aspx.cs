using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewDepartment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCreatDepart_Click(object sender, EventArgs e)
    {
        String Sql = "INSERT INTO [Depart] (name, description) VALUES (@name, @des)";
        try
        {
            int check = Database.ExecuteNonQuery(Sql,
               "@name", txtDepartName.Text.Trim(),
               "@des", txtDescription.Text.Trim());
            if (check > 0)
            {
                lbOk.Text = "New depart is added!";
                lbOk.Visible = true;
                Response.Redirect("DepartmentManager.aspx");
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