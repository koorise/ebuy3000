<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="AdminInfo.aspx.cs" Inherits="Admin_AdminInfo" Title="无标题页" %>

<%@ Register src="UC/AdminInfo.ascx" tagname="AdminInfo" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:AdminInfo ID="AdminInfo1" runat="server" />
</asp:Content>

