<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="Web.Admin.About" %>
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
					<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
						align="left" height="25">
						<p align="center">
                            关于我们&nbsp;</p>
					</th>
				</tr>
				
				
				<tr>
					<td class="forumRowHighlight" style="height: 12px">&nbsp;
                        <asp:GridView ID="GridView1" runat="server" Width="100%"  DataKeyNames ="id" CellPadding ="4" AutoGenerateColumns="False" BackColor="#E7E7E7" BorderColor="#CCCCCC">
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="ID" >
                                    <ControlStyle Width="60px" />
                                </asp:BoundField>
                                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="../About.aspx?id={0}"
                                    DataTextField="AboutType" HeaderText="子项名称" Target="_blank" >
                                    <ControlStyle Width="200px" />
                                </asp:HyperLinkField>                                             
                                <asp:TemplateField HeaderText="操作">
                                <ItemTemplate>
										<a href='AddEdit_About.aspx?Action=Edit&ID=<%#Eval("ID")%>' >
											编辑</a>
										<asp:CheckBox ID="sle" Runat="server" Text="选择"></asp:CheckBox>
								</ItemTemplate></asp:TemplateField>
                            </Columns>
                            <RowStyle HorizontalAlign="Center" BackColor="White" />
                            <HeaderStyle BackColor="#EFEFEF" Font-Size="13px" />                         
                         
                        </asp:GridView>
                    </td></tr>
                    <tr><td align="center" style="height: 27px">
                    <webdiyer:aspnetpager id="AspNetPager1" runat="server" horizontalalign="Center" onpagechanged="AspNetPager1_PageChanged"
        showcustominfosection="Left" width="95%" meta:resourceKey="AspNetPager1" style="font-size:12px" InputBoxStyle="width:19px"
        CustomInfoHTML="一共有<b><font color='red'>%RecordCount%</font></b>条记录 当前页<font color='red'><b>%CurrentPageIndex%/%PageCount%</b></font>   次序 %StartRecordIndex%-%EndRecordIndex%" AlwaysShow="True" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页" CustomInfoStyle="FONT-SIZE: 12px"></webdiyer:aspnetpager>
                    </td></tr>
                    
				<%--<asp:panel id="Panel1" runat="server">--%>
					<TR>
						<TD class="forumRowHighlight" height="12" align="right">
                            &nbsp;&nbsp;
							<asp:Button id="btn_Ok" runat="server" Text="批量删除" Width="84px" OnClick="btn_Ok_Click"  OnClientClick="return confirm('确认要删除吗？');"></asp:Button>
							<asp:literal id="ltl_Msg" runat="server"></asp:literal><TR>
						<TD class="forumRowHighlight" align="center" width="70%" height="60">
                            &nbsp;如非必要，请不要删除ID为1的记录</table>
		</form>
	</BODY>
</HTML>


