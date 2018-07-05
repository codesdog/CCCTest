<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="system80_index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>企业网站后台管理系统</title>
    <frameset rows="*" cols="180,*" frameborder="no" border="0" framespacing="0">
  <frame src="Left.aspx" name="leftFrame" scrolling="auto" noresize="noresize" id="leftFrame" title="leftFrame" />
  <frameset rows="50,*" frameborder="no" border="0" framespacing="0">
    <frame src="header.aspx" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" title="topFrame" />
    <frame src="list.aspx" name="mainFrame" id="mainFrame" title="mainFrame" />
  </frameset>
</frameset>
<noframes>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p>你的浏览器不支持框架，请升级你的浏览器</p>
    </div>
    </form>
</body>