<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admincp.aspx.cs" Inherits="QiZhanBang.Web.backend.admincp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ECMS网站管理系统</title>
<link href="images/sdcms.css" rel="stylesheet" type="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<script language="javascript" src="images/sdcms.js" type="text/javascript"></script>
<script type="text/javascript" src="images/jquery.js"></script>
</head>
<body>
<div>
	<div id="head">
		<div class="left">ECMS企业网站管理系统</div>
		<div class="left head_txt">您好：<asp:Literal runat="server" ID="ltlUsername" />　[ <a href="memberedit.aspx?action=edit&uid=<%= LoginUid %>" target="_blank">修改密码</a> <span><a href="adminlogout.aspx">退出后台</a></span> ]</div>
		<div class="right head_menu">
		  <ul id="head_menu">
			  <li><a href="/" target="_blank">预览网站</a></li>
			  <li><a href="main.aspx" target="main">后台首页</a></li>
			  <li style="display:none"><a href="help.aspx" target="_blank">帮助中心</a></li>
		  </ul>
		</div>	
	</div>
<!--head is over-->
	 <div id="content">
	 <div id="left">
          <div class="left_title"><a onclick="pucker_show('submenu_',1,'dis','block')" style="CURSOR:pointer;">系统管理</a></div>
		  <ul id="submenu_1" class="dis">
		  <li class="left_link" onClick="DoLocation(this)"><a href="channellist.aspx" target="main">频道管理</a></li>
		  <li class="left_link" onClick="DoLocation(this)"><a href="linkcategorylist.aspx" target="main">链接分类</a></li>
		  <li class="left_link" onClick="DoLocation(this)"><a href="singlepagelist.aspx" target="main">单页管理</a></li>
		  <li class="left_link" onClick="DoLocation(this)"><a href="memberlist.aspx" target="main">管理员管理</a></li>
		  <li class="left_link" onClick="DoLocation(this)" style="display:none"><a href="database.aspx" target="main">数据库备份</a></li>
		  </ul>
		  
		  <div class="left_title"><a onclick="pucker_show('submenu_',2,'dis','block')" style="CURSOR:pointer;">网站管理</a></div>
		  <ul id="submenu_2" class="dis">
		    <li class="left_link" onClick="DoLocation(this)" style="display:none"><a href="messagelist.aspx" target="main">留言管理</a></li>
		    <li class="left_link" onClick="DoLocation(this)"><a href="articlelist.aspx?channelid=1" target="main">新闻管理</a> | <a href="articlecategorylist.aspx?channelid=1" target="main">分类</a></li>
		    <li class="left_link" onClick="DoLocation(this)"><a href="productlist.aspx?channelid=3" target="main">产品管理</a> | <a href="productcategorylist.aspx?channelid=3" target="main">分类</a></li>
		    <li class="left_link" onClick="DoLocation(this)"><a href="singlepagelist.aspx" target="main">单页管理</a></li>
		    <li class="left_link" onClick="DoLocation(this)"><a href="linklist.aspx?categoryid=4" target="main">友情链接</a></li>
		    <li class="left_link" onClick="DoLocation(this)"><a href="linklist.aspx?categoryid=5" target="main">首页幻灯片</a></li>
		    <li class="left_link" onClick="DoLocation(this)"><a href="sitesetting.aspx" target="main">网站配置信息管理</a></li>
		  </ul>
		  <div class="left_title" style="display:none;"><a onclick="pucker_show('submenu_',3,'dis','block')" style="CURSOR:pointer;">营销管理</a></div>
		  <ul id="submenu_3" class="dis" style="display:none;">
		  </ul> 
     </div>
	<script language="javascript" type="text/javascript">
	pucker_show('submenu_',2,'dis','block');
	</script> 
	<div id="right">
		<iframe id="Main_Content" scrolling="auto" name="main" src="main.aspx" frameborder="0"></iframe>
	</div>

	</div>
</div>
<script language="javascript" type="text/javascript">window.setInterval("reinitIframe('Main_Content')",300);</script>
</body>
</html>
