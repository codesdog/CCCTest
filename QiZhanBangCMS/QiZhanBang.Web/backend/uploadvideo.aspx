<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uploadvideo.aspx.cs" Inherits="QiZhanBang.Web.backend.uploadvideo" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网站管理系统</title>
<link href="images/sdcms.css" rel="stylesheet" type="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<script language="javascript" src="images/sdcms.js" type="text/javascript"></script>
</head>
<body>
<form id="Form1" runat="server">
<div class="sdcms_notice"><span>管理操作：</span>视频上传</div>
<br>
<ul id="sdcms_sub_title">
	<li class="sub">视频上传</li>
</ul>
<div id="sdcms_right_b">
  <table width="98%" border="0" align="center" cellpadding="3" cellspacing="1">
    <tr>
      <td width="12%" align="center" class="tdbg">选择文件：      </td>
      <td class="tdbg"><asp:FileUpload ID="FileUpload1" runat="server" Width="95%" CssClass="input" /></td>
    </tr>
    <tr class="tdbg">
	  <td>&nbsp;</td>
      <td><asp:Button runat="server" Text="上 传" ID="btnSave" CssClass="bnt" onclick="btnSave_Click" /></td>
    </tr>
  </table>
</div>
</form>
</body>
</html>