using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _DepartmentManager : System.Web.UI.Page
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
        String Sql = "SELECT * FROM Depart";
        DataTable Departs = Database.GetData(Sql);

        GridView1.DataSource = Departs;
        GridView1.DataBind();

        MultiView1.ActiveViewIndex = 0;
    }

    void DisplayEdit(String departID)
    {
        String Sql = "SELECT * FROM [Depart] WHERE [departID]=@departID";
        DataTable User = Database.GetData(Sql, "@departID", departID);

        txtDepartID.Text = User.Rows[0]["departID"].ToString();
        txtName.Text = User.Rows[0]["name"].ToString();
        txtDescription.Text = User.Rows[0]["description"].ToString();        

        MultiView1.ActiveViewIndex = 1;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            String departID = GridView1.SelectedRow.Cells[0].Text;

            this.DisplayEdit(departID);
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
        String Sql = "UPDATE [Depart] SET [name]=@name, [description] = @description WHERE [departID] = @departID";
        Database.ExecuteNonQuery(Sql,
            "@name", txtName.Text, "@departID", txtDepartID.Text, "@description",txtDescription.Text);
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        String departID = GridView1.Rows[e.RowIndex].Cells[0].Text;
        String Sql = "DELETE FROM [Depart] WHERE departID=@departID";
        Database.ExecuteNonQuery(Sql, "@departID", departID);

        this.DisplayList();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.DisplayList();
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
}
