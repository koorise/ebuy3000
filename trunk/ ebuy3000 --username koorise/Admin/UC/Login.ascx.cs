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
public partial class Admin_UC_Login : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Query q=new Query("AdminInfo");
        q.AddWhere("AdminName", tbUserName.Text).AND("passwd",tbPassWD.Text);
        q.SetSelectList("adminID");
        q.QueryType = QueryType.Select;
        q.Execute();
        if(q.GetRecordCount()>0)
        {
            Cookies aCookies = new Cookies();
            aCookies.addCookies("cAdmin",tbUserName.Text,0);
            IDataReader dr = q.ExecuteReader();
            dr.Read();
            aCookies.addCookies("cAdminID",dr[0].ToString(),0);
            Response.Redirect("~/Admin/Default.aspx");

        }
    }
}
