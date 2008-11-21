<%@ Control Language="C#" AutoEventWireup="true" CodeFile="NewOrder.ascx.cs" Inherits="UserInfo_NewOrder" %>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Ebuy %>" 
    SelectCommand="SELECT [productName], [pID] FROM [Bills] WHERE ([checkOut] = @checkOut) ORDER BY [isSending] DESC">
    <SelectParameters>
        <asp:Parameter DefaultValue="1" Name="checkOut" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
<div id="neworder">
				<div class="titl">New Order Form </div>
				<div class="cont">
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                        GridLines="Horizontal">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# DataBinder.Eval(Container.DataItem,"pID","~/ProductDetail.aspx?pID={0}") %>' 
                                Text='<%# Eval("productName") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:DataList></div>
				<div class="bott"><img src="images/login_bott.gif" width="185" height="5" /></div>
			</div>