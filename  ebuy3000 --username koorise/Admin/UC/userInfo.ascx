<%@ Control Language="C#" AutoEventWireup="true" CodeFile="userInfo.ascx.cs" Inherits="Admin_UC_userInfo" %>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Ebuy %>" 
    DeleteCommand="DELETE FROM [userInfo] WHERE [uID] = @uID" 
    InsertCommand="INSERT INTO [userInfo] ([userName], [passWD], [name1], [name2], [street], [City], [Country], [zip], [Email], [phone1], [phone2], [phone3], [phone4], [inTime]) VALUES (@userName, @passWD, @name1, @name2, @street, @City, @Country, @zip, @Email, @phone1, @phone2, @phone3, @phone4, @inTime)" 
    SelectCommand="SELECT [uID], [userName], [passWD], [name1], [name2], [street], [City], [Country], [zip], [Email], [phone1], [phone2], [phone3], [phone4], [inTime] FROM [userInfo] WHERE ([uID] = @uID)" 
    UpdateCommand="UPDATE [userInfo] SET [userName] = @userName, [passWD] = @passWD, [name1] = @name1, [name2] = @name2, [street] = @street, [City] = @City, [Country] = @Country, [zip] = @zip, [Email] = @Email, [phone1] = @phone1, [phone2] = @phone2, [phone3] = @phone3, [phone4] = @phone4, [inTime] = @inTime WHERE [uID] = @uID">
    <SelectParameters>
        <asp:QueryStringParameter Name="uID" QueryStringField="uID" Type="Int32" />
    </SelectParameters>
    <DeleteParameters>
        <asp:Parameter Name="uID" Type="Int32" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="userName" Type="String" />
        <asp:Parameter Name="passWD" Type="String" />
        <asp:Parameter Name="name1" Type="String" />
        <asp:Parameter Name="name2" Type="String" />
        <asp:Parameter Name="street" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="Country" Type="String" />
        <asp:Parameter Name="zip" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="phone1" Type="String" />
        <asp:Parameter Name="phone2" Type="String" />
        <asp:Parameter Name="phone3" Type="String" />
        <asp:Parameter Name="phone4" Type="String" />
        <asp:Parameter Name="inTime" Type="DateTime" />
        <asp:Parameter Name="uID" Type="Int32" />
    </UpdateParameters>
    <InsertParameters>
        <asp:Parameter Name="userName" Type="String" />
        <asp:Parameter Name="passWD" Type="String" />
        <asp:Parameter Name="name1" Type="String" />
        <asp:Parameter Name="name2" Type="String" />
        <asp:Parameter Name="street" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="Country" Type="String" />
        <asp:Parameter Name="zip" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="phone1" Type="String" />
        <asp:Parameter Name="phone2" Type="String" />
        <asp:Parameter Name="phone3" Type="String" />
        <asp:Parameter Name="phone4" Type="String" />
        <asp:Parameter Name="inTime" Type="DateTime" />
    </InsertParameters>
</asp:SqlDataSource>
<asp:FormView ID="FormView1" runat="server" DataKeyNames="uID" 
    DataSourceID="SqlDataSource1" DefaultMode="Edit" Width="100%">
    <EditItemTemplate>
    <table style="width:100%; font-size:12px;">
        <tr>
        <td style="text-align:right; width:40%;">uID:</td>
        <td style="text-align:left;"><asp:Label ID="uIDLabel1" runat="server" Text='<%# Eval("uID") %>' /></td>
        </tr>
        
            <tr>
                <td style="text-align:right; width:40%;"> userName:
        </td>
                <td style="text-align:left;"><asp:Label ID="Label1" runat="server" Text='<%# Bind("userName") %>'></asp:Label></td>
            </tr>
            <tr>
                <td style="text-align:right; width:40%;"> passWD:
        </td>
                <td style="text-align:left;"><asp:TextBox ID="passWDTextBox" runat="server" Text='<%# Bind("passWD") %>' /></td>
            </tr>
            <tr>
                <td style="text-align:right; width:40%;">Name:
        </td>
                <td style="text-align:left;"><asp:Label ID="Label2" runat="server" Text='<%# Bind("name1") %>'></asp:Label>
&nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Bind("name2") %>'></asp:Label></td>
            </tr>
            <tr>
                <td style="text-align:right; width:40%;">street:
        </td>
                <td style="text-align:left;"><asp:Label ID="Label4" runat="server" Text='<%# Bind("street") %>'></asp:Label></td>
            </tr>
            <tr>
                <td style="text-align:right; width:40%;">City:
        </td>
                <td style="text-align:left;"><asp:Label ID="Label5" runat="server" Text='<%# Bind("City") %>'></asp:Label></td>
            </tr>
            <tr>
                <td style="text-align:right; width:40%;">Country:
        </td>
                <td style="text-align:left;"><asp:Label ID="Label6" runat="server" Text='<%# Bind("Country") %>'></asp:Label></td>
            </tr>
            <tr>
                <td style="text-align:right; width:40%;">zip:
        </td>
                <td style="text-align:left;"><asp:Label ID="Label7" runat="server" Text='<%# Bind("zip") %>'></asp:Label></td>
            </tr>
            <tr>
                <td style="text-align:right; width:40%;">Email:
        </td>
                <td style="text-align:left;"><asp:Label ID="Label8" runat="server" Text='<%# Bind("Email") %>'></asp:Label></td>
            </tr>
            <tr>
                <td style="text-align:right; width:40%;">phone:</td>
                <td style="text-align:left;"><asp:Label ID="Label9" runat="server" Text='<%# Bind("phone1") %>'></asp:Label>
        -<asp:Label ID="Label10" runat="server" Text='<%# Bind("phone2") %>'></asp:Label>
        -<asp:Label ID="Label11" runat="server" Text='<%# Bind("phone3") %>'></asp:Label>
        -<asp:Label ID="Label12" runat="server" Text='<%# Bind("phone4") %>'></asp:Label></td>
            </tr>
            <tr>
                <td style="text-align:right; width:40%;">inTime:
        </td>
                <td style="text-align:left;"><asp:Label ID="Label13" runat="server" Text='<%# Bind("inTime") %>'></asp:Label></td>
            </tr>
            <tr>
                <td style="text-align:right; width:40%;"></td>
                <td style="text-align:left;"><asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
            CommandName="Update" Text="更新" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="取消" /></td>
            </tr>
        </table>
    </EditItemTemplate>
    <InsertItemTemplate>
        userName:
        <asp:Label ID="Label1" runat="server" Text='<%# Bind("userName") %>'></asp:Label>
        <br />
        passWD:
        <asp:TextBox ID="passWDTextBox" runat="server" Text='<%# Bind("passWD") %>' />
        <br />
        Name:
        <asp:Label ID="Label2" runat="server" Text='<%# Bind("name1") %>'></asp:Label>
&nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Bind("name2") %>'></asp:Label>
        <br />
        street:
        <asp:Label ID="Label4" runat="server" Text='<%# Bind("street") %>'></asp:Label>
        <br />
        City:
        <asp:Label ID="Label5" runat="server" Text='<%# Bind("City") %>'></asp:Label>
        <br />
        Country:
        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Country") %>'></asp:Label>
        <br />
        zip:
        <asp:Label ID="Label7" runat="server" Text='<%# Bind("zip") %>'></asp:Label>
        <br />
        Email:
        <asp:Label ID="Label8" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
        <br />
        phone:<asp:Label ID="Label9" runat="server" Text='<%# Bind("phone1") %>'></asp:Label>
        -<asp:Label ID="Label10" runat="server" Text='<%# Bind("phone2") %>'></asp:Label>
        -<asp:Label ID="Label11" runat="server" Text='<%# Bind("phone3") %>'></asp:Label>
        -<asp:Label ID="Label12" runat="server" Text='<%# Bind("phone4") %>'></asp:Label>
        <br />
        inTime:
        <asp:Label ID="Label13" runat="server" Text='<%# Bind("inTime") %>'></asp:Label>
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
            CommandName="Insert" Text="插入" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
            CommandName="Cancel" Text="取消" />
    </InsertItemTemplate>
    <ItemTemplate>
        uID:
        <asp:Label ID="uIDLabel" runat="server" Text='<%# Eval("uID") %>' />
        <br />
        userName:
        <asp:Label ID="userNameLabel" runat="server" Text='<%# Bind("userName") %>' />
        <br />
        passWD:
        <asp:Label ID="passWDLabel" runat="server" Text='<%# Bind("passWD") %>' />
        <br />
        name1:
        <asp:Label ID="name1Label" runat="server" Text='<%# Bind("name1") %>' />
        <br />
        name2:
        <asp:Label ID="name2Label" runat="server" Text='<%# Bind("name2") %>' />
        <br />
        street:
        <asp:Label ID="streetLabel" runat="server" Text='<%# Bind("street") %>' />
        <br />
        City:
        <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
        <br />
        Country:
        <asp:Label ID="CountryLabel" runat="server" Text='<%# Bind("Country") %>' />
        <br />
        zip:
        <asp:Label ID="zipLabel" runat="server" Text='<%# Bind("zip") %>' />
        <br />
        Email:
        <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
        <br />
        phone1:
        <asp:Label ID="phone1Label" runat="server" Text='<%# Bind("phone1") %>' />
        <br />
        phone2:
        <asp:Label ID="phone2Label" runat="server" Text='<%# Bind("phone2") %>' />
        <br />
        phone3:
        <asp:Label ID="phone3Label" runat="server" Text='<%# Bind("phone3") %>' />
        <br />
        phone4:
        <asp:Label ID="phone4Label" runat="server" Text='<%# Bind("phone4") %>' />
        <br />
        inTime:
        <asp:Label ID="inTimeLabel" runat="server" Text='<%# Bind("inTime") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
            CommandName="Edit" Text="编辑" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
            CommandName="Delete" Text="删除" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
            CommandName="New" Text="新建" />
    </ItemTemplate>
</asp:FormView>
