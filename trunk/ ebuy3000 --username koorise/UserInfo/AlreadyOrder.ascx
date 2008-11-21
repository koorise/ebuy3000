<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AlreadyOrder.ascx.cs" Inherits="UserInfo_AlreadyOrder" %>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Ebuy %>" 
    SelectCommand="SELECT [productName], [pID] FROM [Bills] WHERE ([checkOut] = @checkOut) ORDER BY [inTime] DESC">
    <SelectParameters>
        <asp:Parameter DefaultValue="1" Name="checkOut" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
<div id="alreadyorder">
				<div class="titl">Already Order Form </div>
				<div class="cont">
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                        GridLines="Horizontal">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# DataBinder.Eval(Container.DataItem,"pID","~/ProductDetail.aspx?pID={0}") %>' 
                                Text='<%# Eval("productName") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:DataList>
				</div>
				<div class="bott"><img src="images/already_bottom.gif" width="185" height="5" /></div>
			</div>