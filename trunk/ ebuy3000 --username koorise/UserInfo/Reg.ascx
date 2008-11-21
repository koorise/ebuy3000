<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Reg.ascx.cs" Inherits="UserInfo_Reg" %>
<div id="mcenter">
		 	<div id="regimg" ><img src="images/reg.gif" width="121" height="18" /></div>
		  <div id="tit"><strong>Tell us about yourself </strong>- All fields are required</div>
		  <div id="mid">
		  		<div id="notes"><img src="images/dot7.gif" width="19" height="18" align="absmiddle"  style="margin-bottom:20px;margin-right:10px;float:left;"/> 
					For you can recive your parcel  as soon as possible,Please fill your true information in the 
					<br />following blank .
				</div>
				<div>
				<table width="604" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
					<td colspan="2"><span class="blue">*</span>Indicates required field</td>
				  </tr>
				  <tr>
					<td width="217">First name</td>
					<td width="377">Last name</td>
					</tr>
				  <tr>
					<td>
                        <asp:TextBox ID="tbName1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="tbName1" ErrorMessage="*"></asp:RequiredFieldValidator>
                      </td>
					<td>
                        <asp:TextBox ID="tbName2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="tbName2" ErrorMessage="*"></asp:RequiredFieldValidator>
                      </td>
					</tr>
				  <tr>
					<td>Street address</td>
					<td>&nbsp;</td>
					</tr>
				  <tr>
					<td>
                        <asp:TextBox ID="tbStreet" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="tbStreet" ErrorMessage="*"></asp:RequiredFieldValidator>
                      </td>
					<td>&nbsp;</td>
					</tr>
				  <tr>
					<td>City</td>
					<td>&nbsp;</td>
				  </tr>
				  <tr>
					<td>
                        <asp:TextBox ID="tbCity" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="tbCity" ErrorMessage="*"></asp:RequiredFieldValidator>
                      </td>
					<td>&nbsp;</td>
					</tr>
				  <tr>
					<td colspan="2"><table width="604" border="0" cellpadding="0" cellspacing="0">
					  <tr>
						<td>State /   Province<br /></td>
						<td>ZIP / Postal   code<br /></td>
						<td>Country or region</td>
					  </tr>
					  <tr>
						<td>
                            <asp:TextBox ID="tbState" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="tbState" ErrorMessage="*"></asp:RequiredFieldValidator>
                          </td>
						<td>
                            <asp:TextBox ID="tbZip" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="tbZip" ErrorMessage="*"></asp:RequiredFieldValidator>
                          </td>
						<td>
                            <asp:TextBox ID="tbCountry" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="tbCountry" ErrorMessage="*"></asp:RequiredFieldValidator>
                          </td>
					  </tr>
					</table></td>
					</tr>
				  <tr>
					<td colspan="2"><div>Primary telephone number</div></td>
					</tr>
				  <tr>
					<td colspan="2">
                        <asp:TextBox ID="tbPhone1" runat="server" Width="46px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="tbPhone1" ErrorMessage="*"></asp:RequiredFieldValidator>
				    -
			            <asp:TextBox ID="tbPhone2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="tbPhone2" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;-
			            <asp:TextBox ID="tbPhone3" runat="server" Width="44px"></asp:TextBox>
&nbsp;ext:
			            <asp:TextBox ID="tbPhone4" runat="server" Width="44px"></asp:TextBox>
                      </td>
				  </tr>
				  <tr>
					<td colspan="2">Email address</td>
					</tr>
				  <tr>
					<td>
                        <asp:TextBox ID="tbEMail1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="tbEMail1" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="tbEMail1" ErrorMessage="*" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                      </td>
					<td>&nbsp;</td>
					</tr>
				  <tr>
					<td>Re-enter email   address</td>
					<td>&nbsp;</td>
					</tr>
				  <tr>
					<td>
                        <asp:TextBox ID="tbEMail2" runat="server"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" 
                            ControlToCompare="tbEMail1" ControlToValidate="tbEMail2" ErrorMessage="*"></asp:CompareValidator>
                      </td>
					<td>&nbsp;</td>
					</tr>
				  <tr>
					<td colspan="2"><small>We're not big on spam. You can always change your email preferences after   registration.</small></td>
					</tr>
				</table>				
				</div>
				<div id="cent"><strong>Choose your user ID and password </strong>- All fields are required</div>
				<div>
				<table width="604" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
				    <td colspan="2">&nbsp;</td>
			      </tr>
				  
				  <tr>
					<td colspan="2">Create your eBay user   ID</td>
					</tr>
				  <tr>
					<td>
                        <asp:TextBox ID="tbUserName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="tbUserName" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                            ControlToValidate="tbUserName" ErrorMessage="*" ValidationGroup="A"></asp:RequiredFieldValidator>
                      </td>
					<td>&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="imgBtnChkOut" runat="server" 
                            ImageUrl="~/images/checkuserid.gif" onclick="imgBtnChkOut_Click" 
                            ValidationGroup="A" />
                                </td>
				  </tr>
				  <tr>
				    <td colspan="2"><small>Use letters or numbers, but not symbols.</small></td>
			      </tr>
				  <tr>
					<td colspan="2">Create your password</td>
					</tr>
				  <tr>
					<td width="217">
                        <asp:TextBox ID="tbPassWD1" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                            ControlToValidate="tbPassWD1" ErrorMessage="*"></asp:RequiredFieldValidator>
                      </td>
					<td width="377">&nbsp;</td>
					</tr>
				  <tr>
					<td colspan="2">Re-enter your password</td>
				  </tr>
				  <tr>
				    <td colspan="2">
                        <asp:TextBox ID="tbPassWD2" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="tbPassWD1" ControlToValidate="tbPassWD2" ErrorMessage="*"></asp:CompareValidator>
                      </td>
			      </tr>
				  <tr>
				    <td colspan="2"><small>Use 6 or more characters or numbers</small></td>
			      </tr>
				  <tr>
				    <td height="50" colspan="2">
                        <asp:ImageButton ID="imgBtnReg" runat="server" ImageUrl="~/images/btn_reg.gif" 
                            onclick="imgBtnReg_Click" />
                      </td>
			      </tr>
				  <tr>
				    <td height="50" colspan="2">&nbsp;</td>
			      </tr>
				</table>				
				</div>
						  
		  </div>
		  <div id="bot">&nbsp;</div>
	  </div>