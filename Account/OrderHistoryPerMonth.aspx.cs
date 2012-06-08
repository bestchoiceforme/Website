using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Account_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DisplayList();
        }
    }

    void DisplayList()
    {
        /*DataTable table = (DataTable)Session["ThanhVien"];

        String userID = (String)table.Rows[0]["userID"];
        String Sql =
            "SELECT [orderDay],[createTime],[modTime],[fastNum],[lunNum],[dinNum],[createrID] FROM [Order] WHERE [ownerID] = @userID";

        DataTable Depart = Database.GetData(Sql, "@userID", userID);

        GridView1.DataSource = Depart;
        GridView1.DataBind();
        */
        //MultiView1.ActiveViewIndex = 0;
        int index = GridView1.Rows.Count-1;
        GridView1.Rows[index].Cells[0].Text = "Total";
        GridView1.Rows[index].Cells[1].Text = "";
        GridView1.Rows[index].Cells[2].Text = "";
        GridView1.Rows[index].Cells[3].Text = "";
        GridView1.Rows[index].Cells[4].Text = "";
        GridView1.Rows[index].Cells[5].Text = "";
        GridView1.Rows[index].BackColor = System.Drawing.Color.Coral;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
}