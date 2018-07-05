<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="QiZhanBang.Web.product" %>
<%@ Register src="siteheader.ascx" tagname="siteheader" tagprefix="uc1" %>
<%@ Register src="sitefooter.ascx" tagname="sitefooter" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>企站帮 - 帮助企业快速创造价值</title>
<link href="images/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<uc1:siteheader ID="siteheader1" runat="server" />
<div class="webbanneri">
  <div class="bannertxti">
<h2>基于.net框架开源 易于上手的模板机制</h2>
<p>以低成本短时间架设一个功能齐全、性能优异、规模庞大并易于维护的网站平台</p>
  </div>
</div>

<div class="mains">
  <div class="mainleft">
  
<h2>经典案例</h2>
<ul>
<li><a href="http://www.searcheasy.net" target="_blank">搜易软件</a></li>
<li><a href="http://www.goldchicken.eu">金鸡俱乐部</a></li>
</ul>

<h2>联系我们</h2>
<p>
在线咨询：<br />
<img src="images/qq.png" width="16" height="16" /><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=710526262&amp;site=qq&amp;menu=yes" target="_blank">710526262</a> <img src="images/qq.png" width="16" height="16" /><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=5370342&amp;site=qq&amp;menu=yes" target="_blank">5370342</a><br />
交流QQ群：91038288
</p>

  </div>
  <div class="mainright">
<h2>您的位置：企站帮 &gt;&gt; 产品介绍</h2>

<div class="pageshow">
<%= getpage("产品介绍")%>
</div>


  </div>
</div>

<uc2:sitefooter ID="sitefooter1" runat="server" />
</body>
</html>