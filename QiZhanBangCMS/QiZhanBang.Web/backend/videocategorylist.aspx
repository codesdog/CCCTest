<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="videocategorylist.aspx.cs" Inherits="QiZhanBang.Web.backend.videocategorylist" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网站管理系统</title>
<link href="images/sdcms.css" rel="stylesheet" type="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<script language="javascript" src="images/sdcms.js" type="text/javascript"></script>

</head>
<body>
<form id="Form1" runat="server">
<div class="sdcms_notice"><span>管理操作：</span><a href="channellist.aspx">频道管理</a></div>
<br />
<ul id="sdcms_sub_title">
	<li class="sub"><a href="#">视频分类管理</a></li>
</ul>
<div id="sdcms_right_b">
  <asp:DataGrid runat="server" ID="dgVideoCategoryList" AutoGenerateColumns="false" 
            BorderWidth="0" HorizontalAlign="Center" CellPadding="3" CellSpacing="1" 
            CssClass="table_b" HeaderStyle-CssClass="title_bg" 
            FooterStyle-BackColor="#ffffff" FooterStyle-HorizontalAlign="Center" FooterStyle-Height="33"
            UseAccessibleHeader="true" ShowFooter="true" ShowHeader="true" 
            DataKeyField="categoryid" 
        oncancelcommand="dgVideoCategoryList_CancelCommand" 
        oneditcommand="dgVideoCategoryList_EditCommand" 
        onitemcommand="dgVideoCategoryList_ItemCommand" 
        onitemcreated="dgVideoCategoryList_ItemCreated" 
        onupdatecommand="dgVideoCategoryList_UpdateCommand">
     <Columns>
        <asp:TemplateColumn HeaderText="ID" ItemStyle-Height="33" ItemStyle-HorizontalAlign="Center">
           <ItemTemplate>
              <%# DataBinder.Eval(Container.DataItem, "categoryid")%>
           </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="分类名称" ItemStyle-Height="33" ItemStyle-HorizontalAlign="Center">
           <ItemTemplate>
              <%# DataBinder.Eval(Container.DataItem, "categoryname")%>
           </ItemTemplate>
           <EditItemTemplate>
              <asp:TextBox CssClass="input" runat="server" ID="txteditname" Text='<%# DataBinder.Eval(Container.DataItem, "categoryname")%>' />
           </EditItemTemplate>
           <FooterTemplate>
              <asp:TextBox CssClass="input" runat="server" ID="txtaddname" />
           </FooterTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="所属频道" ItemStyle-Height="33" ItemStyle-HorizontalAlign="Center">
           <ItemTemplate>
              <%# DataBinder.Eval(Container.DataItem, "channelname")%>
           </ItemTemplate>
           <FooterTemplate>
              <%# DataBinder.Eval(Container.DataItem, "channelname")%>
           </FooterTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="排序号" ItemStyle-Height="33" ItemStyle-HorizontalAlign="Center">
           <ItemTemplate>
              <%# DataBinder.Eval(Container.DataItem, "orderid")%>
           </ItemTemplate>
           <EditItemTemplate>
              <asp:TextBox CssClass="input" runat="server" ID="txteditorderid" Text='<%# DataBinder.Eval(Container.DataItem, "orderid")%>' />
           </EditItemTemplate>
           <FooterTemplate>
              <asp:TextBox CssClass="input" runat="server" ID="txtaddorderid" Text="0" />
           </FooterTemplate>
        </asp:TemplateColumn>
        <asp:EditCommandColumn CancelText="取消" EditText="编辑" UpdateText="保存" HeaderText="编辑" ItemStyle-HorizontalAlign="Center"  />
        <asp:TemplateColumn HeaderText="操作" ItemStyle-HorizontalAlign="Center">
             <ItemTemplate>
                <asp:LinkButton runat="server" ID="lnkDelete" CommandArgument="DeleteInfo" Text="删除" />
             </ItemTemplate>
             <FooterTemplate>
                <asp:LinkButton runat="server" ID="lnkAdd" CommandArgument="AddInfo" Text="添加" />
             </FooterTemplate>
          </asp:TemplateColumn>
     </Columns>
  </asp:DataGrid>
</div>

</form>
</body>
</html>
