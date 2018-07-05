<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teamedit.aspx.cs" Inherits="QiZhanBang.Web.backend.teamedit" ValidateRequest="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网站管理系统</title>
<link href="images/sdcms.css" rel="stylesheet" type="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<script language="javascript" src="images/sdcms.js" type="text/javascript"></script>
<script type="text/javascript" src="images/jquery.js"></script>
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
<div class="sdcms_notice">米秀团队成员信息管理</div>
<br />
<ul id="sdcms_sub_title">
	<li class="sub"><a href="#">添加/编辑</a></li>
</ul>
<div id="sdcms_right_b">
  <table width="98%" border="0" align="center" cellpadding="3" cellspacing="1">
    <tr class="tdbg">
      <td align="center">名称：      </td>
      <td><asp:TextBox ID="txtleaguername" runat="server" Width="431px" CssClass="input"></asp:TextBox></td>
    </tr>
    <tr class="tdbg">
      <td align="center">图片：      </td>
      <td>
         <asp:TextBox ID="txtincludepic" runat="server" Width="430px" CssClass="input"></asp:TextBox>
        &nbsp; <input name="button" type="button" onclick="window.open('upload.aspx?parentobj=txtincludepic','上传文件','top=100,left=400,width=450,height=250, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no');" value="上传" />
      </td>
    </tr>
	<tr class="tdbg">
      <td align="center">排序：      </td>
      <td><asp:TextBox ID="txtorderno" runat="server" Width="223px" CssClass="input">100</asp:TextBox>&nbsp;数字越小，排越前</td>
    </tr>
    <tr class="tdbg">
      <td align="center">介绍：      </td>
      <td><textarea name="editorcontent" id="editorcontent" class="xheditor" runat="server"></textarea></td>
    </tr>
    <tr class="tdbg">
	  <td>&nbsp;</td>
      <td><asp:Button runat="server" ID="btnSave" CssClass="bnt" Text="保 存" onclick="btnSave_Click" /> </td>
    </tr>
  </table>
</div>
</form>
</body>
</html>
