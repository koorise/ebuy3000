<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ProductAdd.aspx.cs" Inherits="Admin_ProductAdd" Title="无标题页" %>

<%@ Register src="UC/ProductsAdd.ascx" tagname="ProductsAdd" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:ProductsAdd ID="ProductsAdd1" runat="server" />
</asp:Content>

