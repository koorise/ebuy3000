<%@ Page Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Reg.aspx.cs" Inherits="Reg" Title="无标题页" %>

<%@ Register src="UserInfo/Reg.ascx" tagname="Reg" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Reg ID="Reg1" runat="server" />
</asp:Content>

