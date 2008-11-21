<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProductsAdd.ascx.cs" Inherits="Admin_UC_ProductsAdd" %>
<%@ Register assembly="Infragistics2.WebUI.WebHtmlEditor.v8.1, Version=8.1.20081.1000, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" namespace="Infragistics.WebUI.WebHtmlEditor" tagprefix="ighedit" %>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Ebuy %>" 
    SelectCommand="SELECT [cID], [ClassName] FROM [sys_catalog] WHERE ([flag] = @flag)">
    <SelectParameters>
        <asp:Parameter DefaultValue="0" Name="flag" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Ebuy %>" 
    SelectCommand="SELECT [cID], [ClassName] FROM [sys_catalog] WHERE ([orderFlag] = @orderFlag)">
    <SelectParameters>
        <asp:ControlParameter ControlID="ddlClassID" Name="orderFlag" 
            PropertyName="SelectedValue" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
<table style="width:100%; line-height:30px;">
    <tr>
        <td style="text-align:center; " colspan="2">Products Add</td>
        
    </tr>
    <tr>
        <td style="text-align:right; width:40%;">Name:</td>
        <td style="text-align:left;">
            <asp:TextBox ID="tbPname" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align:right; width:40%;">Catalog:</td>
        <td style="text-align:left;">
            <asp:DropDownList ID="ddlClassID" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource1" DataTextField="ClassName" DataValueField="cID">
            </asp:DropDownList>
            <asp:DropDownList ID="ddlNclassID" runat="server" DataSourceID="SqlDataSource2" 
                DataTextField="ClassName" DataValueField="cID">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="text-align:right; width:40%;">MarketPrice:</td>
        <td style="text-align:left;">
            <asp:TextBox ID="tbMarketPrice" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align:right; width:40%;">MemberPrice:</td>
        <td style="text-align:left;">
            <asp:TextBox ID="tbMemberPrice" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align:right; width:40%;">Postage:</td>
        <td style="text-align:left;">
            <asp:TextBox ID="tbPostage" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align:right; width:40%;">Image:</td>
        <td style="text-align:left;">
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td style="text-align:right; width:40%; vertical-align:top;">Description:</td>
        <td style="text-align:left;">
            <ighedit:WebHtmlEditor ID="WebHtmlEditor1" runat="server" 
                ImageDirectory="~/admin/images/htmleditor/" UploadedFilesDirectory="~/uploads">
<RightClickMenu><ighedit:HtmlBoxMenuItem runat="server" Act="Cut"></ighedit:HtmlBoxMenuItem>
<ighedit:HtmlBoxMenuItem runat="server" Act="Copy"></ighedit:HtmlBoxMenuItem>
<ighedit:HtmlBoxMenuItem runat="server" Act="Paste"></ighedit:HtmlBoxMenuItem>
<ighedit:HtmlBoxMenuItem runat="server" Act="PasteHtml"></ighedit:HtmlBoxMenuItem>
<ighedit:HtmlBoxMenuItem runat="server" Act="CellProperties">
<Dialog InternalDialogType="CellProperties"></Dialog>
</ighedit:HtmlBoxMenuItem>
<ighedit:HtmlBoxMenuItem runat="server" Act="TableProperties">
<Dialog InternalDialogType="ModifyTable"></Dialog>
</ighedit:HtmlBoxMenuItem>
<ighedit:HtmlBoxMenuItem runat="server" Act="InsertImage"></ighedit:HtmlBoxMenuItem>
</RightClickMenu>

<Toolbar><ighedit:ToolbarImage runat="server" Type="DoubleSeparator"></ighedit:ToolbarImage>
<ighedit:ToolbarButton runat="server" Type="Bold"></ighedit:ToolbarButton>
<ighedit:ToolbarButton runat="server" Type="Italic"></ighedit:ToolbarButton>
<ighedit:ToolbarButton runat="server" Type="Underline"></ighedit:ToolbarButton>
<ighedit:ToolbarButton runat="server" Type="Strikethrough"></ighedit:ToolbarButton>
<ighedit:ToolbarImage runat="server" Type="Separator"></ighedit:ToolbarImage>
<ighedit:ToolbarButton runat="server" Type="Subscript"></ighedit:ToolbarButton>
<ighedit:ToolbarButton runat="server" Type="Superscript"></ighedit:ToolbarButton>
<ighedit:ToolbarImage runat="server" Type="Separator"></ighedit:ToolbarImage>
<ighedit:ToolbarButton runat="server" Type="Cut"></ighedit:ToolbarButton>
<ighedit:ToolbarButton runat="server" Type="Copy"></ighedit:ToolbarButton>
<ighedit:ToolbarButton runat="server" Type="Paste"></ighedit:ToolbarButton>
<ighedit:ToolbarImage runat="server" Type="Separator"></ighedit:ToolbarImage>
<ighedit:ToolbarButton runat="server" Type="Undo"></ighedit:ToolbarButton>
<ighedit:ToolbarButton runat="server" Type="Redo"></ighedit:ToolbarButton>
<ighedit:ToolbarImage runat="server" Type="Separator"></ighedit:ToolbarImage>
<ighedit:ToolbarButton runat="server" Type="JustifyLeft"></ighedit:ToolbarButton>
<ighedit:ToolbarButton runat="server" Type="JustifyCenter"></ighedit:ToolbarButton>
<ighedit:ToolbarButton runat="server" Type="JustifyRight"></ighedit:ToolbarButton>
<ighedit:ToolbarButton runat="server" Type="JustifyFull"></ighedit:ToolbarButton>
<ighedit:ToolbarImage runat="server" Type="Separator"></ighedit:ToolbarImage>
<ighedit:ToolbarButton runat="server" Type="Indent"></ighedit:ToolbarButton>
<ighedit:ToolbarButton runat="server" Type="Outdent"></ighedit:ToolbarButton>
<ighedit:ToolbarImage runat="server" Type="Separator"></ighedit:ToolbarImage>
<ighedit:ToolbarButton runat="server" Type="UnorderedList"></ighedit:ToolbarButton>
<ighedit:ToolbarButton runat="server" Type="OrderedList"></ighedit:ToolbarButton>
<ighedit:ToolbarImage runat="server" Type="Separator"></ighedit:ToolbarImage>
<ighedit:ToolbarDialogButton runat="server" Type="InsertRule">
<Dialog InternalDialogType="InsertRule"></Dialog>
</ighedit:ToolbarDialogButton>
<ighedit:ToolbarImage runat="server" Type="RowSeparator"></ighedit:ToolbarImage>
<ighedit:ToolbarImage runat="server" Type="DoubleSeparator"></ighedit:ToolbarImage>
<ighedit:ToolbarDialogButton runat="server" Type="FontColor"></ighedit:ToolbarDialogButton>
<ighedit:ToolbarDialogButton runat="server" Type="FontHighlight"></ighedit:ToolbarDialogButton>
<ighedit:ToolbarDialogButton runat="server" Type="SpecialCharacter">
<Dialog InternalDialogType="SpecialCharacterPicker" Type="InternalWindow"></Dialog>
</ighedit:ToolbarDialogButton>
<ighedit:ToolbarMenuButton runat="server" Type="InsertTable">
<Menu><ighedit:HtmlBoxMenuItem runat="server" Act="TableProperties">
<Dialog InternalDialogType="InsertTable"></Dialog>
</ighedit:HtmlBoxMenuItem>
<ighedit:HtmlBoxMenuItem runat="server" Act="InsertColumnRight"></ighedit:HtmlBoxMenuItem>
<ighedit:HtmlBoxMenuItem runat="server" Act="InsertColumnLeft"></ighedit:HtmlBoxMenuItem>
<ighedit:HtmlBoxMenuItem runat="server" Act="InsertRowAbove"></ighedit:HtmlBoxMenuItem>
<ighedit:HtmlBoxMenuItem runat="server" Act="InsertRowBelow"></ighedit:HtmlBoxMenuItem>
<ighedit:HtmlBoxMenuItem runat="server" Act="DeleteRow"></ighedit:HtmlBoxMenuItem>
<ighedit:HtmlBoxMenuItem runat="server" Act="DeleteColumn"></ighedit:HtmlBoxMenuItem>
<ighedit:HtmlBoxMenuItem runat="server" Act="IncreaseColspan"></ighedit:HtmlBoxMenuItem>
<ighedit:HtmlBoxMenuItem runat="server" Act="DecreaseColspan"></ighedit:HtmlBoxMenuItem>
<ighedit:HtmlBoxMenuItem runat="server" Act="IncreaseRowspan"></ighedit:HtmlBoxMenuItem>
<ighedit:HtmlBoxMenuItem runat="server" Act="DecreaseRowspan"></ighedit:HtmlBoxMenuItem>
<ighedit:HtmlBoxMenuItem runat="server" Act="CellProperties">
<Dialog InternalDialogType="CellProperties"></Dialog>
</ighedit:HtmlBoxMenuItem>
<ighedit:HtmlBoxMenuItem runat="server" Act="TableProperties">
<Dialog InternalDialogType="ModifyTable"></Dialog>
</ighedit:HtmlBoxMenuItem>
</Menu>
</ighedit:ToolbarMenuButton>
<ighedit:ToolbarButton runat="server" Type="ToggleBorders"></ighedit:ToolbarButton>
<ighedit:ToolbarImage runat="server" Type="Separator"></ighedit:ToolbarImage>
<ighedit:ToolbarButton runat="server" Type="InsertLink"></ighedit:ToolbarButton>
<ighedit:ToolbarButton runat="server" Type="RemoveLink"></ighedit:ToolbarButton>
<ighedit:ToolbarImage runat="server" Type="Separator"></ighedit:ToolbarImage>
<ighedit:ToolbarButton runat="server" Type="Save" RaisePostback="True"></ighedit:ToolbarButton>
<ighedit:ToolbarUploadButton runat="server" Type="Open">
<Upload Mode="File" Filter="*.htm,*.html,*.asp,*.aspx" Height="350px" Width="500px"></Upload>
</ighedit:ToolbarUploadButton>
<ighedit:ToolbarButton runat="server" Type="Preview"></ighedit:ToolbarButton>
<ighedit:ToolbarImage runat="server" Type="Separator"></ighedit:ToolbarImage>
<ighedit:ToolbarDialogButton runat="server" Type="FindReplace">
<Dialog InternalDialogType="FindReplace"></Dialog>
</ighedit:ToolbarDialogButton>
<ighedit:ToolbarDialogButton runat="server" Type="InsertBookmark">
<Dialog InternalDialogType="InsertBookmark"></Dialog>
</ighedit:ToolbarDialogButton>
<ighedit:ToolbarUploadButton runat="server" Type="InsertImage">
<Upload Height="420px" Width="500px"></Upload>
</ighedit:ToolbarUploadButton>
<ighedit:ToolbarUploadButton runat="server" Type="InsertFlash">
<Upload Mode="Flash" Filter="*.swf" Height="440px" Width="500px"></Upload>
</ighedit:ToolbarUploadButton>
<ighedit:ToolbarUploadButton runat="server" Type="InsertWindowsMedia">
<Upload Mode="WindowsMedia" Filter="*.asf,*.wma,*.wmv,*.wm,*.avi,*.mpg,*.mpeg,*.m1v,*.mp2,*.mp3,*.mpa,*.mpe,*.mpv2,*.m3u,*.mid,*.midi,*.rmi,*.aif,*.aifc,*.aiff,*.au,*.snd,*.wav,*.cda,*.ivf" Height="400px" Width="500px"></Upload>
</ighedit:ToolbarUploadButton>
<ighedit:ToolbarDialogButton runat="server" Type="Help">
<Dialog InternalDialogType="Text"></Dialog>
</ighedit:ToolbarDialogButton>
<ighedit:ToolbarButton runat="server" Type="CleanWord"></ighedit:ToolbarButton>
<ighedit:ToolbarButton runat="server" Type="WordCount"></ighedit:ToolbarButton>
<ighedit:ToolbarButton runat="server" Type="PasteHtml"></ighedit:ToolbarButton>
<ighedit:ToolbarMenuButton runat="server" Type="Zoom">
<Menu><ighedit:HtmlBoxMenuItem runat="server" Act="Zoom25"></ighedit:HtmlBoxMenuItem>
<ighedit:HtmlBoxMenuItem runat="server" Act="Zoom50"></ighedit:HtmlBoxMenuItem>
<ighedit:HtmlBoxMenuItem runat="server" Act="Zoom75"></ighedit:HtmlBoxMenuItem>
<ighedit:HtmlBoxMenuItem runat="server" Act="Zoom100"></ighedit:HtmlBoxMenuItem>
<ighedit:HtmlBoxMenuItem runat="server" Act="Zoom200"></ighedit:HtmlBoxMenuItem>
<ighedit:HtmlBoxMenuItem runat="server" Act="Zoom300"></ighedit:HtmlBoxMenuItem>
<ighedit:HtmlBoxMenuItem runat="server" Act="Zoom400"></ighedit:HtmlBoxMenuItem>
<ighedit:HtmlBoxMenuItem runat="server" Act="Zoom500"></ighedit:HtmlBoxMenuItem>
<ighedit:HtmlBoxMenuItem runat="server" Act="Zoom600"></ighedit:HtmlBoxMenuItem>
</Menu>
</ighedit:ToolbarMenuButton>
<ighedit:ToolbarButton runat="server" Type="TogglePositioning"></ighedit:ToolbarButton>
<ighedit:ToolbarButton runat="server" Type="BringForward"></ighedit:ToolbarButton>
<ighedit:ToolbarButton runat="server" Type="SendBackward"></ighedit:ToolbarButton>
<ighedit:ToolbarImage runat="server" Type="RowSeparator"></ighedit:ToolbarImage>
<ighedit:ToolbarImage runat="server" Type="DoubleSeparator"></ighedit:ToolbarImage>
<ighedit:ToolbarDropDown runat="server" Type="FontName"></ighedit:ToolbarDropDown>
<ighedit:ToolbarDropDown runat="server" Type="FontSize"></ighedit:ToolbarDropDown>
<ighedit:ToolbarDropDown runat="server" Type="FontFormatting"></ighedit:ToolbarDropDown>
<ighedit:ToolbarDropDown runat="server" Type="FontStyle"></ighedit:ToolbarDropDown>
<ighedit:ToolbarDropDown runat="server" Type="Insert"><Items>
<ighedit:ToolbarDropDownItem runat="server" Act="Greeting"></ighedit:ToolbarDropDownItem>
<ighedit:ToolbarDropDownItem runat="server" Act="Signature"></ighedit:ToolbarDropDownItem>
    </Items>
</ighedit:ToolbarDropDown>
</Toolbar>
            </ighedit:WebHtmlEditor>
        </td>
    </tr>
    <tr>
        <td style="text-align:right; width:40%;"></td>
        <td style="text-align:left;">
            <asp:Button ID="btnSub" runat="server" onclick="btnSub_Click" Text="Add" />
        </td>
    </tr>
    <tr>
        <td style="text-align:right; width:40%;"></td>
        <td style="text-align:left;"></td>
    </tr>
    
</table>