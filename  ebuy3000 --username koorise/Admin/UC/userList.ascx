<%@ Control Language="C#" AutoEventWireup="true" CodeFile="userList.ascx.cs" Inherits="Admin_UC_userList" %>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Ebuy %>" 
    SelectCommand="SELECT uID, userName, name1 + ' ' + name2 AS RealName, street + ' ' + City + ' ' + Country AS Address, phone1 + '-' + phone2 + '-' + phone3 + '-' + phone4 AS Phone, inTime FROM userInfo">
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
    DataKeyNames="uID" DataSourceID="SqlDataSource1" ForeColor="#333333" 
    GridLines="None" HorizontalAlign="Center" PageSize="18" Width="100%">
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
    <Columns>
        <asp:BoundField DataField="uID" HeaderText="ID" InsertVisible="False" 
            ReadOnly="True" SortExpression="uID" />
        <asp:HyperLinkField DataNavigateUrlFields="uID" 
            DataNavigateUrlFormatString="~/Admin/userInfo.aspx?uID={0}" 
            DataTextField="userName" DataTextFormatString="{0}" HeaderText="userName" />
        <asp:BoundField DataField="RealName" HeaderText="RealName" ReadOnly="True" 
            SortExpression="RealName" />
        <asp:BoundField DataField="Address" HeaderText="Address" ReadOnly="True" 
            SortExpression="Address" />
        <asp:BoundField DataField="Phone" HeaderText="Phone" ReadOnly="True" 
            SortExpression="Phone" />
        <asp:BoundField DataField="inTime" HeaderText="inTime" 
            SortExpression="inTime" />
        <asp:TemplateField>
            <EditItemTemplate>
                <asp:CheckBox ID="CHK_DEL" runat="server" />
            </EditItemTemplate>
            <ItemTemplate>
                <asp:CheckBox ID="CHK_Del" runat="server" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <EditRowStyle BackColor="#999999" />
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
</asp:GridView>
<div style="text-align:right;">
    
    <asp:Button ID="btnDel" runat="server" onclick="btnDel_Click" Text="Delete" />
    
</div>