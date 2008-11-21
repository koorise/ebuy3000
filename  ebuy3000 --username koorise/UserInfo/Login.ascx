<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Login.ascx.cs" Inherits="UserInfo_Login" %>
<div id="login">
				<div class="titl">Login or Register </div>
				<div class="cont">
					<table width="166" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr><td height="24">ID:</td>
					</tr>
					<tr><td height="24" >&nbsp;&nbsp;&nbsp;<asp:TextBox ID="tbUserName" runat="server"></asp:TextBox>
                                </td>
					</tr>
					<tr><td height="24">PassWord:</td>
					</tr>
					<tr><td height="24" >&nbsp;&nbsp;&nbsp;<asp:TextBox ID="tbPassWD" runat="server" 
                            TextMode="Password"></asp:TextBox>
                                </td>
					</tr>
					<tr><td height="24">&nbsp;&nbsp;&nbsp;code:
					    <asp:TextBox ID="tbCode" runat="server" Width="45px"></asp:TextBox>
&nbsp;<asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/ValidateCode.aspx" />
                                </td></tr>
					<tr><td height="30" align="center">
                        <asp:ImageButton ID="ImageButton1" runat="server" 
                            ImageUrl="~/images/btn_signup.gif" />
&nbsp;&nbsp;&nbsp;
					    <asp:ImageButton ID="ImageButton2" runat="server" 
                            ImageUrl="~/images/btn_register.gif" />
                        </td>
					</tr>
					<tr><td height="24" nowrap="nowrap">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/dot5.gif" />
&nbsp;<a href="#">Forget ID or password?</a></td>
					</tr>
				  </table>
				</div>
				<div class="bott"><img src="images/login_bott.gif" width="185" height="5" /></div>
			</div>