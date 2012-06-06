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

public partial class Admin_MyAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string script = "return confirm('Are you sure')";
        btnUpdate.OnClientClick = script;
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

        txtUserID.Text = (String)table.Rows[0]["userID"];        
        txtFullName.Text = (String)table.Rows[0]["fullname"];
        txtPassword.Text = (String)table.Rows[0]["password"];
        DropDownListDepart.SelectedValue = table.Rows[0]["departID"].ToString();
        
    }


    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        //if (Validate(
        string script = "return confirm('Are you sure')";


        String sql = "UPDATE [User] SET fullName=@FullName, password=@Password, departID=@departID WHERE userID=@userID";
        try
        {
            Database.ExecuteNonQuery(sql,
                    "@userID", txtUserID.Text,
                    "@FullName", txtFullName.Text,
                    "@Password", txtPassword.Text,
                    "@departID", DropDownListDepart.SelectedValue);
            DataTable table = Database.UserSession(txtUserID.Text, txtPassword.Text);
            Session["ThanhVien"] = table;

            lblError.Text = "Cập nhật thành công !";
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }
    protected void btChangePassword_Click(object sender, EventArgs e)
    {
        txtPassword.Text = "";
        txtPassword.Enabled = true;
    }
}
