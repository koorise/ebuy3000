<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AdminInfo.ascx.cs" Inherits="Admin_UC_AdminInfo" %>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Ebuy %>" 
    DeleteCommand="DELETE FROM [AdminInfo] WHERE [AdminID] = @AdminID" 
    InsertCommand="INSERT INTO [AdminInfo] ([AdminName], [passWd]) VALUES (@AdminName, @passWd)" 
    SelectCommand="SELECT * FROM [AdminInfo]" 
    UpdateCommand="UPDATE [AdminInfo] SET [AdminName] = @AdminName, [passWd] = @passWd WHERE [AdminID] = @AdminID">
    <DeleteParameters>
        <asp:Parameter Name="AdminID" Type="Int32" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="AdminName" Type="String" />
        <asp:Parameter Name="passWd" Type="String" />
        <asp:Parameter Name="AdminID" Type="Int32" />
    </UpdateParameters>
    <InsertParameters>
        <asp:Parameter Name="AdminName" Type="String" />
        <asp:Parameter Name="passWd" Type="String" />
    </InsertParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
    AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
    BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="AdminID" 
    DataSourceID="SqlDataSource1" GridLines="Vertical" HorizontalAlign="Center" 
    Width="100%">
    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
    <RowStyle BackColor="#EEEEEE" ForeColor="Black" HorizontalAlign="Center" />
    <Columns>
        <asp:BoundField DataField="AdminID" HeaderText="AdminID" InsertVisible="False" 
            ReadOnly="True" SortExpression="AdminID" />
        <asp:BoundField DataField="AdminName" HeaderText="AdminName" 
            SortExpression="AdminName" />
        <asp:BoundField DataField="passWd" HeaderText="passWd" 
            SortExpression="passWd" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
    </Columns>
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
    <AlternatingRowStyle BackColor="#DCDCDC" />
</asp:GridView>
<asp:FormView ID="FormView1" runat="server" DataKeyNames="AdminID" 
    DataSourceID="SqlDataSource1" DefaultMode="Insert" HorizontalAlign="Center" 
    Width="100%">
    <RowStyle HorizontalAlign="Center" />
    <EditItemTemplate>
        AdminID:
        <asp:Label ID="AdminIDLabel1" runat="server" Text='<%# Eval("AdminID") %>' />
        <br />
        AdminName:
        <asp:TextBox ID="AdminNameTextBox" runat="server" 
            Text='<%# Bind("AdminName") %>' />
        <br />
        passWd:
        <asp:TextBox ID="passWdTextBox" runat="server" Text='<%# Bind("passWd") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
            CommandName="Update" Text="更新" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="取消" />
    </EditItemTemplate>
    <InsertItemTemplate>
        AdminName:
        <asp:TextBox ID="AdminNameTextBox" runat="server" 
            Text='<%# Bind("AdminName") %>' />
        &nbsp;passWord:
        <asp:TextBox ID="passWdTextBox" runat="server" Text='<%# Bind("passWd") %>' />
        &nbsp;&nbsp;<asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
            CommandName="Insert" Text="插入" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="取消" />
    </InsertItemTemplate>
    <ItemTemplate>
        AdminID:
        <asp:Label ID="AdminIDLabel" runat="server" Text='<%# Eval("AdminID") %>' />
        <br />
        AdminName:
        <asp:Label ID="AdminNameLabel" runat="server" Text='<%# Bind("AdminName") %>' />
        <br />
        passWd:
        <asp:Label ID="passWdLabel" runat="server" Text='<%# Bind("passWd") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
            CommandName="Edit" Text="编辑" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
            CommandName="Delete" Text="删除" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
            CommandName="New" Text="新建" />
    </ItemTemplate>
</asp:FormView>
