<%@ Page Language="C#" AutoEventWireup="true" CodeFile="menu.aspx.cs" Inherits="system80_menu" %>

<%@ Register src="fentop.ascx" tagname="fentop" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
   <title>main</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
	font-family: 宋体;
}
a {
	font-size: 12px;
}
body {
	margin-left: 0px;
	margin-top: 10px;
	margin-right: 0px;
	margin-bottom: 0px;
}
a:link {
	color: #333333;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #333333;
}
a:hover {
	text-decoration: underline;
	color: #FF3300;
}
a:active {
	text-decoration: none;
	color: #333333;
}
-->
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table width="95%" border="0" align="center" cellpadding="8" cellspacing="1" bgcolor="#1598CB" height="40px">
    <tr>
      <td bgcolor="#F1F5F8">身份：&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;当前时间： 
          <asp:Label ID="Label2" runat="server"></asp:Label>
</td>
    </tr>
</table>

    </div>
    </form>
</body>
</html>
