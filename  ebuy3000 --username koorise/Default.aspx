<%@ Page Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="无标题页" %>
<%@ Register src="UserInfo/Catalog.ascx" tagname="Catalog" tagprefix="uc1" %>
<%@ Register src="UserInfo/Brand.ascx" tagname="Brand" tagprefix="uc2" %>
<%@ Register src="UserInfo/Login.ascx" tagname="Login" tagprefix="uc3" %>
<%@ Register src="UserInfo/NewOrder.ascx" tagname="NewOrder" tagprefix="uc4" %>
<%@ Register src="UserInfo/AlreadyOrder.ascx" tagname="AlreadyOrder" tagprefix="uc5" %>
<%@ Register src="UserInfo/Postal.ascx" tagname="Postal" tagprefix="uc6" %>
<%@ Register src="UserInfo/IM.ascx" tagname="IM" tagprefix="uc7" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
       <uc7:IM ID="IM1" runat="server" />
       <div id="mleft">
			<uc1:Catalog ID="Catalog1" runat="server" />
            <uc2:Brand ID="Brand1" runat="server" />
		</div>
		<div id="mcenter">
			<div id="big_ad">
                
                <img src="images/big_ad.gif" width="604" height="215" /></div>
			<div id="hot_tit">
				<div id="hot_left"><img src="images/hot_left.gif" width="5" height="33" /></div>
				<div id="hot_middle">Hot Product</div>
				<div id="hot_right"><img src="images/hot_right.gif" width="5" height="33" /></div>
			</div>
			<div id="prod_list">
				<div id="prod">
					<a href="#"><img src="images/prod1.gif" width="136" height="108" border="0" /></a>
					<p class="name"><a href="#">NOKIA N72</a></p>
					<p class="price"><span>&euro; 40.99</span> &euro; 34.99</p>
			  </div>
				<div id="prod">
					<a href="#"><img src="images/prod1.gif" width="136" height="108" border="0" /></a>
					<p class="name"><a href="#">NOKIA N72</a></p>
					<p class="price"><span>&euro; 40.99</span> &euro; 34.99</p>
				</div>
				<div id="prod">
					<a href="#"><img src="images/prod1.gif" width="136" height="108" border="0" /></a>
					<p class="name"><a href="#">NOKIA N72</a></p>
					<p class="price"><span>&euro; 40.99</span> &euro; 34.99</p>
				</div>
				<div id="prod" style="border:none;">
					<a href="#"><img src="images/prod1.gif" width="136" height="108" border="0" /></a>
					<p class="name"><a href="#">NOKIA N72</a></p>
					<p class="price"><span>&euro; 40.99</span> &euro; 34.99</p>
				</div>
				<div class="dashedline"></div>
				<div id="prod">
					<a href="#"><img src="images/prod1.gif" width="136" height="108" border="0" /></a>
					<p class="name"><a href="#">NOKIA N72</a></p>
					<p class="price"><span>&euro; 40.99</span> &euro; 34.99</p>
				</div>
				<div id="prod">
					<a href="#"><img src="images/prod1.gif" width="136" height="108" border="0" /></a>
					<p class="name"><a href="#">NOKIA N72</a></p>
					<p class="price"><span>&euro; 40.99</span> &euro; 34.99</p>
				</div>
				<div id="prod">
					<a href="#"><img src="images/prod1.gif" width="136" height="108" border="0" /></a>
					<p class="name"><a href="#">NOKIA N72</a></p>
					<p class="price"><span>&euro; 40.99</span> &euro; 34.99</p>
				</div>
				<div id="prod" style="border:none;">
					<a href="#"><img src="images/prod1.gif" width="136" height="108" border="0" /></a>
					<p class="name"><a href="#">NOKIA N72</a></p>
					<p class="price"><span>&euro; 40.99</span> &euro; 34.99</p>
				</div>
				<div class="dashedline"></div>
				<div id="prod">
					<a href="#"><img src="images/prod1.gif" width="136" height="108" border="0" /></a>
					<p class="name"><a href="#">NOKIA N72</a></p>
					<p class="price"><span>&euro; 40.99</span> &euro; 34.99</p>
				</div>
				<div id="prod">
					<a href="#"><img src="images/prod1.gif" width="136" height="108" border="0" /></a>
					<p class="name"><a href="#">NOKIA N72</a></p>
					<p class="price"><span>&euro; 40.99</span> &euro; 34.99</p>
				</div>
				<div id="prod">
					<a href="#"><img src="images/prod1.gif" width="136" height="108" border="0" /></a>
					<p class="name"><a href="#">NOKIA N72</a></p>
					<p class="price"><span>&euro; 40.99</span> &euro; 34.99</p>
				</div>
				<div id="prod" style="border:none;">
					<a href="#"><img src="images/prod1.gif" width="136" height="108" border="0" /></a>
					<p class="name"><a href="#">NOKIA N72</a></p>
					<p class="price"><span>&euro; 40.99</span> &euro; 34.99</p>
				</div>
				<div class="dashedline"></div>
				<div id="prod">
					<a href="#"><img src="images/prod1.gif" width="136" height="108" border="0" /></a>
					<p class="name"><a href="#">NOKIA N72</a></p>
					<p class="price"><span>&euro; 40.99</span> &euro; 34.99</p>
				</div>
				<div id="prod">
					<a href="#"><img src="images/prod1.gif" width="136" height="108" border="0" /></a>
					<p class="name"><a href="#">NOKIA N72</a></p>
					<p class="price"><span>&euro; 40.99</span> &euro; 34.99</p>
				</div>
				<div id="prod">
					<a href="#"><img src="images/prod1.gif" width="136" height="108" border="0" /></a>
					<p class="name"><a href="#">NOKIA N72</a></p>
					<p class="price"><span>&euro; 40.99</span> &euro; 34.99</p>
				</div>
				<div id="prod" style="border:none;">
					<a href="#"><img src="images/prod1.gif" width="136" height="108" border="0" /></a>
					<p class="name"><a href="#">NOKIA N72</a></p>
					<p class="price"><span>&euro; 40.99</span> &euro; 34.99</p>
				</div>
				<div class="dashedline"></div>
				<div id="prod">
					<a href="#"><img src="images/prod1.gif" width="136" height="108" border="0" /></a>
					<p class="name"><a href="#">NOKIA N72</a></p>
					<p class="price"><span>&euro; 40.99</span> &euro; 34.99</p>
				</div>
				<div id="prod">
					<a href="#"><img src="images/prod1.gif" width="136" height="108" border="0" /></a>
					<p class="name"><a href="#">NOKIA N72</a></p>
					<p class="price"><span>&euro; 40.99</span> &euro; 34.99</p>
				</div>
				<div id="prod">
					<a href="#"><img src="images/prod1.gif" width="136" height="108" border="0" /></a>
					<p class="name"><a href="#">NOKIA N72</a></p>
					<p class="price"><span>&euro; 40.99</span> &euro; 34.99</p>
				</div>
				<div id="prod" style="border:none;">
					<a href="#"><img src="images/prod1.gif" width="136" height="108" border="0" /></a>
					<p class="name"><a href="#">NOKIA N72</a></p>
					<p class="price"><span>&euro; 40.99</span> &euro; 34.99</p>
				</div>
				<div class="dashedline"></div>
				<div id="prod">
					<a href="#"><img src="images/prod1.gif" width="136" height="108" border="0" /></a>
					<p class="name"><a href="#">NOKIA N72</a></p>
					<p class="price"><span>&euro; 40.99</span> &euro; 34.99</p>
				</div>
				<div id="prod">
					<a href="#"><img src="images/prod1.gif" width="136" height="108" border="0" /></a>
					<p class="name"><a href="#">NOKIA N72</a></p>
					<p class="price"><span>&euro; 40.99</span> &euro; 34.99</p>
				</div>
				<div id="prod">
					<a href="#"><img src="images/prod1.gif" width="136" height="108" border="0" /></a>
					<p class="name"><a href="#">NOKIA N72</a></p>
					<p class="price"><span>&euro; 40.99</span> &euro; 34.99</p>
				</div>
				<div id="prod">
					<a href="#"><img src="images/prod1.gif" width="136" height="108" border="0" /></a>
					<p class="name"><a href="#">NOKIA N72</a></p>
					<p class="price"><span>&euro; 40.99</span> &euro; 34.99</p>
				</div>				
			</div>
			<div id="pay">
				<a href="#"><img src="images/bank/bankofchina.gif" border="0"/></a>
				<a href="#"><img src="images/bank/westernunion.gif" border="0"/></a>
				<a href="#"><img src="images/bank/moneygram.gif" border="0"/></a>
				<a href="#"><img src="images/bank/visa.gif" border="0"/></a>
				<a href="#"><img src="images/bank/paypal.gif" border="0"/></a>
			</div>
		</div>
		<div id="mright">
			<uc3:Login ID="Login1" runat="server" />
			<uc4:NewOrder ID="NewOrder1" runat="server" />
			<uc5:AlreadyOrder ID="AlreadyOrder1" runat="server" />
			<uc6:Postal ID="Postal1" runat="server" />
&nbsp;</div>
	
</asp:Content>
