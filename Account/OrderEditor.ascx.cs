using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Account_MakeOrder : System.Web.UI.UserControl
{
     
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            DisplayDateForm();
        }
        else {
            
        }
    }
    
    protected void cdrCalendar_SelectionChanged(object sender, EventArgs e)
    {
        txtDOB.Text = cdrCalendar.SelectedDate.ToShortDateString();
        cdrCalendar.Visible = false;
        btnContinue.Enabled = true;
    }
    protected void DisplayDateForm()
    {
        MultiView.ActiveViewIndex = 0;
    }
    protected void btnContinue_Click(object sender, EventArgs e)
    {

        //Convert text to Date
        DateTime userDate;
        DateTime.TryParse(txtDOB.Text, out userDate);
        
        //Update session
        Order temporder = (Order)Session["Order"];
        temporder.orderDay = userDate;
        if (Session["Order"] != null) Session.Remove("Order");
        Session.Add("Order",temporder);

        // Case

        if (userDate < DateTime.Now) // if Chosen Date is over
        {
            MultiView.ActiveViewIndex = 2;
        }
        else
        {
            Order order = (Order)Session["Order"];
            if (Database.IsOrdered(order.ownerID, userDate))
            {
                MultiView.ActiveViewIndex = 3;
            }                       
            else
            {
                txtDate.Text = userDate.ToShortDateString();
                if (userDate.Date == DateTime.Now.Date) //if use chose the Date now
                {
                    // if It's late for breakfast                    
                }
                MultiView.ActiveViewIndex = 1;
            }
        }

    }
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
    /// <summary>
    /// Submit new order to server
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnOrder_Click(object sender, EventArgs e)
    {
        // Prepare record order to send to database

        Order submitorder = (Order)Session["Order"];
        submitorder.createTime = DateTime.Now;        
        submitorder.modTime = submitorder.createTime;
        int.TryParse(dropDownListBreakFast.SelectedValue, out submitorder.fastNum);
        int.TryParse(dropDownListLunch.SelectedValue, out submitorder.lunNum);
        int.TryParse(dropDownListDinner.SelectedValue, out submitorder.dinNum);
        Price priceInUse = Database.GetCurrentPrice();

        submitorder.priceID = priceInUse.priceID;

        //Send to database
        Database.SubmitOrder(submitorder);
    }
    protected void btnGoBack_Click(object sender, EventArgs e)
    {
        MultiView.ActiveViewIndex = 0;
    }
}