<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="channeledit.aspx.cs" Inherits="QiZhanBang.Web.backend.channeledit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>频道管理</title>
<link href="images/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body { padding:10px }
-->
</style>
</head>
<body>
<form id="Form1" runat="server">
<h3 class="boxtitle">后台管理 &gt;&gt; 频道管理</h3>
<table height="0" border="0" cellpadding="0" cellspacing="1" class="tabBgColor">
<tr align="center">
  <td height="25" background="Images/Top.gif">添加/修改频道信息</td>
</tr>
</table>
  <table width="98%" border="0" align="center" cellpadding="3" cellspacing="1">
    <tr>
      <td width="12%" align="center" class="tdbg">频道名称：      </td>
      <td class="tdbg"><asp:TextBox runat="server" ID="txtchannelname" CssClass="input" /></td>
    </tr>
    <tr class="tdbg">
      <td align="center">频道说明：      </td>
      <td><asp:TextBox runat="server" ID="txtchanneldesc" CssClass="input" /></td>
    </tr>
    <tr class="tdbg">
      <td align="center">内容类型：      </td>
      <td>
      <asp:RadioButtonList runat="server" ID="rblchanneltype" RepeatDirection="Horizontal" RepeatLayout="Flow">
         <asp:ListItem Text="文章" Value="article" Selected="True" />
         <asp:ListItem Text="视频" Value="video" />
         <asp:ListItem Text="产品" Value="product" />
      </asp:RadioButtonList>
      </td>
    </tr>
    <tr class="tdbg">
	  <td>&nbsp;</td>
      <td><asp:Button runat="server" Text="保 存" ID="btnSave" CssClass="bnt" onclick="btnSave_Click" /></td>
    </tr>
	
  </table>
</form>
</body>
</html>
