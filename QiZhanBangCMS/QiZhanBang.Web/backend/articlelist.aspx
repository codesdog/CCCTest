<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="articlelist.aspx.cs" Inherits="QiZhanBang.Web.backend.articlelist" %>

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
<script language="javascript" type="text/javascript">
function SelectAll(theBox)
{
    var elm=document.Form1.elements;
    for(i=0;i<elm.length;i++)
    if(elm[i].type=="checkbox" && elm[i].id!=theBox.id)
    {
        elm[i].checked=theBox.checked ;
    }
}

function CheckDeleteHandle(btn)
{
    var elm=document.Form1.elements;
    var flag = false ;
    for(i=0;i<elm.length;i++) 
    if(elm[i].type=="checkbox")
    {
        if (elm[i].checked)
        {
          flag = true ;
          break ;
        }
    }
    
    if (flag)
    { 
        return confirm('是否要删除选择的文章？') ;
    }
    else
    {
        alert("你没有选择任何文章，请选择！") ;
        return false ;
    }
}
</script>
</head>
<body>
<form id="Form1" runat="server">
<h3 class="boxtitle">后台管理 &gt;&gt; 文章管理</h3>
<table height="0" border="0" cellpadding="0" cellspacing="1" class="tabBgColor">
<tr align="center">
  <td height="25" background="Images/Top.gif">
  文章分类：
  <asp:DropDownList ID="ddlSearchCategorys" runat="server" DataTextField="categoryname" DataValueField="categoryid" />
  关键词：<asp:TextBox runat="server" ID="txtSearchKeyword" />
  <asp:Button runat="server" ID="btnSearch" Text="搜索" onclick="btnSearch_Click" />
  </td>
</tr>
<tr>
  <td height="25" background="Images/Top.gif"><a class="hand" href="articleedit.aspx?action=add&channelid=<%= ChannelId %>">添加资讯</a></td>
</tr>
</table>
<asp:DataGrid runat="server" ID="dgArticleList" AutoGenerateColumns="false" 
            BorderWidth="1" HorizontalAlign="Center" CellPadding="3" CellSpacing="1" 
            CssClass="boxtd" HeaderStyle-CssClass="title_bg" 
            FooterStyle-BackColor="#ffffff" FooterStyle-HorizontalAlign="Center" FooterStyle-Height="33"
            UseAccessibleHeader="true" ShowFooter="false" ShowHeader="true" 
            DataKeyField="articleid" onitemcommand="dgArticleList_ItemCommand" 
        onitemcreated="dgArticleList_ItemCreated" AllowPaging="True" 
        onpageindexchanged="dgArticleList_PageIndexChanged">
<FooterStyle HorizontalAlign="Center" BackColor="White" Height="33px"></FooterStyle>
      <PagerStyle Mode="NumericPages" />
     <Columns>
        <asp:TemplateColumn HeaderText="选择" ItemStyle-Height="33" ItemStyle-HorizontalAlign="Center">
           <ItemTemplate>
              <asp:CheckBox runat="server" ID="chkIsSelect" CssClass="input" />
           </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="标题" ItemStyle-Height="33" ItemStyle-HorizontalAlign="Center">
           <ItemTemplate>
              <%# DataBinder.Eval(Container.DataItem, "title")%>
           </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="属性" ItemStyle-Height="33" ItemStyle-HorizontalAlign="Center">
           <ItemTemplate> 
             <%# (bool)DataBinder.Eval(Container.DataItem, "istop") ? "<font color='red'>顶</font>" : ""%>  
             <%# (bool)DataBinder.Eval(Container.DataItem, "iscommend") ? "<font color='red'>荐</font>" : ""%>  
             <%# (bool)DataBinder.Eval(Container.DataItem, "islink") ? "<font color='red'>链</font>" : ""%>
             <%# (bool)DataBinder.Eval(Container.DataItem, "ischecked") ? "<font color='red'>审</font>" : ""%>  
           </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="浏览" ItemStyle-Height="33" ItemStyle-HorizontalAlign="Center">
           <ItemTemplate>
              <%# DataBinder.Eval(Container.DataItem, "hits")%>
           </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="发布时间" ItemStyle-Height="33" ItemStyle-HorizontalAlign="Center">
           <ItemTemplate>
              <%# DataBinder.Eval(Container.DataItem, "createtime")%>
           </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="操作" ItemStyle-HorizontalAlign="Center">
             <ItemTemplate>
                <a href='articleedit.aspx?action=edit&articleid=<%# DataBinder.Eval(Container.DataItem, "articleid")%>&channelid=<%# DataBinder.Eval(Container.DataItem, "channelid")%>'>编辑</a>
                <asp:LinkButton runat="server" ID="lnkDelete" CommandArgument="DeleteInfo" Text="删除" Visible="false" />
             </ItemTemplate>
        </asp:TemplateColumn>
     </Columns>

<HeaderStyle CssClass="title_bg"></HeaderStyle>
  </asp:DataGrid> 
    <table border="0" align="center" cellpadding="3" cellspacing="1" class="boxtd">
  <tr>
    <td colspan="9" class="tdbg" align="center">
    <asp:CheckBox runat="server" ID="chkSelectAll" ToolTip="全选/否选" />全选/否选 
        <asp:Button runat="server" ID="btnBatchDelete" Text="删除所选文章" 
            onclick="btnBatchDelete_Click" /> 
     </td>
  </tr>
  </table>
</form>
</body>
</html>
