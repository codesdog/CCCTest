<%@ Page Inherits="QiZhanBang.Core.PageControler.WebPageBase" %>
<%@ Register src="siteheader.ascx" tagname="siteheader" tagprefix="uc1" %>
<%@ Register src="sitefooter.ascx" tagname="sitefooter" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>企站帮CMS - 帮助企业快速创造价值|企业网站管理系统</title>
<link href="images/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<uc1:siteheader ID="siteheader1" runat="server" />
<div class="webbanner">
  <div class="bannertxt">
<h1>帮助企业快速创造价值</h1>
<h2>基于.net框架开源 易于上手的模板机制</h2>
<p>以低成本短时间架设一个功能齐全、性能优异、规模庞大并易于维护的网站平台</p>
<p><a title="免费下载" href="down.aspx">免费下载</a> <a title="在线演示" href="index.aspx">在线演示</a></p>
  </div>
</div>

<div class="main mainabout">

<div class="mabout mabout1">
<h1>企业网站建设</h1>
<ul>
<li>基于.net/acces易于上手</li>
<li>简单的语言条件模板机制</li>
<li>支持升级</li>
<li>灵活，轻量级开发模式</li>
</ul>
</div>

<div class="mabout mabout2">
<h1>定制设计开发</h1>
<ul>
<li>基于企站帮cms的定制个性开发设计</li>
<li>专业的团队服务</li>
<li>降低您的网站建设成本</li>
<li>符合标准的CSS/HTML</li>
</ul>
</div>

<div class="mabout mabout3">
<h1>易用的管理平台</h1>
<ul>
<li>符合日常办公的office管理方式</li>
<li>100%前台数据后台操作</li>
<li>降低您的网站维护成本</li>
<li>支持二次开发及各种接口api</li>
</ul>
</div>
  
</div>

<div class="main ourwork">
<p>
<span class="towour1">免费下载安装</span>
<span class="towour2">基于默认模板设计</span>
<span class="towour3">完成网站！</span>
<span id="towour4">没有技术人员？</span>
<span class="towour5">联系我们</span>
<span class="towour6">定制美工及程序</span>
<span class="towour7">完成网站！</span></p>
</div>

<div class="demopic">
<dl>
<dt><img src="images/a1.gif" width="302" height="174" /></dt>
<dd>登录界面</dd>
</dl>
<dl>
<dt><img src="images/a2.gif" width="302" height="174" /></dt>
<dd>office方式编辑器</dd>
</dl>
<dl>
<dt><img src="images/a3.gif" width="302" height="174" /></dt>
<dd>后台界面</dd>
</dl>
</div>
<uc2:sitefooter ID="sitefooter1" runat="server" />
</body>
</html>