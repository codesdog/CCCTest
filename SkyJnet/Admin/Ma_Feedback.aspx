<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ma_Feedback.aspx.cs" Inherits="Web.Admin.Feedback" %>
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
		<script type="text/javascript" language="javascript">
		var tdview;
		function $(name){ return document.getElementById(name);} 
		
		function ViewFeedback(id)
		{
		    var trview=$("tr"+id);
		    tdview=$("td"+id);
		    var jobid=id;		         		       
		    if (trview.style.display!="block")
		    {
		        trview.style.display="block";
		        tdview.innerHTML="正在加载，请稍候……（本功能尚未完成）";
		        
		    
		    }
		    else
		    {
		        trview.style.display="none";
		    }
		    
		}
		function ShowFeedback(result)
		{
		   tdhello.innerHTML="sehelll";
		}
		
		
		
		
		</script>
	</HEAD>
	<BODY>

		<form id="Form1" method="post" runat="server">
			<table class="tableBorder" id="table2" height="127" cellSpacing="1" cellPadding="3" align="center"
				border="0">
				<tr>
					<th colspan="6" id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
						align="left" height="25">
						<p align="center">意见反馈 </p>
					</th>
				</tr>
				
				
					<TR>
						<TD class="Forumrow" align="center" width="5%" style="height: 25px"><STRONG>ID</STRONG></TD>
						<TD width="25%" align="center" class="Forumrow" style="height: 25px"><STRONG>公司名称</STRONG></TD>
						<TD width="30%" align="center" class="Forumrow" style="height: 25px"><STRONG>留言标题</STRONG></TD>						
						<TD class="Forumrow" align="center" width="20%" style="height: 25px"><STRONG>留言时间</STRONG></TD>
						<TD class="Forumrow" align="center" width="10%" style="height: 25px"><STRONG>查看</STRONG></TD>
						<TD class="Forumrow" align="center" width="10%" style="height: 25px"><STRONG>删除</STRONG></TD>
					</TR>
					<asp:Repeater id="rp_feedback" runat="server">
						<ItemTemplate>
							<tr>
								<td  width="10%" height="25" align="center"><%#Eval("ID")%></td>
								<td height="30" align="center"><%#Eval("corpname")%></td>
								<td height="30" align="center"><%#Eval("topic")%></td>								
								<td  width="10%" height="25"><%#Eval("thedate")%></td>
								<td  width="10%" height="25" align="center"><a href="javascript:void(0)" onclick="ViewFeedback('<%#Eval("id")%>')">查看</a></td>
								<td width="10%" height="25" align="center"><a onclick="return confirm('确定要删除吗？');" href='Ma_FeedBack.aspx?Action=Delete&ID=<%#Eval("id")%>'><font color="#ff0000">删除</font></a></td>
							</tr>
							<%#panview(Eval("id").ToString()) %>
						</ItemTemplate>
					</asp:Repeater>
                   
                    <tr><td  colspan="6" align="center" style="height: 27px">
                    <webdiyer:aspnetpager id="AspNetPager1" runat="server" horizontalalign="Center" onpagechanged="AspNetPager1_PageChanged"
        showcustominfosection="Left" width="95%" meta:resourceKey="AspNetPager1" style="font-size:14px" InputBoxStyle="width:19px"
        CustomInfoHTML="一共有<b><font color='red'>%RecordCount%</font></b>条记录 当前页<font color='red'><b>%CurrentPageIndex%/%PageCount%</b></font>   次序 %StartRecordIndex%-%EndRecordIndex%" AlwaysShow="True" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页" CustomInfoStyle="FONT-SIZE: 12px"></webdiyer:aspnetpager>
                    </td></tr>
                    
				<%--<asp:panel id="Panel1" runat="server">--%>
					<TR>
						<TD id="tdhello" colspan="6" class="forumRowHighlight" align="center" width="70%" height="60">
                            </td></tr></table>
		</form>
	</BODY>
</HTML>

