<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="leftindex.aspx.cs" Inherits="QiZhanBang.Web.backend.leftindex" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=uft-8" />
<title>管理顶部</title>
<link href="images/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body { background:#dce9f1; }
-->
</style>
</head>
<body>
<ul id="left">
<li><a href="sitesetting.aspx" target="MainFrame" onFocus="this.blur()">基础信息配置</a></li>
<li><a href="articlelist.aspx?channelid=4" target="MainFrame" onFocus="this.blur()">企帮动态</a><span><a href="articleedit.aspx?action=add&channelid=4" target="MainFrame">
添加</a></span></li>
<li><a href="articlelist.aspx?channelid=4" target="MainFrame" onFocus="this.blur()">在线帮助</a><span><a href="articleedit.aspx?action=add&channelid=4" target="MainFrame">
添加</a></span></li>
<li><a href="singlepageedit.aspx?action=edit&pageid=34" target="MainFrame" onFocus="this.blur()">产品介绍</a></li>
<li><a href="linklist.aspx?categoryid=6" target="MainFrame" onFocus="this.blur()">友情链接</a></li>
</ul>
</body>
</html>
