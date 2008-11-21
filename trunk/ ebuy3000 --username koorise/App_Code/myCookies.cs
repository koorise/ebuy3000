using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;


/// <summary>
///myCookies 的摘要说明
/// </summary>
public class Cookies
{
	public Cookies()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    public void addCookies(string cookiesName, string cookiesValue, int ExpireDay)
    {
        HttpCookie aCookies = new HttpCookie(cookiesName);
        aCookies.Value = cookiesValue;
        if (ExpireDay != 0)
        {
            aCookies.Expires = DateTime.Now.AddDays(ExpireDay);
        }
        HttpContext.Current.Response.Cookies.Add(aCookies);
    }

    public string getCookies(string cookiesName)
    {
        if(HttpContext.Current.Request.Cookies[cookiesName]!=null)
        {
            return HttpContext.Current.Request.Cookies[cookiesName].Value;
        }
        else
        {
            return "0";
        }
    }


}
