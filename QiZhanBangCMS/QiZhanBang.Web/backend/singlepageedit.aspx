<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="singlepageedit.aspx.cs" Inherits="QiZhanBang.Web.backend.singlepageedit" ValidateRequest="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>单页管理</title>
<link href="images/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body { padding:10px }
-->
</style>
    <link rel="stylesheet" href="editor/themes/default/default.css" />
	<link rel="stylesheet" href="editor/plugins/code/prettify.css" />
	<script charset="utf-8" src="editor/kindeditor.js" type="text/javascript"></script>
	<script charset="utf-8" src="editor/lang/zh_CN.js" type="text/javascript"></script>
	<script charset="utf-8" src="editor/plugins/code/prettify.js" type="text/javascript"></script>
	<script type="text/javascript">
		KindEditor.ready(function(K) {
			var editor1 = K.create('#editorcontent', {
				cssPath : 'editor/plugins/code/prettify.css',
				uploadJson : 'editor/upload_json.ashx',
				fileManagerJson : 'editor/file_manager_json.ashx',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						K('form[name=Form1]')[0].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						K('form[name=Form1]')[0].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
</head>
<body>
<form id="Form1" runat="server">
<h3 class="boxtitle">后台管理 &gt;&gt; 产品管理</h3>
<table height="0" border="0" cellpadding="0" cellspacing="1" class="tabBgColor">
<tr>
  <td height="25" background="Images/Top.gif"></td>
</tr>
</table>
  <table width="98%" border="0" align="center" cellpadding="3" cellspacing="1" id="tagContent0">
  <tr>
      <td width="100" align="center" class="tdbg">单页编码：      </td>
      <td  class="tdbg"><asp:TextBox runat="server" ID="txtserialno" CssClass="input" Width="270px" />  唯一的编码，不可修改</td>
    </tr>
	<tr>
      <td width="100" align="center" class="tdbg">单页标题：      </td>
      <td  class="tdbg"><asp:TextBox runat="server" ID="txttitle" CssClass="input" Width="270px" /></td>
    </tr>
   <tr class="tdbg" id="flag3">
      <td align="center">单页内容：</td>
      <td><textarea name="editorcontent" id="editorcontent" style="width:700px;height:200px;visibility:hidden;" runat="server"></textarea></td>
    </tr>
  </table>  
<table width="98%" border="0" align="center" cellpadding="3" cellspacing="1" >
    <tr class="tdbg">
	  <td width="100">&nbsp;</td>
      <td><asp:Button runat="server" CssClass="bnt" Text="保存" ID="btnSave" onclick="btnSave_Click" /> </td>
	  </tr>
  </table>
</form>
</body>
</html>
