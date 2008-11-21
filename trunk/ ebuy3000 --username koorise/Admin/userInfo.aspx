<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="userInfo.aspx.cs" Inherits="Admin_userInfo" Title="无标题页" %>

<%@ Register src="UC/userInfo.ascx" tagname="userInfo" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:userInfo ID="userInfo1" runat="server" />
</asp:Content>

