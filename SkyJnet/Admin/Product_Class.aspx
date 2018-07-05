<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Product_Class.aspx.cs" Inherits="Web.Admin.Product_Class" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>film_from</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<link href="Admin.css" rel="stylesheet" type="text/css">
	</HEAD>
	<body >
		<form id="Form1" method="post" runat="server">
			<div align="center">
				<table class="tableBorder" id="table2" height="151" cellSpacing="1" cellPadding="3" border="0"
					style="WIDTH: 100%; HEIGHT: 129px">
					<tr>
						<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
							align="left" colSpan="6" height="25">
                            展示类型管理<a href="Product_Class.aspx" ><font color="white"><b>[添加]</b></font></a></th>
					</tr>
					<tr>
						<TD class="forumRowHighlight" colSpan="6" height="30" valign="middle">
                            请慎重修改相关信息,如果没必要<span class="STYLE1">不要删除</span></TD>
					</tr>
					<tr>
						<TD class="forumRowHighlight" colSpan="6" height="17" valign="middle"><table border="0" width="100%" id="table5" cellspacing="3" cellpadding="0">
								
								<tr>
									<TD style="height: 21px">
                                        类别名称：
									</TD>
									<TD style="height: 21px"><asp:TextBox ID="tb_ClassName" runat="server" Width="317px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_ClassName"
                                            ErrorMessage="不能为空" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </TD>
								</tr>
								
								<tr>
									<TD >
                                        父　　类：
									</TD>
									<TD >
                                        <asp:DropDownList ID="dw_PClass" runat="server" Width="187px">
                                        </asp:DropDownList></TD>
								</tr>
								
								<tr>
									<TD>&nbsp;</TD>
									<TD><asp:Button ID="btn_Ok" runat="server" Text="添加" Width="44px" Height="23px" OnClick="btn_Ok_Click"></asp:Button></TD>
								</tr>
							</table>
						</TD>
					</tr>
					<TR>
						<TD class="Forumrow" align="center" width="10%" style="height: 25px"><STRONG>ID</STRONG></TD>
						<TD width="25%" align="center" class="Forumrow" style="height: 25px"><STRONG>类别名称</STRONG></TD>						
						<TD class="Forumrow" align="center" width="20%" style="height: 25px"><STRONG>所属类别</STRONG></TD>
						<TD class="Forumrow" align="center" width="10%" style="height: 25px"><STRONG>修改</STRONG></TD>
						<TD class="Forumrow" align="center" width="10%" style="height: 25px"><STRONG>删除</STRONG></TD>
					</TR>
					<asp:Repeater id="Repeater1" runat="server">
						<ItemTemplate>
							<tr>
								<td  width="10%" height="25" align="center"><%#Eval("ID")%></td>
								<td height="25" align="center"><%#Eval("ClassName")%></td>
								
								<td  width="20%" height="25"><%#GetPClass(Eval("PID").ToString())%></td>
								<td  width="10%" height="25" align="center"><a href='Product_Class.aspx?Action=Edit&ID=<%#Eval("id")%>'>修改</a></td>
								<td width="10%" height="25" align="center"><a onclick="return confirm('确定要删除吗？');" href='Product_Class.aspx?Action=Delete&ID=<%#Eval("id")%>'><font color="#ff0000">删除</font></a></td>
							</tr>
						</ItemTemplate>
					</asp:Repeater>
				</table>
			</div>
		</form>
	</body>
</HTML>
