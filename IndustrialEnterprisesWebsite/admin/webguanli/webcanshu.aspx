<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webcanshu.aspx.cs" Inherits="Webwangzhan.admin.webguanli.webcanshu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>网站参数设置</title>
<link href="../CSSStype/main1.css" rel="stylesheet" type="text/css" />
<link href="../CSSStype/main.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	background-color: #;
}
-->

</style>
</head>
<body>
    <form id="form1" runat="server">
     <table width="1000" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="this_title">网站参数设置</td>
    <td class="control_btns">&nbsp;</td>
  </tr>
</table>
<table width="1000" border="0" cellspacing="0" cellpadding="0" class="free_table">
  <tr>
  <td  align="center">公司名称：<asp:TextBox ID="gmingcheng" Width="300" runat="server" class="input_style_001"></asp:TextBox></td>
  </tr>
    
     <tr>
  <td  align="center">&nbsp;&nbsp;联系人：<asp:TextBox ID="TextBox1" Width="300" runat="server" class="input_style_001"></asp:TextBox></td>
  </tr>
     <tr>
  <td  align="center">&nbsp;&nbsp; 手机号：<asp:TextBox ID="TextBox2" Width="300" runat="server" class="input_style_001"></asp:TextBox></td>
  </tr>
     <tr>
  <td  align="center">公司地址：<asp:TextBox ID="TextBox3" Width="300" runat="server" class="input_style_001"></asp:TextBox></td>
  </tr>
    <tr>
  <td class="border-bottom" align="center">   
      <asp:Button ID="tijiao" runat="server" Text="确认，提交" class="common_btn" 
          onclick="tijiao_Click"/>
      </td>
  </tr>
 </table>
    </form>
</body>
</html>
