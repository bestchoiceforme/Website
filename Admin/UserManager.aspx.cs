using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserManager : System.Web.UI.Page
{   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ThanhVien"] == null)
        {
            Response.Redirect("Default.aspx");
        }

        if (!IsPostBack)
        {
            this.DisplayList();
        }
    }

    void DisplayList()
    {
        String Sql = "SELECT * FROM [User]";
        DataTable Depart = Database.GetData(Sql);

        GridView1.DataSource = Depart;
        GridView1.DataBind();

        MultiView1.ActiveViewIndex = 0;
    }

    void DisplayEdit(String userID)
    {
        String Sql = "SELECT * FROM [User] WHERE userID=@userID";
        DataTable User = Database.GetData(Sql, "@userID", userID);

        txtUserID.Text = User.Rows[0]["userID"].ToString();
        txtFullName.Text = User.Rows[0]["fullname"].ToString();
        //txt.Text = User.Rows[0]["Address"].ToString();
        //txtPhone.Text = User.Rows[0]["Phone"].ToString();
        //txtEmail.Text = User.Rows[0]["Email"].ToString();
        DropDownListDepart.SelectedValue = User.Rows[0]["departID"].ToString();
        dropDownListUserType.SelectedValue = User.Rows[0]["userType"].ToString();
        txtPassword.Text = User.Rows[0]["password"].ToString();

        MultiView1.ActiveViewIndex = 1;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            String userID = GridView1.SelectedRow.Cells[0].Text;

            this.DisplayEdit(userID);
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    protected void btnList_Click(object sender, EventArgs e)
    {
        this.DisplayList();
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        String Sql = "UPDATE [User] SET [departID] = @departID, [fullname]=@fullname,[password]=@password,[userType]=@userType WHERE userID=@userID";
        Database.ExecuteNonQuery(Sql,
            "@userID", txtUserID.Text,
            "@fullname", txtFullName.Text,
            "@departID", DropDownListDepart.SelectedValue,
            "@password", txtPassword.Text,
            "userType", dropDownListUserType.SelectedValue);
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        String UserID = GridView1.Rows[e.RowIndex].Cells[0].Text;
        String Sql = "DELETE FROM [User] WHERE [userID]=@userID";
        Database.ExecuteNonQuery(Sql, "@userID", UserID);

        this.DisplayList();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.DisplayList();
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
    }