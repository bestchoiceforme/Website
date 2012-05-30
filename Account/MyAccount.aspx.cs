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

public partial class MyAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.DisplayAccount();
       // this.DisplayOrders();
    }

    void DisplayOrders()
    {
       /* DataTable table = (DataTable)Session["ThanhVien"];
        String sql = "SELECT * FROM Orders WHERE CustomerID=@CustomerID";

        String CustomerID = table.Rows[0]["CustomerID"].ToString();
        DataTable Orders = Database.GetData(sql, "@CustomerID", CustomerID);

        GridView1.DataSource = Orders;
        GridView1.DataBind();
        * */
    }

    void DisplayAccount()
    {
        DataTable table = (DataTable)Session["ThanhVien"];

        txtCustomerID.Text = (String)table.Rows[0]["userID"];
   
        txtFullName.Text = (String)table.Rows[0]["fullname"];
        txtPassword.Text = (String)table.Rows[0]["password"];    
    }


    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        String sql = "UPDATE Customers SET fullName=@FullName, password=@Password WHERE userID=@userID";
        try
        {
            Database.ExecuteNonQuery(sql,
                    "@CustomerID", txtCustomerID.Text,
                    "@FullName", txtFullName.Text,
                // "@Address", txtAddress.Text,
                //  "@Email", txtEmail.Text,
                    "@Password", txtPassword.Text);
                  //  "@Phone", txtPhone.Text);
            lblError.Text = "Cập nhật thành công !";
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }
}
