<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ProductList.aspx.cs" Inherits="Admin_ProductList" Title="无标题页" %>

<%@ Register src="UC/ProductList.ascx" tagname="ProductList" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align:right;">
        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Admin/ProductAdd.aspx" runat="server">添加新的商品</asp:HyperLink></div>
    <uc1:ProductList ID="ProductList1" runat="server" />
</asp:Content>

