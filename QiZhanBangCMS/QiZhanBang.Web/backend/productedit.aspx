<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productedit.aspx.cs" Inherits="QiZhanBang.Web.backend.productedit" ValidateRequest="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>产品管理</title>
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
      <td width="100" align="center" class="tdbg">产品名称：      </td>
      <td  class="tdbg"><asp:TextBox runat="server" ID="txtproductname" CssClass="input" Width="270px" />
      </td>
    </tr>
    <tr style="display:none">
      <td align="center" class="tdbg">语言：      </td>
      <td  class="tdbg">
      <asp:DropDownList runat="server" ID="ddlLanguage">
         <asp:ListItem Text="繁体" Value="zh" />
         <asp:ListItem Text="英语" Value="en" />
         <asp:ListItem Text="德语" Value="de" />
      </asp:DropDownList> </td>
    </tr>
    <tr class="tdbg" id="sdcms_pic">
      <td align="center" >产品图片：</td>
      <td><asp:TextBox runat="server" ID="txtincludepicpath" CssClass="input" Width="270px" /> <input name="button" type="button" onclick="window.open('upload.aspx?parentobj=txtincludepicpath','上传文件','top=100,left=400,width=450,height=250, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no');" value="上传" />  <span>可以为空</span></td>
    </tr>
	<tr>
      <td  align="center" class="tdbg">分类属性：      </td>
      <td class="tdbg"><asp:DropDownList runat="server" ID="ddlProductCategory" DataTextField="categoryname" DataValueField="categoryid"></asp:DropDownList> <asp:CheckBox runat="server" ID="chkiscommend"  /><label for="t6">推荐产品</label></td>
    </tr>
    <tr>
      <td align="center" class="tdbg">产品编号：      </td>
      <td  class="tdbg"><asp:TextBox runat="server" ID="txtproductcode" CssClass="input" Width="270px" /></td>
    </tr>
    <tr>
      <td align="center" class="tdbg">产品单价：      </td>
      <td  class="tdbg"><asp:TextBox runat="server" ID="txtprice" CssClass="input" Width="270px" /></td>
    </tr>
	<tr>
      <td align="center" class="tdbg">已卖数量：      </td>
      <td  class="tdbg"><asp:TextBox runat="server" ID="txtsalecount" CssClass="input" Width="270px" />　<span>可虚构数字</span></td>
    </tr>
    <tr class="tdbg">
      <td align="center">产品说明：      </td>
      <td valign="top">
          <asp:TextBox runat="server" TextMode="MultiLine" CssClass="inputs" 
              Rows="6" Columns="60" ID="txtdescription" Height="89px" Width="610px" />
      </td>
    </tr>
    <tr class="tdbg">
      <td align="center">产品规格：      </td>
      <td valign="top">
          <asp:TextBox runat="server" TextMode="MultiLine" CssClass="inputs" 
              Rows="6" Columns="60" ID="txtspecification" Height="172px" Width="609px" />
      </td>
    </tr>
  </table>  
   <table width="98%" border="0" align="center" cellpadding="3" cellspacing="1" id="tagContent1" class="dis">
	<tr class="tdbg">
      <td align="center">浏览量：      </td>
      <td><asp:TextBox runat="server" ID="txthits" CssClass="input" Width="270px" Text="0" /> <span>可自定义数字，最高不超过“999999”</span></td>
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