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


public partial class Admin_UC_userList : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDel_Click(object sender, EventArgs e)
    {
        for (int rowIndex = 0; rowIndex < GridView1.Rows.Count; rowIndex++)
        {
            CheckBox CB = (CheckBox)GridView1.Rows[rowIndex].Cells[0].FindControl("CHK_DEL");
            if (CB.Checked)
            {
                Ebuy.UserInfo.Delete("uID", GridView1.DataKeys[rowIndex].Value);                
            }

        }
        GridView1.DataBind();
    }
}
