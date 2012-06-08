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

public partial class ControlLogin : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {            
            this.Display();
        }
    }

    void Display()
    {        
        DataTable table = (DataTable)Session["ThanhVien"];

        MultiView1.ActiveViewIndex = (table == null) ? 0 : 1;

        if (table != null)
        {
            lblFullname.Text = (String)table.Rows[0]["fullname"];
            lblUserID.Text = (String)table.Rows[0]["userID"];
           // lblEmail.Text = (String)table.Rows[0]["Email"];
          //  Image1.ImageUrl = "Images/User.gif";
        }
    }

    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        String sql = "SELECT * FROM [Account] WHERE [userID]=@a AND [password]=@b";
        String userId = txtUserID.Text;
        String password = txtPassword.Text;

        DataTable table = Database.GetData(sql, "@a", userId, "@b", password);
        if (table.Rows.Count > 0)
        {
            Session["ThanhVien"] = table;
            int Type = (int)table.Rows[0]["userType"];
            
            if (!Request.Url.AbsoluteUri.EndsWith("ViewCart.aspx"))
            {
                Response.Redirect("MyAccount.aspx");
            }
            else
            {
                Response.Redirect("ViewCart.aspx");
            }
        }
        else
        {
            lblError.Text = "Dang nhap that bai !";
        }
    }

    protected void lnkSignOut_Click(object sender, EventArgs e)
    {        
        Session.RemoveAll();
        FormsAuthentication.SignOut();
       /* ShoppingCart Cart = (ShoppingCart)Session["ShoppingCart"];
        Cart.Clear();*/
        Response.Redirect("~/Login.aspx");
    }
}
