﻿using System;
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

public partial class ValidateCode : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string checkCode = CreateRandomCode(4);
        Session["CheckCode"] = checkCode;
        CreateImage(checkCode);
    }
    private void CreateImage(string checkCode)
    {
        int iwidth = (int)(checkCode.Length * 11.5);
        System.Drawing.Bitmap image = new System.Drawing.Bitmap(iwidth, 20);
        Graphics g = Graphics.FromImage(image);
        Font f = new System.Drawing.Font("Arial", 10, System.Drawing.FontStyle.Bold);
        Brush b = new System.Drawing.SolidBrush(Color.Maroon);
        //g.FillRectangle(new System.Drawing.SolidBrush(Color.Blue),0,0,image.Width, image.Height);
        g.Clear(Color.WhiteSmoke);
        g.DrawString(checkCode, f, b, 3, 3);

        Pen blackPen = new Pen(Color.Gray, 0);
        Random rand = new Random();
        //for (int i = 0; i < 5; i++)
        //{
        //    int y = rand.Next(image.Height);
        //    g.DrawLine(blackPen, 0, y, image.Width, y);
        //}

        System.IO.MemoryStream ms = new System.IO.MemoryStream();
        image.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
        Response.ClearContent();
        Response.ContentType = "image/Jpeg";
        Response.BinaryWrite(ms.ToArray());
        g.Dispose();
        image.Dispose();
    }
    private string CreateRandomCode(int codeCount)
    {
        string allChar = "0,2,3,4,5,6,7,8,9,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,W,X,Y,Z";
        string[] allCharArray = allChar.Split(',');
        string randomCode = "";
        int temp = -1;

        Random rand = new Random();
        for (int i = 0; i < codeCount; i++)
        {
            if (temp != -1)
            {
                rand = new Random(i * temp * ((int)DateTime.Now.Ticks));
            }
            int t = rand.Next(34);
            if (temp == t)
            {
                return CreateRandomCode(codeCount);
            }
            temp = t;
            randomCode += allCharArray[t];
        }
        return randomCode;
    }
}
