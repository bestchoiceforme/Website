﻿using System;
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
        DataTable table = (DataTable)Session["ThanhVien"];

        String userID =  (String)table.Rows[0]["userID"];
        DataSet result = Database.GetHistoryOrderPerUser(userID);       


        GridView1.DataSource = table;
        GridView1.DataBind();

        //MultiView1.ActiveViewIndex = 0;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    { 
    
    }
}