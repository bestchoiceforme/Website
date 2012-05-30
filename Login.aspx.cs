using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        String sql = "SELECT * FROM [User] WHERE [userID]=@a AND [password]=@b";
        String userId = txtUserID.Text;
        String password = txtPassword.Text;

        DataTable table = Database.GetData(sql, "@a", userId, "@b", password);
        if (table.Rows.Count > 0)
        {
            Session["ThanhVien"] = table;
            int Type = (int)table.Rows[0]["userType"];
            switch (Type)
            {
                
                case 0:                   
                    Session["Role"] = "Admin";
                    FormsAuthentication.SetAuthCookie(Session["Role"].ToString(), true);
                    Response.Redirect("~/Admin/default.aspx"); break;
                case 1:
                    Session["Role"] = "Account";
                    FormsAuthentication.SetAuthCookie(Session["Role"].ToString(), true);
                    Response.Redirect("~/Account/default.aspx"); break;

                case 2: Session["Role"] = "VipAccount";
                    FormsAuthentication.SetAuthCookie(Session["Role"].ToString(), true);
                    Response.Redirect("~/VipAccount/default.aspx"); break;
                case 3: Session["Role"] = "Chef";
                    FormsAuthentication.SetAuthCookie(Session["Role"].ToString(), true);
                    Response.Redirect("~/Chef/default.aspx"); break;
            }
            FormsAuthentication.SetAuthCookie(Session["Role"].ToString(), true);
                   
        }
        else
        {            
            lbError.Text = "Dang nhap that bai !";
        }
    }
}