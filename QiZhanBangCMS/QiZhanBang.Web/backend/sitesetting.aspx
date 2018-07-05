<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sitesetting.aspx.cs" Inherits="QiZhanBang.Web.backend.sitesetting" ValidateRequest="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��վ���ù���</title>
<link href="images/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body { padding:10px }
-->
</style>
</head>
<body>
<form id="Form1" runat="server">
<h3 class="boxtitle">��̨���� &gt;&gt; ��վ���ù���</h3>
<table height="0" border="0" cellpadding="0" cellspacing="1" class="tabBgColor">
<tr align="center">
  <td height="25" background="Images/Top.gif">������ϢĪ����ɾ��</td>
</tr>
</table>
<asp:DataGrid runat="server" ID="dgSiteSetting" AutoGenerateColumns="false" 
            BorderWidth="1" HorizontalAlign="Center" CellPadding="3" CellSpacing="1" 
            CssClass="boxtd" HeaderStyle-CssClass="title_bg" 
            FooterStyle-BackColor="#ffffff" FooterStyle-HorizontalAlign="Center" FooterStyle-Height="33"
            UseAccessibleHeader="true" ShowFooter="true" ShowHeader="true" 
            DataKeyField="settingid" 
        oncancelcommand="dgSiteSetting_CancelCommand" 
        oneditcommand="dgSiteSetting_EditCommand" 
        onitemcommand="dgSiteSetting_ItemCommand" 
        onitemcreated="dgSiteSetting_ItemCreated" 
        onupdatecommand="dgSiteSetting_UpdateCommand">
     <Columns>
        <asp:TemplateColumn HeaderText="ID" ItemStyle-Height="33" ItemStyle-HorizontalAlign="Center">
           <ItemTemplate>
              <%# DataBinder.Eval(Container.DataItem, "settingid")%>
           </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="���" ItemStyle-Height="33" ItemStyle-HorizontalAlign="Center">
           <ItemTemplate>
              <%# DataBinder.Eval(Container.DataItem, "settingkey")%>
           </ItemTemplate>
           <FooterTemplate>
              <asp:TextBox CssClass="input" runat="server" ID="txtaddsettingkey" Width="200" />(Ψһ�������޸�)
           </FooterTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="����" ItemStyle-Height="33" ItemStyle-HorizontalAlign="Center">
           <ItemTemplate>
              <%# Server.HtmlEncode( DataBinder.Eval(Container.DataItem, "settingvalue").ToString() )%>
           </ItemTemplate>
           <EditItemTemplate>
              <asp:TextBox CssClass="input" runat="server" ID="txteditsettingvalue" Width="300" Text='<%# DataBinder.Eval(Container.DataItem, "settingvalue")%>' TextMode="MultiLine" Rows="3" Height="50"  />
           </EditItemTemplate>
           <FooterTemplate>
              <asp:TextBox CssClass="input" runat="server" ID="txtaddsettingvalue" Width="300" Text="" TextMode="MultiLine" Rows="3" Height="50"  />
           </FooterTemplate>
        </asp:TemplateColumn>
        <asp:EditCommandColumn CancelText="ȡ��" EditText="�༭" UpdateText="����" HeaderText="�༭" ItemStyle-HorizontalAlign="Center"  />
        <asp:TemplateColumn HeaderText="����" ItemStyle-HorizontalAlign="Center">
             <ItemTemplate>
                <asp:LinkButton runat="server" ID="lnkDelete" CommandArgument="DeleteInfo" Text="ɾ��" />
             </ItemTemplate>
             <FooterTemplate>
                <asp:LinkButton runat="server" ID="lnkAdd" CommandArgument="AddInfo" Text="���" />
             </FooterTemplate>
          </asp:TemplateColumn>
     </Columns>
  </asp:DataGrid>
</form>
</body>
</html>
