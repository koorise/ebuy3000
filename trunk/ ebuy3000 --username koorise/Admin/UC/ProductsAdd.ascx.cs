using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using SubSonic;
using Ebuy;

public partial class Admin_UC_ProductsAdd : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSub_Click(object sender, EventArgs e)
    {
        Ebuy.Product.Insert(tbPname.Text,double.Parse(tbMarketPrice.Text),double.Parse(tbMemberPrice.Text),int.Parse(tbPostage.Text),UploadFile(FileUpload1),WebHtmlEditor1.Text,int.Parse(ddlClassID.SelectedValue),int.Parse(ddlNclassID.SelectedValue));
    }
    # region "图片上传"
    public string UploadFile(FileUpload uploadFile1)
    {
        int width;
        int height;
        int left;
        int right;
        string strAddInfo = "";
        width = 80;
        height = 100;
        left = 25;
        right = 25;
        if (!(uploadFile1.PostedFile.ContentLength > 0))
        {
            return "~/Uploads/No.jpg";
        }

        else
        {

            string path = Server.MapPath(("~/Uploads/" + GenerateRandom(10) + uploadFile1.PostedFile.FileName.Substring((uploadFile1.PostedFile.FileName.LastIndexOf('.')))));
            uploadFile1.PostedFile.SaveAs(path);

            //System.Drawing.Image image = System.Drawing.Image.FromFile(path);
            //Graphics g = Graphics.FromImage(image);
            //g.DrawImage(image, 0, 0, image.Width, image.Height);
            //Font f = new Font("Verdana", 32);
            //SolidBrush b = new SolidBrush(Color.Red);
            //string addText = "Hello";
            //g.DrawString(addText, f, b, 10, 10);
            //g.Dispose();

            //string newPath = Server.MapPath(("~/Uploads/" + "1_" + path.Substring((path.LastIndexOf('\\') + 1))));
            //image.Save(newPath);
            //image.Dispose();


            string pathstr = "~/Uploads/" + path.Substring((path.LastIndexOf('\\') + 1));
            GetThumbnailImage(width, height, strAddInfo, left, right, pathstr);
            //Image1.ImageUrl = pathstr + ".jpg";
            //Image1.Visible = true;
            //Btn_DelImg1.Visible = True 
            return pathstr;
        }
    }
    public void GetThumbnailImage(int width, int height, string strInfo, int left, int right, string Path)
    {
        string file = Path;
        string newfile = Path + ".jpg";

        string strAdd = strInfo;
        System.Drawing.Image oldimage = System.Drawing.Image.FromFile(Server.MapPath(file));
        System.Drawing.Image thumbnailImage = oldimage.GetThumbnailImage(width, height, new System.Drawing.Image.GetThumbnailImageAbort(ThumbnailCallback), IntPtr.Zero);
        Response.Clear();
        Bitmap output = new Bitmap(thumbnailImage);
        Graphics g = Graphics.FromImage(output);
        //g.DrawString(strAdd, new Font("宋体", 12), new SolidBrush(Color.Red), left, right);
        output.Save(Server.MapPath(newfile), System.Drawing.Imaging.ImageFormat.Jpeg);
        Response.ContentType = "image/gif";


    }
    //GetThumbnailImage 

    public bool ThumbnailCallback()
    {
        return true;
    }
    private static char[] constant = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 
'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 
'u', 'v', 'w', 'x', 'y', 'z'};
    //ThumbnailCallback 

    public string GenerateRandom(int Length)
    {
        System.Text.StringBuilder newRandom = new System.Text.StringBuilder(36);
        Random rd = new Random();
        int i;
        for (i = 0; i <= Length - 1; i++)
        {
            newRandom.Append(rd.Next(36));
        }
        return newRandom.ToString();
    }

    //GenerateRandom 
    # endregion
}
