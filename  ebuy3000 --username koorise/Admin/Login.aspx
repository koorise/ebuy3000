﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<%@ Register src="UC/Login.ascx" tagname="Login" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ebuy3000 administrator login</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:Login ID="Login1" runat="server" />
    
    </div>
    </form>
</body>
</html>
