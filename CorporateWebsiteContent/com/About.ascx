<%@ Control Language="C#" AutoEventWireup="true" CodeFile="About.ascx.cs" Inherits="com_About" %>
<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="Table4">
      <tr>
        <td width="100%" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#DEE7F9">
          <tr>
            <td><div id="lt">关于我们</div></td>
          </tr>
        </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin:3px auto">
            <tr>
              <td style="height: 12px"><asp:Repeater ID ="rp_about" runat ="server" >
              <ItemTemplate>
              <div id="lefti"><ul>
                 <li><a href ='About2.aspx?id=<%#Eval("lxClassId")%>'><%#Eval("lxClassName")%></a></li>
                  </ul>
                 
              </div>
              </ItemTemplate>
              </asp:Repeater></td>
            </tr>
          </table></td>
      </tr>
    </table>