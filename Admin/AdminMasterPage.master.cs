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

public partial class AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*DataTable table = (DataTable)Session["ThanhVien"];            
        if (table == null)
            Response.Redirect("~/Login.aspx");
    /*
        int Type = (int)table.Rows[0]["userType"];
        if (Type != 0) Response.Redirect("~/Login.aspx");
     * */
    } 
}
