<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="userList.aspx.cs" Inherits="Admin_userList" Title="无标题页" %>

<%@ Register src="UC/userList.ascx" tagname="userList" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:userList ID="userList1" runat="server" />
</asp:Content>

