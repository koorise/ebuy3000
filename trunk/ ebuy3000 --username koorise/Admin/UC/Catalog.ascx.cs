using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using SubSonic;
using Ebuy;

public partial class Admin_UC_Catalog : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request["cID"]!=null)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
        }
        else
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Ebuy.SysCatalog.Insert(tbClassName.Text,0,0);
        GridView1.DataBind();
    }
    protected void btnSub_Click(object sender, EventArgs e)
    {
        Ebuy.SysCatalog.Insert(tbNClassName.Text,int.Parse(Request["cID"]),1);
        GridView2.DataBind();
    }
    protected void btnRedirect_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Catalog.aspx");
    }
}
