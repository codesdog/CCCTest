<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="videoedit.aspx.cs" Inherits="QiZhanBang.Web.backend.videoedit" %>
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
<div class="sdcms_notice"><span>管理操作：</span></div>
<br />
<ul id="sdcms_sub_title">
	<li class="sub"><a href="javascript:void(0)" onClick="selectTag('tagContent0',this)">基本设置</a></li>
	
	<li class="unsub"><a href="javascript:void(0)" onClick="selectTag('tagContent1',this)">参数设置</a></li>
	
</ul>
<div style="visibility:hidden;position:absolute;margin:0 0 0 176px;*margin:-27px 0 0 88px;border:1px solid #FCBA72;background:#fff;padding:5px 10px;width:280px;" id="search"><img src="images/close.gif"  style="position:absolute;margin:10px 0 0 242px;cursor:pointer;" onclick="$('#search')[0].style.visibility='hidden'" alt="关闭" />关键字：<input name="keyword" class="input" value="" /> <input type="button" class="bnt01" value="搜索">
</div>
<div id="sdcms_right_b">
  <table width="98%" border="0" align="center" cellpadding="3" cellspacing="1" id="tagContent0">
	<tr>
      <td width="100" align="center" class="tdbg">视频名称：      </td>
      <td  class="tdbg"><asp:TextBox runat="server" ID="txtvideoname" CssClass="input" Width="270px" />
      </td>
    </tr>
    <tr class="tdbg" id="sdcms_pic">
      <td align="center" >缩 略 图：</td>
      <td><asp:TextBox runat="server" ID="txtincludepicpath" CssClass="input" Width="270px" /> <input name="button" type="button" onclick="window.open('upload.aspx?parentobj=txtincludepicpath','上传文件','top=100,left=400,width=450,height=250, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no');" value="上传" />  <span>可以为空</span></td>
    </tr>
	<tr>
      <td  align="center" class="tdbg">视频分类：      </td>
      <td class="tdbg"><asp:DropDownList runat="server" ID="ddlVideoCategory" DataTextField="categoryname" DataValueField="categoryid"></asp:DropDownList></td>
    </tr>
    <tr>
      <td align="center" class="tdbg">主要演员：      </td>
      <td  class="tdbg"><asp:TextBox runat="server" ID="txtactor" CssClass="input" Width="270px" /></td>
    </tr>
    <tr>
      <td align="center" class="tdbg">播放时长：      </td>
      <td  class="tdbg"><asp:TextBox runat="server" ID="txtduration" CssClass="input" Width="270px" /></td>
    </tr>
	<tr>
      <td align="center" class="tdbg">视频标签：      </td>
      <td  class="tdbg"><asp:TextBox runat="server" ID="txttags" CssClass="input" Width="270px" />　<span>支持空格、逗号分割</span></td>
    </tr>
    <tr class="tdbg">
      <td align="center">视频说明：      </td>
      <td valign="top">
          <asp:TextBox runat="server" TextMode="MultiLine" CssClass="inputs" 
              Rows="6" Columns="60" ID="txtdescription" Height="89px" Width="610px" />
      </td>
    </tr>
    <tr class="tdbg">
      <td align="center">视频地址：      </td>
      <td valign="top">
          <asp:TextBox runat="server" TextMode="MultiLine" CssClass="inputs" 
              Rows="6" Columns="60" ID="txtvideos" Height="172px" Width="609px" />
              <br />如是剧集，则每行一条视频。
      </td>
    </tr>
  </table>  
   <table width="98%" border="0" align="center" cellpadding="3" cellspacing="1" id="tagContent1" class="dis">
	<tr class="tdbg">
      <td align="center">人　气：      </td>
      <td><asp:TextBox runat="server" ID="txthits" CssClass="input" Width="270px" Text="0" /> <span>可自定义数字，最高不超过“999999”</span></td>
    </tr>
	</table>
<table width="98%" border="0" align="center" cellpadding="3" cellspacing="1" >
    <tr class="tdbg">
	  <td width="100">&nbsp;</td>
      <td><asp:Button runat="server" CssClass="bnt" Text="保存" ID="btnSave" onclick="btnSave_Click" /> </td>
	  </tr>
  </table>
</div>
</form>
</body>
</html>
