using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class MakePersonalOrder : System.Web.UI.Page
{
    protected UserDB user;   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable datatable = (DataTable)Session["ThanhVien"];
            if (datatable != null)
            {
                user = UserDB.GetUser(datatable.Rows[0]);

                //Fill to customer order session
                if (Session["Order"] == null) InitOrderSession();
            }
            //DisplayOrderForm();
        }
        else { 
            //InitOrder
        }
    }
    protected void InitOrderSession()
    {
        Order order = new Order();
        order.orderDay = DateTime.Now;
        order.ownerID = user.userID;
        order.createrID = user.userID;        
        Session.Add("Order", order);
    }
    protected void butdk_Click(object sender, EventArgs e)
    {

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

    }
    protected void DisplayOrderForm()
    {
                        
    }
    /*
    protected void btnDOB_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtDOB.Text.Trim() != "")
                cdrCalendar.SelectedDate = Convert.ToDateTime(txtDOB.Text);
        }
        catch
        { }
        cdrCalendar.Visible = true;
    }
    protected void cdrCalendar_SelectionChanged(object sender, EventArgs e)
    {
        txtDOB.Text = cdrCalendar.SelectedDate.ToShortDateString();
        cdrCalendar.Visible = false;
        btnForm.Enabled = true;
    }
    protected void btnForm_Click(object sender, EventArgs e)
    {
        txtDate.Text = txtDOB.Text;
        if (Order.IsOrdered(user.userID,DateTime.Parse(txtDOB.Text)) )
        {
            MultiView1.ActiveViewIndex = 2;
        }
        else{
             
             MultiView1.ActiveViewIndex = 1;
        }
       
    }
    protected void btnOrder_Click(object sender, EventArgs e)
    {

    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
       * */
}