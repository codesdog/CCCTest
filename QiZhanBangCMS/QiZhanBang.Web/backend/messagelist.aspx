<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="messagelist.aspx.cs" Inherits="QiZhanBang.Web.backend.messagelist" %>
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
<div class="sdcms_notice"><span>网站留言管理：</span></div>
<br />
<ul id="sdcms_sub_title">
	<li class="sub"><a href="#">留言管理</a></li>
</ul>
<div id="sdcms_right_b">
  <asp:DataGrid runat="server" ID="dgMessageList" AutoGenerateColumns="false" 
            BorderWidth="0" HorizontalAlign="Center" CellPadding="3" CellSpacing="1" 
            CssClass="table_b" HeaderStyle-CssClass="title_bg" 
            FooterStyle-BackColor="#ffffff" FooterStyle-HorizontalAlign="Center" FooterStyle-Height="33"
            UseAccessibleHeader="true" ShowHeader="true" 
            DataKeyField="messageid" 
        oncancelcommand="dgMessageList_CancelCommand" 
        oneditcommand="dgMessageList_EditCommand" 
        onitemcommand="dgMessageList_ItemCommand" 
        onitemcreated="dgMessageList_ItemCreated" 
        onupdatecommand="dgMessageList_UpdateCommand" AllowPaging="True" 
        onpageindexchanged="dgMessageList_PageIndexChanged">
<FooterStyle HorizontalAlign="Center" BackColor="White" Height="60px"></FooterStyle>
      <PagerStyle Mode="NumericPages" />
     <Columns>
        <asp:TemplateColumn HeaderText="NAME/EMAIL" ItemStyle-Height="60" ItemStyle-HorizontalAlign="Center">
           <ItemTemplate>
              <%# DataBinder.Eval(Container.DataItem, "poster")%>
              <br />
              <%# DataBinder.Eval(Container.DataItem, "email")%>
           </ItemTemplate>

<ItemStyle HorizontalAlign="Center" Height="60px"></ItemStyle>
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="留言" ItemStyle-Height="60" ItemStyle-Width="300" ItemStyle-HorizontalAlign="Center">
           <ItemTemplate>
              <%# DataBinder.Eval(Container.DataItem, "content")%>
           </ItemTemplate>
           <EditItemTemplate>
              <asp:TextBox CssClass="input" runat="server" Height="60" Width="300" TextMode="MultiLine" Rows="3" ID="txteditcontent" Text='<%# DataBinder.Eval(Container.DataItem, "content")%>' />
           </EditItemTemplate>

<ItemStyle HorizontalAlign="Center" Height="60px"></ItemStyle>
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="回复" ItemStyle-Height="60" ItemStyle-HorizontalAlign="Center">
           <ItemTemplate>
              <%# DataBinder.Eval(Container.DataItem, "reply")%>
           </ItemTemplate>
           <EditItemTemplate>
              <asp:TextBox CssClass="input" runat="server" Height="60" Width="300" TextMode="MultiLine" Rows="3" ID="txteditreply" Text='<%# DataBinder.Eval(Container.DataItem, "reply")%>' />
           </EditItemTemplate>

<ItemStyle HorizontalAlign="Center" Height="60px"></ItemStyle>
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="发布时间" ItemStyle-Height="33" ItemStyle-HorizontalAlign="Center">
           <ItemTemplate>
              <%# DataBinder.Eval(Container.DataItem, "createdate")%>
           </ItemTemplate>

<ItemStyle HorizontalAlign="Center" Height="33px"></ItemStyle>
        </asp:TemplateColumn>
        <asp:EditCommandColumn CancelText="取消" EditText="编辑" UpdateText="保存" 
             HeaderText="编辑" ItemStyle-HorizontalAlign="Center"  >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
         </asp:EditCommandColumn>
        <asp:TemplateColumn HeaderText="操作" ItemStyle-HorizontalAlign="Center">
             <ItemTemplate>
                <asp:LinkButton runat="server" ID="lnkDelete" CommandArgument="DeleteInfo" Text="删除" />
             </ItemTemplate>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
          </asp:TemplateColumn>
     </Columns>

<HeaderStyle CssClass="title_bg"></HeaderStyle>
  </asp:DataGrid>
</div>
</form>
</body>
</html>