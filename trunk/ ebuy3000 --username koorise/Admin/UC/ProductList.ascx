<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProductList.ascx.cs" Inherits="Admin_UC_ProductList" %>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Ebuy %>" 
    DeleteCommand="DELETE FROM [Products] WHERE [pID] = @pID" 
    InsertCommand="INSERT INTO [Products] ([ProductName], [marketPrice], [memberPrice], [postage]) VALUES (@ProductName, @marketPrice, @memberPrice, @postage)" 
    SelectCommand="SELECT [ProductName], [marketPrice], [memberPrice], [postage], [pID] FROM [Products]" 
    UpdateCommand="UPDATE [Products] SET [ProductName] = @ProductName, [marketPrice] = @marketPrice, [memberPrice] = @memberPrice, [postage] = @postage WHERE [pID] = @pID">
    <DeleteParameters>
        <asp:Parameter Name="pID" Type="Int32" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="ProductName" Type="String" />
        <asp:Parameter Name="marketPrice" Type="Double" />
        <asp:Parameter Name="memberPrice" Type="Double" />
        <asp:Parameter Name="postage" Type="Int32" />
        <asp:Parameter Name="pID" Type="Int32" />
    </UpdateParameters>
    <InsertParameters>
        <asp:Parameter Name="ProductName" Type="String" />
        <asp:Parameter Name="marketPrice" Type="Double" />
        <asp:Parameter Name="memberPrice" Type="Double" />
        <asp:Parameter Name="postage" Type="Int32" />
    </InsertParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
    BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
    DataKeyNames="pID" DataSourceID="SqlDataSource1" PageSize="18" Width="100%">
    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
    <RowStyle BackColor="White" ForeColor="#330099" HorizontalAlign="Center" />
    <Columns>
        <asp:BoundField DataField="pID" HeaderText="ID" InsertVisible="False" 
            ReadOnly="True" SortExpression="pID" />
        <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
            SortExpression="ProductName" />
        <asp:BoundField DataField="marketPrice" HeaderText="marketPrice" 
            SortExpression="marketPrice" />
        <asp:BoundField DataField="memberPrice" HeaderText="memberPrice" 
            SortExpression="memberPrice" />
        <asp:BoundField DataField="postage" HeaderText="postage" 
            SortExpression="postage" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:HyperLinkField DataNavigateUrlFields="postage" 
            DataNavigateUrlFormatString="~/Admin/Products.aspx?pID={0}" Text="详细" />
    </Columns>
    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
</asp:GridView>
