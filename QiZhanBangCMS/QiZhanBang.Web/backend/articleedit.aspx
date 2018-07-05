<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="articleedit.aspx.cs" Inherits="QiZhanBang.Web.backend.articleedit" ValidateRequest="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>文章管理</title>
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
<h3 class="boxtitle">后台管理 &gt;&gt; 文章管理</h3>
<table height="0" border="0" cellpadding="0" cellspacing="1" class="tabBgColor">
<tr>
  <td height="25" background="Images/Top.gif"></td>
</tr>
</table>
  <table width="98%" border="0" align="center" cellpadding="3" cellspacing="1" id="tagContent0">
	<tr>
      <td width="100" align="center" class="tdbg">标题：      </td>
      <td  class="tdbg"><asp:TextBox runat="server" ID="txttitle" CssClass="input" Width="270px" />
      <select   name="titlecolor" id="titlecolor" runat="server"> 
      <option value="">标题颜色</option>  
      <option   value="White"   style="color:white;">White</option>   
      <option   value="Black"   style="color:black;">Black</option>   
      <option   value="Red"   style="color:red;">Red</option>   
      <option   value="Yellow"   style="color:yellow;">Yellow</option>   
      <option   value="Pink"   style="color:Pink;">Pink</option>   
      <option   value="Green"   style="color:green;">Green</option>   
      <option   value="Orange"   style="color:Orange;">Orange</option>   
      <option   value="Purple"   style="color:purple;">Purple</option>   
      <option   value="Blue"   style="color:blue;">Blue</option>   
      <option   value="Beige"   style="color:Beige;">Beige</option>   
      <option   value="Brown"   style="color:Brown;">Brown</option>   
      <option   value="Teal"   style="color:teal;">Teal</option>   
      <option   value="Navy"   style="color:navy;">Navy</option>   
      <option   value="Maroon"   style="color:maroon;">Maroon</option>   
      <option   value="LimeGreen"   style="color:LimeGreen;">LimeGreen</option>
      </select>
      
      <asp:CheckBox runat="server" ID="chkIsBold" />加粗 <asp:CheckBox runat="server" ID="chkIsItalic" />斜体
      </td>
    </tr>
    <tr class="tdbg" id="sdcms_pic">
      <td align="center" >缩 略 图：</td>
      <td><asp:TextBox runat="server" ID="txtincludepicpath" CssClass="input" Width="270px" /> <input name="button" type="button" onclick="window.open('upload.aspx?parentobj=txtincludepicpath','上传文件','top=100,left=400,width=450,height=250, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no');" value="上传" />  <span>可以为空</span></td>
    </tr>
	<tr>
      <td  align="center" class="tdbg">属性设置：      </td>
      <td class="tdbg"><asp:DropDownList runat="server" ID="ddlArticleCategory" DataTextField="categoryname" DataValueField="categoryid"></asp:DropDownList> 　<asp:CheckBox runat="server" ID="chkiscommend"  /><label for="t6">推荐</label> <asp:CheckBox runat="server" ID="chkistop" /><label for="t7">置顶</label> <asp:CheckBox runat="server" ID="chkischecked" Checked="true" /><label for="t8">审核</label></td>
    </tr>
    <tr>
      <td align="center" class="tdbg">语言：      </td>
      <td  class="tdbg">
      <asp:DropDownList runat="server" ID="ddlLanguage">
         <asp:ListItem Text="繁体" Value="zh" />
         <asp:ListItem Text="英语" Value="en" />
         <asp:ListItem Text="德语" Value="de" />
      </asp:DropDownList> </td>
    </tr>
	<tr>
      <td align="center" class="tdbg">标签：      </td>
      <td  class="tdbg"><asp:TextBox runat="server" ID="txttags" CssClass="input" Width="270px" />　<span>支持空格、逗号分割</span></td>
    </tr>
    <tr class="tdbg">
      <td align="center">摘  要：      </td>
      <td valign="top"><asp:TextBox runat="server" TextMode="MultiLine" CssClass="inputs" 
              Rows="6" Columns="60" ID="txtsummary" Height="50px" Width="701px" />
          <br />
          如果不填写则自动截取内容部分,不支持HTML,300个字符内</td>
    </tr>
   <tr class="tdbg" id="flag3">
      <td align="center">信息内容：</td>
      <td><textarea name="editorcontent" id="editorcontent" style="width:700px;height:200px;visibility:hidden;" runat="server"></textarea></td>
    </tr>
  </table>  
   <table width="98%" border="0" align="center" cellpadding="3" cellspacing="1" id="tagContent1" class="dis" style="display:none">
	<tr class="tdbg">
      <td align="center" width="100">作　者：      </td>
      <td><asp:TextBox runat="server" ID="txtauthor" CssClass="input" Width="270px" /></td>
    </tr>
	<tr class="tdbg">
      <td align="center" >来　源：      </td>
      <td><asp:TextBox runat="server" ID="txtcopyfrom" CssClass="input" Width="270px" /> <select onchange="$('#txtcopyfrom')[0].value=this.value"><option value="未知">未知</option><option value="原创">原创</option><option value="转载">转载</option></select></td>
    </tr>
	<tr class="tdbg">
      <td align="center">人　气：      </td>
      <td><asp:TextBox runat="server" ID="txthits" CssClass="input" Width="270px" Text="0" /> <span>可自定义数字，最高不超过“999999”</span></td>
    </tr>
    <tr class="tdbg">
      <td align="center">外部连接：</td>
      <td><asp:RadioButton runat="server" ID="rbtislinkno" GroupName="link" /><label for="t2_0">否</label> <asp:RadioButton runat="server" ID="rbtislinkyes" GroupName="link" /><label for="t2_1">是</label></td>
    </tr>
    <tr class="tdbg" id="flag1" style="display:none">
      <td align="center">连接地址：</td>
      <td><asp:TextBox runat="server" ID="txtlinkurl" CssClass="input" Width="270px" /> <span>请填写完整路径 如：http://www.163.com</span></td>
    </tr>
	</table>
<table width="98%" border="0" align="center" cellpadding="3" cellspacing="1" >
    <tr class="tdbg">
	  <td width="100">&nbsp;</td>
      <td><asp:CheckBox runat="server" ID="chkIsSaveRemotePhoto" /><label for="t15">保存远程图片</label>
	  <br><asp:Button runat="server" CssClass="bnt" Text="保存" ID="btnSave" onclick="btnSave_Click" /> </td>
	  </tr>
  </table>
  <script type="text/javascript" language="javascript">
    document.getElementById("rbtislinkyes").onclick = function() 
    { 
        if (this.checked)
        {
           document.getElementById("flag1").style.display = "block" ;
        }
    } ;
    
    document.getElementById("rbtislinkno").onclick = function() 
    { 
        if (this.checked)
        {
           document.getElementById("flag1").style.display = "none" ;
        }
    } ;
    
    if (document.getElementById("rbtislinkyes").checked)
    {
        document.getElementById("rbtislinkyes").click() ;
    }
  </script>
</form>
</body>
</html>
