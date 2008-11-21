<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Login.ascx.cs" Inherits="Admin_UC_Login" %>
<table style="width:100%; font-size:12px; line-height:30px;">
    <tr>
        <td align="center" colspan="2">
            管理员登录
        </td>
    </tr>
    <tr>
        <td style="width:40%; text-align:right;">用户名：</td>
        <td  style=" text-align:left;">
            <asp:TextBox ID="tbUserName" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width:40%; text-align:right;">密码：</td>
        <td  style=" text-align:left;">
            <asp:TextBox ID="tbPassWD" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width:40%; text-align:right;">&nbsp;</td>
        <td  style=" text-align:left;">
            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">登 录</asp:LinkButton>
        </td>
    </tr>
</table>