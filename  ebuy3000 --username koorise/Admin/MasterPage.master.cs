using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Admin_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Cookies aCookies = new Cookies();
        if(aCookies.getCookies("cAdmin")!="0")
        {
            lbladmin.Text = aCookies.getCookies("cAdmin");
        }
        else
        {
            Response.Redirect("~/Admin/Login.aspx");
        }
    }
}
