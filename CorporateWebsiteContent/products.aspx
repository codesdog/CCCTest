<%@ Page Language="C#" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="products" %>

<%@ Register Src="com/foot.ascx" TagName="foot" TagPrefix="uc1" %>
<%@ Register Src="com/lxwm.ascx" TagName="lxwm" TagPrefix="uc2" %>
<%@ Register Src="com/top.ascx" TagName="top" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>无标题页</title>
     <link href ="images/css.css" type ="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
     <div  style="font-size:14px; font-weight:bold; color:#990000; text-align:center">产品标题</div>
     <uc1:top ID="Top1" runat="server" />
   <table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr valign="top">
    <td width="220" bgcolor="#EEF2FA">
        <uc2:lxwm ID="Lxwm1" runat="server" />
    </td>
    <td width="760"><table width="100%" height="404" border="0" cellpadding="0" cellspacing="0" id="line">
      <tr>
        <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" style="background:#DEE7F9">
          <tr>
            <td><div id="lat">
                当前位置：首页<span style="color: #333333"> </span>&gt; 
                   
              
                &gt;&gt; <a href="Products.asp">产品中心 </a> > 
    >> </div></td>
          </tr>
        </table>
          <table width="98%" border="0" align="center" cellpadding="5" cellspacing="0">
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><div align="center">作者： 发布日期：
       </div></td>
  </tr>
  <tr>
    <td>
	<div style="margin:10px auto; text-align:center"><a href="#" title="点击放大" target="_blank" class="img"><img src="#" width="243" height="194" /></a></div>
	<div style="font-size:14px; line-height:25px;">产品介绍</div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
          <table width="15%" height="41" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr align="center">
              <td><a href="#"><img src="images/goumai.gif" /></a></td>
              <td><a href="/book/add_book.asp"><img src="images/zx.gif" /></a></td>
            </tr>
          </table>
          <table width="95%" border="0" align="center" cellpadding="10" cellspacing="1" bgcolor="#EEF2FA">
            <tr>
              <td bgcolor="#FFFFFF"><div align="center">
  
                上一个产品： </div></td>
              <td bgcolor="#FFFFFF"><div align="center">下一个产品：</div></td>
            </tr>
          </table>
          </td>
      </tr>
    </table></td>
  </tr>
</table>
  <uc1:foot ID="Foot1" runat="server" />
    </form>
</body>
</html>
