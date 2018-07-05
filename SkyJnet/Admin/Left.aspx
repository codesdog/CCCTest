<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Left.aspx.cs" Inherits="Web.Admin.Left" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>left</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<STYLE type="text/css">BODY { SCROLLBAR-FACE-COLOR: #799ae1; BACKGROUND: #799ae1; MARGIN: 0px; FONT: 12px 宋体; SCROLLBAR-HIGHLIGHT-COLOR: #799ae1; SCROLLBAR-SHADOW-COLOR: #799ae1; SCROLLBAR-3DLIGHT-COLOR: #799ae1; SCROLLBAR-ARROW-COLOR: #ffffff; SCROLLBAR-TRACK-COLOR: #aabfec; SCROLLBAR-DARKSHADOW-COLOR: #799ae1 }
	TABLE { BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px }
	TD { FONT: 12px 宋体 }
	IMG { BORDER-RIGHT: 0px; BORDER-TOP: 0px; VERTICAL-ALIGN: bottom; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px }
	A { FONT: 12px 宋体; COLOR: #000000; TEXT-DECORATION: none }
	A:hover { COLOR: #428eff; TEXT-DECORATION: underline }
	.sec_menu { BORDER-RIGHT: white 1px solid; BACKGROUND: #d6dff7; OVERFLOW: hidden; BORDER-LEFT: white 1px solid; BORDER-BOTTOM: white 1px solid }
	.menu_title { }
	.menu_title SPAN { FONT-WEIGHT: bold; LEFT: 8px; COLOR: #215dc6; POSITION: relative; TOP: 2px }
	.menu_title2 { }
	.menu_title2 SPAN { FONT-WEIGHT: bold; LEFT: 8px; COLOR: #428eff; POSITION: relative; TOP: 2px }
		</STYLE>
		<SCRIPT language="javascript1.2">
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
}
}
		</SCRIPT>
	</HEAD>
	<body leftMargin="0" topMargin="0" >
		<form id="Form1" method="post" runat="server">
			<table width="100%" cellpadding="0" cellspacing="0" border="0" align="left">
				<TBODY>
					<tr>
						<td valign="top">
							<table cellpadding="0" cellspacing="0" width="158" align="center">
								<tr>
									<td height="42" valign="bottom">
										<img align="absmiddle" src="images/title.gif" width="158" height="38">
									</td>
								</tr>
							</table>
							<table cellpadding="0" cellspacing="0" width="158" align="center">
								<tr>
									<td height="25" class="menu_title" onMouseOver="this.className='menu_title2';" onMouseOut="this.className='menu_title';"
										background="images/title_bg_quit.gif">
										<span><a href="main.html" target="main"><b>管理首页</b></a> | <a href="login.aspx?action=quit" target="_top">
												<b>退出</b></a></span>
									</td>
								</tr>
							</table>
							&nbsp;
							<table cellpadding="0" cellspacing="0" width="158" align="center">
								<tr>
									<td height="25" class="menu_title" onMouseOver="this.className='menu_title2';" onMouseOut="this.className='menu_title';"
										background="images/admin_left_1.gif" id="menuTitle1" onClick="showsubmenu(0)">
										<span>常规管理</span>
									</td>
								</tr>
								<tr>
									<td id='submenu0'><div class="sec_menu" style="WIDTH:158px"><table cellpadding="0" cellspacing="0" align="center" width="150">
												<TBODY>
													<tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td height="20"><img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a href="set.aspx" target="main">基本设置</a> | <a href="FriendUrl.aspx" target="main">友情链接</a>
															</td>
													</tr>
													<%--
													<tr>
														<td style="height: 20px"><img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0">
															</td>
													</tr>--%>
													
													</TBODY>
											</table>
										</div>
										<div style="WIDTH:158px">
											<table cellpadding="0" cellspacing="0" align="center" width="135">
												<tr>
													<td height="10"></td>
												</tr>
											</table>
										</div>
									</td>
								</tr>
							</table>
							<table cellpadding="0" cellspacing="0" width="158" align="center">
								<tr>
									<td height="25" class="menu_title" onMouseOver="this.className='menu_title2';" onMouseOut="this.className='menu_title';"
										background="images/admin_left_2.gif" id="Td1" onClick="showsubmenu(1)">
										<span>新闻中心</span>
									</td>
								</tr>
								<tr>
									<td id='submenu1'><div class="sec_menu" style="WIDTH:158px"><table cellpadding="0" cellspacing="0" align="center" width="150">
												<TBODY>
													<tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td height="20"><img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a href="AddEdit_News.aspx" target="main">添加新闻</a> | <a href="Ma_News.aspx" target="main">管理新闻</a></td>
													</tr>
													<%--<tr>
													  <td height="20"><img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"> </td>
												  </tr>	--%>
													</TBODY>
											</table>
										</div>
										<div style="WIDTH:158px">
											<table cellpadding="0" cellspacing="0" align="center" width="135">
												<tr>
													<td height="10"></td>
												</tr>
											</table>
										</div>
									</td>
								</tr>
							</table>
							<table cellpadding="0" cellspacing="0" width="158" align="center">
								<tr>
									<td height="25" class="menu_title" onMouseOver="this.className='menu_title2';" onMouseOut="this.className='menu_title';"
										background="images/admin_left_5.gif" id="Td2" onClick="showsubmenu(2)">
										<span>作品展示</span>
									</td>
								</tr>
								<tr>
									<td id='submenu2'><div class="sec_menu" style="WIDTH:158px"><table cellpadding="0" cellspacing="0" align="center" width="150">
												<TBODY>
													<tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td height="20"><img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a href="Product_Class.aspx" target="main">分类管理</a> | <a href="Ma_Product.aspx" target="main">作品管理</a> </td>
													</tr>
													
													<tr>
														<td height="20"><img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a href="AddEdit_Product.aspx" target="main">添加作品</a> | 设想中...</td>
													</tr>
													
													</TBODY>
											</table>
										</div>
										<div style="WIDTH:158px">
											<table cellpadding="0" cellspacing="0" align="center" width="135">
												<tr>
													<td height="10"></td>
												</tr>
											</table>
										</div>
									</td>
								</tr>
							</table>	
							<table cellpadding="0" cellspacing="0" width="158" align="center">
								<tr>
									<td height="25" class="menu_title" onMouseOver="this.className='menu_title2';" onMouseOut="this.className='menu_title';"
										background="images/admin_left_5.gif" id="Td3" onClick="showsubmenu(3)">
										<span>人才招聘</span>
									</td>
								</tr>
								<tr>
									<td id='submenu3'><div class="sec_menu" style="WIDTH:158px"><table cellpadding="0" cellspacing="0" align="center" width="150">
												<TBODY>
													<tr>
														<td height="5"></td>
													</tr>
													
													<tr>
														<td height="20"><img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a href="Ma_Jobs.aspx" target="main">招聘列表</a> | <a href="AddEdit_Jobs.aspx" target="main">添加招聘</a> </td>
													</tr>
													<%--<tr>
														<td height="20"><img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"></td>
													</tr>--%>
													
													</TBODY>
											</table>
										</div>
										<div style="WIDTH:158px">
											<table cellpadding="0" cellspacing="0" align="center" width="135">
												<tr>
													<td height="10"></td>
												</tr>
											</table>
										</div>
									</td>
								</tr>
							</table>					
                            <table cellpadding="0" cellspacing="0" width="158" align="center">
								<tr>
									<td height="25" class="menu_title" onMouseOver="this.className='menu_title2';" onMouseOut="this.className='menu_title';"
										background="images/admin_left_5.gif" id="Td2" onClick="showsubmenu(4)">
										<span>关于我们</span>
									</td>
								</tr>
								<tr>
									<td id='submenu4'><div class="sec_menu" style="WIDTH:158px"><table cellpadding="0" cellspacing="0" align="center" width="150">
												<TBODY>
													<tr>
														<td height="5"></td>
													</tr>
													
													<tr>
														<td height="20"><img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a href="About.aspx" target="main">关于我们</a> | <a href="AddEdit_About.aspx" target="main">添加新项</a> </td>
													</tr>
													<%--<tr>
														<td height="20"><img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"></td>
													</tr>--%>
													
													</TBODY>
											</table>
										</div>
										<div style="WIDTH:158px">
											<table cellpadding="0" cellspacing="0" align="center" width="135">
												<tr>
													<td height="10"></td>
												</tr>
											</table>
										</div>
									</td>
								</tr>
							</table>	
		                   	<table cellpadding="0" cellspacing="0" width="158" align="center">
								<tr>
									<td height="25" class="menu_title" onMouseOver="this.className='menu_title2';" onMouseOut="this.className='menu_title';"
										background="images/admin_left_5.gif" id="Td5" onClick="showsubmenu(6)">
										<span>其它管理</span>
									</td>
								</tr>
								<tr>
									<td id='submenu6'><div class="sec_menu" style="WIDTH:158px"><table cellpadding="0" cellspacing="0" align="center" width="150">
												<TBODY>
													<tr>
														<td height="5"></td>
													</tr>
													
													<tr>
														<td height="20"><img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a href="Admin_ChangePwd.aspx" target="main">管理员密码变更</a></td>
													</tr>
													<tr>
														<td height="20"><img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a href="Ma_Feedback.aspx" target="main">客户留言管理</a></td>
													</tr>
													<tr>
														<td height="20"><img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0">上传图片清理</td>
													</tr>
													
													</TBODY>
											</table>
										</div>
										<div style="WIDTH:158px">
											<table cellpadding="0" cellspacing="0" align="center" width="135">
												<tr>
													<td height="10"></td>
												</tr>
											</table>
										</div>
									</td>
								</tr>
							</table>					

							<table cellpadding="0" cellspacing="0" width="158" align="center">
								<tr>
									<td height="25" class="menu_title" onMouseOver="this.className='menu_title2';" onMouseOut="this.className='menu_title';"
										background="images/admin_left_9.gif" id="Td4">
										<span>版权信息</span>
									</td>
								</tr>
								<tr>
									<td>
										<div class="sec_menu" style="WIDTH:158px">
											<table cellpadding="0" cellspacing="0" align="center" width="135">
												<tr>
													<td height="20">
														<br>
													<a href="http://www.skyj.Net/" target="_blank">download from Www.Skyj.Net</a>

													</td>
												</tr>
											</table>
										</div>
									</td>
								</tr>
							</table>
			&nbsp;
			</td>
			</tr>
			</TBODY>
			</table>
		</form>
	</body>
</HTML>
