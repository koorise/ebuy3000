<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Catalog.aspx.cs" Inherits="Admin_Catalog" Title="无标题页" %>

<%@ Register src="UC/Catalog.ascx" tagname="Catalog" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Catalog ID="Catalog1" runat="server" />
</asp:Content>

