<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddEdit_Product.aspx.cs"  ValidateRequest="false" Inherits="Web.Admin.AddEdit_Product" %>
<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>edit</title>
		<meta content="MicroProduct Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microProduct.com/intellisense/ie5" name="vs_targetSchema">
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
	.style1 { COLOR: #ff0000 }
		</style>
		<script language="javascript">
function tb()
{
	if (document.all("tb_body").style.display=="none")
	{
		document.all("tb_body").style.display="inline";
	}
	else
	{
		document.all("tb_body").style.display="none";
	}
}

function tourl(form1_url){
    location=form1_url;
    for(var i=0;i<document.form1.elements.length;i++){
        document.form1.elements[i].options[0].selected=true
    }
}
		</script>
	</HEAD>
	<body >
		<form id="Form1" method="post" runat="server">		
			<table class="tableBorder" id="table2" height="745" cellSpacing="1" cellPadding="3" align="center"
				border="0">
				<tr>
					<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
						align="left" height="25">
						<p align="center">
                            添加作品</p>
					</th>
				</tr>
				<tr>
					<td  valign="top" class="Forumrow" align="right"  height="715">
					<table id="table5" height="413" cellSpacing="1" cellPadding="3" align="center" 
							bgColor="#e7e7e7" border="0" style="width: 681px">
							
							<tr>
								<td bgColor="#f7f7f7" >
									<table border="0" cellPadding="0" cellSpacing="2" id="table19" height="100%" width="100%">
										<tr>
											<td style="WIDTH: 75px; ">
                                               作品名称：</td>
											<td><asp:textbox id="tb_ProductName" runat="server" Width="160px" ></asp:textbox>
                                                </td>
											
										</tr>
										<tr>
											<td style="WIDTH: 75px; ">
                                                作品类别：</td>
											<td ><asp:dropdownlist id="dw_ProductClass" runat="server"></asp:dropdownlist></td>
											
										</tr>
										
										<tr>
											<td style="WIDTH: 75px; ">
                                                观看次数：</td>
											<td ><asp:textbox id="tb_ReadCount" runat="server"  Text ="0" Width="160px"></asp:textbox></td>
												
										</tr>
										
										<TR>
											<TD style="width: 75px" >
                                                图片路径：</TD>
											<TD colSpan="3" >
											<asp:Panel ID="pan_Edit" runat="server" Width="100%">
                                                <asp:TextBox ID="tb_PicUrl" runat="server" Width="159px"></asp:TextBox><A href="javascript:tb();">[重新/取消上传]</A><br />
                                                <table id="tb_body" style="DISPLAY: none" cellSpacing="0" cellPadding="0" width="99%" border="0">
													<tr>
														<td style="height: 21px;" ><INPUT id="myfileEdit" 
																type="file" size="25" name="myfile" runat="server"></td>
													</tr>
												</table></asp:Panel>												
												<asp:Panel ID="pan_Add" runat="server" Width="100%">
												<table  cellSpacing="0" cellPadding="0" width="99%" border="0">
													<tr>
														<td style="height: 21px"><INPUT id="myfileAdd" 
																type="file" size="25" name="myfile" runat="server"></td>
													</tr>
												</table>
												</asp:Panel>
												</TD>
										</TR>
										<tr>
							<td  bgColor="#f7f7f7">
                             播放地址：</td><td><asp:textbox id="tb_PlayUrl" runat="server" Width="300px"></asp:textbox></td> 
							</tr>
									</table>
								</td>
								<td align="center" bgColor="#f7f7f7" width="150px">
								<img id="img_pic" runat="server" border="0" height="180" src="" width="140" /></td>
							</tr>
							
							
							
							<TR>
								<TD colspan="2" style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; width: 47px;"
									align="center" bgColor="#f7f7f7" height="147">
									<TABLE id="table21" height="147" cellSpacing="0" cellPadding="0" border="0" style="width: 666px">
										<TR>
											<TD style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif;  height: 25px;">
                                                作品简介：</TD>
										</TR>
										<TR>
											<TD style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; "
												vAlign="top" height="122"><FONT face="宋体">&nbsp;
												<FTB:FreeTextBox ID="ftb_Intro" runat="server" ButtonPath="images/ftb/office2003/" width="100%"
                            ImageGalleryPath="../uploadpic/ftb" Language="zh-CN">
                        </FTB:FreeTextBox>
												
                                                </FONT></TD>
                                               
										</TR>
									</TABLE>
                               </TD>
							</TR>
							<tr><td align="center"  colspan="2" style="width: 487px"><asp:Button ID="btn_Ok" runat="server" Text="确认修改" Width="120px" OnClick="btn_Ok_Click" />
							</td></tr>
						</table>
              
						<br>
					</td>
				</tr>
			</table>
			<br>
			<br>
		</form>
	</body>
</HTML>
