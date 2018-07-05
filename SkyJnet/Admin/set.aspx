<%@ Page Language="C#" AutoEventWireup="true" CodeFile="set.aspx.cs" Inherits="Web.Admin.set" %>
<%@ Register TagPrefix="ftb" Namespace="FreeTextBoxControls" Assembly="FreeTextBox" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>set</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<style type="text/css">BODY { MARGIN-TOP: 0px; SCROLLBAR-FACE-COLOR: #799ae1; FONT-SIZE: 12px; BACKGROUND: #cad7f7; SCROLLBAR-HIGHLIGHT-COLOR: #799ae1; SCROLLBAR-SHADOW-COLOR: #799ae1; SCROLLBAR-3DLIGHT-COLOR: #799ae1; SCROLLBAR-ARROW-COLOR: #ffffff; SCROLLBAR-TRACK-COLOR: #aabfec; SCROLLBAR-DARKSHADOW-COLOR: #799ae1 }
	TD { FONT-SIZE: 12px }
	INPUT { BORDER-TOP-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 12px; BORDER-BOTTOM-WIDTH: 1px; BORDER-RIGHT-WIDTH: 1px }
	TEXTAREA { BORDER-TOP-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 12px; BORDER-BOTTOM-WIDTH: 1px; BORDER-RIGHT-WIDTH: 1px }
	SELECT { BORDER-TOP-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 12px; BORDER-BOTTOM-WIDTH: 1px; BORDER-RIGHT-WIDTH: 1px }
	SPAN { FONT-SIZE: 12px; POSITION: static }
	A { COLOR: #000000; TEXT-DECORATION: none }
	A:hover { COLOR: #428eff; TEXT-DECORATION: underline }
	A.highlight { COLOR: red; TEXT-DECORATION: none }
	A.highlight:hover { COLOR: red }
	A.thisclass { FONT-WEIGHT: bold; TEXT-DECORATION: none }
	A.thisclass:hover { FONT-WEIGHT: bold }
	A.navlink { COLOR: #000000; TEXT-DECORATION: none }
	A.navlink:hover { COLOR: #003399; TEXT-DECORATION: none }
	.twidth { WIDTH: 760px }
	.content { FONT-SIZE: 14px; MARGIN: 5px 20px; LINE-HEIGHT: 140%; FONT-FAMILY: Tahoma,宋体 }
	.aTitle { FONT-WEIGHT: bold; FONT-SIZE: 15px }
	TD.forumHeaderBackgroundAlternate { BACKGROUND-IMAGE: url(images/admin_top_bg.gif); COLOR: #000000; BACKGROUND-COLOR: #799ae1 }
	#TableTitleLink A:link { COLOR: #ffffff; TEXT-DECORATION: none }
	#TableTitleLink A:visited { COLOR: #ffffff; TEXT-DECORATION: none }
	#TableTitleLink A:active { COLOR: #ffffff; TEXT-DECORATION: none }
	#TableTitleLink A:hover { COLOR: #ffffff; TEXT-DECORATION: underline }
	TD.forumRow { PADDING-RIGHT: 3px; PADDING-LEFT: 3px; BACKGROUND: #f1f3f5; PADDING-BOTTOM: 3px; PADDING-TOP: 3px }
	TH { FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa }
	TD.bodytitle { BACKGROUND-IMAGE: url(images/admin_bg_2.gif) }
	TD.bodytitle1 { BACKGROUND-IMAGE: url(images/admin_bg_3.gif) }
	TD.tablebody1 { PADDING-RIGHT: 3px; PADDING-LEFT: 3px; BACKGROUND: #bebbdb; PADDING-BOTTOM: 3px; PADDING-TOP: 3px }
	TD.forumRowHighlight { PADDING-RIGHT: 3px; PADDING-LEFT: 3px; BACKGROUND: #e4edf9; PADDING-BOTTOM: 3px; PADDING-TOP: 3px }
	.tableBorder { BORDER-RIGHT: #183789 1px solid; BORDER-TOP: #183789 1px solid; BORDER-LEFT: #183789 1px solid; WIDTH: 98%; BORDER-BOTTOM: #183789 1px solid; BACKGROUND-COLOR: #ffffff }
	.tableBorder1 { WIDTH: 98% }
	.helplink { FONT: 10px verdana,arial,helvetica,sans-serif; CURSOR: help; TEXT-DECORATION: none }
	.copyright { PADDING-RIGHT: 1px; BORDER-TOP: #6595d6 1px dashed; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; FONT: 11px verdana,arial,helvetica,sans-serif; COLOR: #4455aa; PADDING-TOP: 1px; TEXT-DECORATION: none }
	.menuskin { BORDER-RIGHT: #666666 1px solid; BORDER-TOP: #666666 1px solid; BACKGROUND-IMAGE: url(../skins/default/dvmenubg3.gif); VISIBILITY: hidden; FONT: 12px Verdana; BORDER-LEFT: #666666 1px solid; BORDER-BOTTOM: #666666 1px solid; BACKGROUND-REPEAT: repeat-y; POSITION: absolute; BACKGROUND-COLOR: #efefef }
	.menuskin A { PADDING-RIGHT: 10px; PADDING-LEFT: 25px; BEHAVIOR: url(inc/noline.htc); COLOR: black; TEXT-DECORATION: none }
	#mouseoverstyle { BORDER-RIGHT: #597db5 1px solid; PADDING-RIGHT: 0px; BORDER-TOP: #597db5 1px solid; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 2px; BORDER-LEFT: #597db5 1px solid; PADDING-TOP: 0px; BORDER-BOTTOM: #597db5 1px solid; BACKGROUND-COLOR: #c9d5e7 }
	#mouseoverstyle A { COLOR: black }
	.menuitems { PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; MARGIN: 2px; WORD-BREAK: keep-all; PADDING-TOP: 1px }
		</style>
	</HEAD>
	<body >
		<form id="Form1" method="post" runat="server">
			<br>
			<table class="tableBorder" id="table1" cellSpacing="1" cellPadding="3" align="center" border="0">
				<tr>
					<th class="tableHeaderText" width="100%" colSpan="3" height="25">
                        网站基本设置
					</th>
				</tr>
				<tr>
					<td class="forumRow" colSpan="2"></td>
				</tr>
				
			</table>
			<br>
			<table class="tableBorder" id="table2" height="253" cellSpacing="1" cellPadding="3" align="center"
				border="0">
				<tr>
					<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
						align="left" colSpan="2" height="25">
						<b>基本信息设置<a name="Set1"></a></b></th></tr>
				<tr>
					<td class="Forumrow" style="HEIGHT: 26px" width="50%"><u>网站名称</u></td>
					<td class="Forumrow" style="HEIGHT: 26px" width="50%"><asp:textbox id="tb_WebSiteName" runat="server" Width="280px"></asp:textbox></td>
				</tr>
				<TR>
					<TD class="forumRowHighlight" style="HEIGHT: 26px" width="50%"><U>网站<U>的访问地址</U></U></TD>
					<TD class="forumRowHighlight" style="HEIGHT: 26px" width="50%"><FONT style="BACKGROUND-COLOR: #ffffff" face="宋体"><asp:textbox id="tb_WebSiteUrl" runat="server" Width="280px"></asp:textbox><BR>
						</FONT>
					</TD>
				</TR>				
						
				<TR>
					<TD class="forumRowHighlight" width="50%"><FONT face="宋体"><FONT style="BACKGROUND-COLOR: #e4edf9"><U>站点关键字</U><BR>
								将被搜索引擎用来搜索您网站的关键内容<BR>
								每个关键字用“|”号分隔</FONT></FONT></TD>
					<TD class="forumRowHighlight" width="50%"><FONT face="宋体"><asp:textbox id="tb_WebKey" runat="server" Width="280px"></asp:textbox></FONT></TD>
				</TR>
				<TR>
					<TD class="forumRow" width="50%"><U><FONT face="宋体">站点描述</FONT></U><BR>
						将被搜索引擎用来说明您网站的主要内容</TD>
					<TD class="forumRow" width="50%"><FONT face="宋体"><asp:textbox id="tb_WebDes" runat="server" Width="280px"></asp:textbox></FONT></TD>
				</TR>
				<TR>
					<TD class="forumRowHighlight" width="50%"><U>网站底部版权信息</U></TD>
					<TD class="forumRowHighlight" width="50%"><FONT face="宋体"><asp:textbox id="tb_Copyright" runat="server" Width="368px" Height="108px" TextMode="MultiLine"></asp:textbox></FONT></TD>
				</TR>
				<TR>
					<TD class="forumRowHighlight" width="50%"><U>联系方式</U><br />请按此方式填写：地址,邮编,电话,传真,Email(用逗号间隔)</TD>
					<TD class="forumRowHighlight" width="50%"><FONT face="宋体"><asp:textbox id="tb_Contact" runat="server" Width="368px" Height="108px" TextMode="MultiLine"></asp:textbox></FONT></TD>
				</TR>
				<TR>
					<TD class="forumRowHighlight" width="50%"><U>公司简介</U><br />(用于首页调用，不要加HTML标记)</TD>
					<TD class="forumRowHighlight" width="50%"><FONT face="宋体"><asp:textbox id="tb_CorpIntro" runat="server" Width="368px" Height="108px" TextMode="MultiLine"></asp:textbox></FONT></TD>
				</TR>
				<tr>
					<td colspan="2" align="center" class="forumRowHighlight">　</td>
				</tr>
				<tr>
					<td colspan="2" align="center" class="forumRowHighlight"><asp:Button ID="Button1" runat="server" Text="确认修改" OnClick="Button1_Click"></asp:Button></td>
				</tr>
			</table>
			
			<br>
		</form>
	</body>
</HTML>
