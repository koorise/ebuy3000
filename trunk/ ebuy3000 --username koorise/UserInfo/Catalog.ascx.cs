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

public partial class UserInfo_Catalog : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TreeNodeAdd(0);
    }
    public void TreeNodeAdd(int flag)
    {
        Query q = new Query("sys_Catalog");
        q.SetSelectList("cID,ClassName,orderFlag");
        q.AddWhere("orderFlag", flag);
        q.QueryType = QueryType.Select;
        IDataReader dr = q.ExecuteReader();
        while (dr.Read())
        {
            if (dr[2].ToString()=="0")
            {
                Literal1.Text = Literal1.Text + "<li class='out' onclick='hit(this)'>\n";
                Literal1.Text = Literal1.Text + " <a href='#'> " + dr[1] + "</a>\n";
                Literal1.Text = Literal1.Text + "<ul>\n";
                TreeNodeAdd(int.Parse(dr[0].ToString()));
                Literal1.Text = Literal1.Text + "</ul>\n</li>\n";
            }
            else
            {
                Literal1.Text = Literal1.Text + "<li>\n";
                Literal1.Text = Literal1.Text + "<a href='/Catalog.aspx?NcID=" + dr[0] + "'>" + dr[1] + "</a>\n";
                Literal1.Text = Literal1.Text + "</li>\n";
            }


        }

    }
}
