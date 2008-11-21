<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Catalog.ascx.cs" Inherits="Admin_UC_Catalog" %>
<asp:Panel ID="Panel1" runat="server">
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Ebuy %>" 
    DeleteCommand="DELETE FROM [sys_catalog] WHERE [cID] = @cID" 
    InsertCommand="INSERT INTO [sys_catalog] ([ClassName], [orderFlag], [flag]) VALUES (@ClassName, @orderFlag, @flag)" 
    SelectCommand="SELECT [cID], [ClassName], [orderFlag], [flag] FROM [sys_catalog] WHERE ([orderFlag] = @orderFlag) ORDER BY [cID] DESC" 
    UpdateCommand="UPDATE [sys_catalog] SET [ClassName] = @ClassName, [orderFlag] = @orderFlag, [flag] = @flag WHERE [cID] = @cID">
    <SelectParameters>
        <asp:Parameter DefaultValue="0" Name="orderFlag" Type="Int32" />
    </SelectParameters>
    <DeleteParameters>
        <asp:Parameter Name="cID" Type="Int32" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="ClassName" Type="String" />
        <asp:Parameter Name="orderFlag" Type="Int32" />
        <asp:Parameter Name="flag" Type="Int32" />
        <asp:Parameter Name="cID" Type="Int32" />
    </UpdateParameters>
    <InsertParameters>
        <asp:Parameter Name="ClassName" Type="String" />
        <asp:Parameter Name="orderFlag" Type="Int32" />
        <asp:Parameter Name="flag" Type="Int32" />
    </InsertParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="cID" 
    DataSourceID="SqlDataSource1" HorizontalAlign="Center" Width="100%" 
    CellPadding="4" ForeColor="#333333" GridLines="None">
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <RowStyle HorizontalAlign="Center" />
    <Columns>
        <asp:BoundField DataField="cID" HeaderText="cID" InsertVisible="False" 
            ReadOnly="True" SortExpression="cID" />
        <asp:BoundField DataField="ClassName" HeaderText="ClassName" 
            SortExpression="ClassName" />
        <asp:TemplateField HeaderText="orderFlag" SortExpression="orderFlag">
            <EditItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("orderFlag") %>'></asp:Label>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("orderFlag") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="flag" SortExpression="flag">
            <EditItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("flag") %>'></asp:Label>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("flag") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:CommandField ShowEditButton="True" />
        <asp:HyperLinkField DataNavigateUrlFields="cID" 
            DataNavigateUrlFormatString="~/Admin/Catalog.aspx?cID={0}" Text="添加小类" />
    </Columns>
    <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <EditRowStyle BackColor="#2461BF" />
    <AlternatingRowStyle BackColor="White" />
</asp:GridView>
<div style="line-height:30px; text-align:center;">添加大类别：<asp:TextBox 
        ID="tbClassName" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnAdd" runat="server" onclick="btnAdd_Click" Text="添加" />
</div>

</asp:Panel>
<asp:Panel ID="Panel2" runat="server">
<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Ebuy %>" 
    DeleteCommand="DELETE FROM [sys_catalog] WHERE [cID] = @cID" 
    InsertCommand="INSERT INTO [sys_catalog] ([ClassName], [orderFlag], [flag]) VALUES (@ClassName, @orderFlag, @flag)" 
    SelectCommand="SELECT [cID], [ClassName], [orderFlag], [flag] FROM [sys_catalog] WHERE ([orderFlag] = @orderFlag)" 
    UpdateCommand="UPDATE [sys_catalog] SET [ClassName] = @ClassName, [orderFlag] = @orderFlag, [flag] = @flag WHERE [cID] = @cID">
    <SelectParameters>
        <asp:QueryStringParameter Name="orderFlag" QueryStringField="cID" 
            Type="Int32" />
    </SelectParameters>
    <DeleteParameters>
        <asp:Parameter Name="cID" Type="Int32" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="ClassName" Type="String" />
        <asp:Parameter Name="orderFlag" Type="Int32" />
        <asp:Parameter Name="flag" Type="Int32" />
        <asp:Parameter Name="cID" Type="Int32" />
    </UpdateParameters>
    <InsertParameters>
        <asp:Parameter Name="ClassName" Type="String" />
        <asp:Parameter Name="orderFlag" Type="Int32" />
        <asp:Parameter Name="flag" Type="Int32" />
    </InsertParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
    BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
    DataKeyNames="cID" DataSourceID="SqlDataSource2" HorizontalAlign="Center" 
    Width="100%">
    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
    <RowStyle BackColor="White" ForeColor="#003399" HorizontalAlign="Center" />
    <Columns>
        <asp:BoundField DataField="cID" HeaderText="cID" InsertVisible="False" 
            ReadOnly="True" SortExpression="cID" />
        <asp:BoundField DataField="ClassName" HeaderText="ClassName" 
            SortExpression="ClassName" />
        <asp:TemplateField HeaderText="orderFlag" SortExpression="orderFlag">
            <EditItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("orderFlag") %>'></asp:Label>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("orderFlag") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="flag" SortExpression="flag">
            <EditItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Bind("flag") %>'></asp:Label>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("flag") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
    </Columns>
    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
</asp:GridView>
<div style="line-height:30px; text-align:center;">添加小类别：<asp:TextBox 
        ID="tbNClassName" runat="server"></asp:TextBox> 
    &nbsp; 
    <asp:Button ID="btnSub" runat="server" Text="添加" onclick="btnSub_Click" />&nbsp;&nbsp;
    <asp:Button ID="btnRedirect" runat="server" Text="返回添加大类别" 
        onclick="btnRedirect_Click" />
    </div>

</asp:Panel>

