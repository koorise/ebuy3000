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
public partial class UserInfo_Reg : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

        
    }
    protected void imgBtnReg_Click(object sender, ImageClickEventArgs e)
    {
        UserInfo.Insert(tbUserName.Text,tbPassWD1.Text,tbName1.Text,tbName2.Text,tbStreet.Text,tbCity.Text,tbCountry.Text,tbZip.Text,tbPhone1.Text,tbPhone2.Text,tbPhone3.Text,tbPhone4.Text,tbEMail1.Text,DateTime.Now);

    }
    protected void imgBtnChkOut_Click(object sender, ImageClickEventArgs e)
    {
        Query q=new Query("userInfo");
        q.AddWhere("userName", tbUserName.Text);
        if(q.GetRecordCount()>0)
        {

        }
        else
        {
            tbUserName.Text = "";
        }
    }
}
