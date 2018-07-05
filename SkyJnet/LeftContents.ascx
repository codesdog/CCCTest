<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LeftContents.ascx.cs" Inherits="Web.LeftContents" %>
<table width="200" border="0" cellspacing="0" cellpadding="0">
  <asp:Repeater ID="rp_menu" runat="server">
  <ItemTemplate>
  <tr> 
    <td valign="top" class="link1" >　　　　<a href="<%=strurlp %><%#Eval("id") %>"><font color="#333333"><strong><%#Eval(strfieldp) %></strong></font></a></td>
  </tr>
  </ItemTemplate>
  </asp:Repeater> 
      <tr>
        <td height="28"><img src="images/wall-papge_06.jpg" width="199" height="251" /></td>
      </tr>
    </table>