<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_ChangePwd.aspx.cs" Inherits="Web.Admin.ChangePwd" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>film</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="Admin.css" type="text/css" rel="stylesheet">
	</HEAD>
	<BODY>

		<form id="Form1" method="post" runat="server">
			<table class="tableBorder" id="table2" height="127" cellSpacing="1" cellPadding="3" align="center"
				border="0">
				<tr>
					<th  colspan="2" id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
						align="left" height="25">
						<p align="center">
                            管理员密码变更</p>
					</th>
				</tr>
				
				
				<tr>
					<td width="80" class="forumRowHighlight" style="height: 12px">&nbsp;
                       原密码：</td><td class="forumRowHighlight"><asp:TextBox ID="tb_OldPwd" runat="server" TextMode="password"></asp:TextBox> 
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_NewPwd"
                               ErrorMessage="原密码不能为空"></asp:RequiredFieldValidator>
                           &nbsp;&nbsp;
                       </td></tr>
                    <tr>
					<td class="forumRowHighlight" style="height: 12px">&nbsp;
                       新密码：</td><td class="forumRowHighlight"><asp:TextBox ID="tb_NewPwd" runat="server" TextMode="password"></asp:TextBox> 
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_NewPwd"
                               ErrorMessage="必填"></asp:RequiredFieldValidator></td></tr>
                    <tr>
					<td class="forumRowHighlight" style="height: 12px">&nbsp;
                       确认新密码：</td><td class="forumRowHighlight"><asp:TextBox ID="tb_ConNewPwd" runat="server" TextMode="password"></asp:TextBox> 
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_ConNewPwd"
                               ErrorMessage="必填"></asp:RequiredFieldValidator>
                           &nbsp;&nbsp;
                           <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tb_NewPwd"
                               ControlToValidate="tb_ConNewPwd" ErrorMessage="两次输入密码不一样"></asp:CompareValidator></td></tr>
					<TR>
						<TD  colspan="2" class="forumRowHighlight" height="12" >
                            &nbsp;&nbsp;
							<asp:Button id="btn_Ok" runat="server" Text="确定修改" Width="84px" OnClick="btn_Ok_Click" ></asp:Button>
							<asp:literal id="ltl_Msg" runat="server"></asp:literal><TR>
						
                           </table>
		</form>
	</BODY>
</HTML>


