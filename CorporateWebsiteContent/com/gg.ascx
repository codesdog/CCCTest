<%@ Control Language="C#" AutoEventWireup="true" CodeFile="gg.ascx.cs" Inherits="com_gg" %>
 <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="Table4">
      <tr>
        <td width="100%" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#DEE7F9">
          <tr>
            <td><div id="lt">网站公告</div></td>
          </tr>
        </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin:3px auto">
            <tr>
              <td style="height: 12px; text-align :left " ><asp:Repeater ID ="rp_ab" runat ="server" >
              <ItemTemplate>
              <div id="lefti" style="text-align:left "><ul>
                 <li><a href ='newsdetail.aspx?id=<%#Eval("NewsId")%>' style="text-align:left " title='<%#Eval("NewsTitle")%>'><%#Custring(Eval("NewsTitle").ToString ().ToString ())%></a></li>
                  </ul>
                 
              </div>
              </ItemTemplate>
              </asp:Repeater></td>
            </tr>
          </table></td>
      </tr>
    </table>