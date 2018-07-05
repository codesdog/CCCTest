<%@ Control Language="C#" AutoEventWireup="true" CodeFile="newsclass.ascx.cs" Inherits="com_newsclass" %>
<table width="100%" border="0" cellpadding="0" cellspacing="0"  style="background-color:#DEE7F9" id="line2">
          <tr>
            <td><div id="lt">新闻分类</div></td>
          </tr>
        </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin:3px auto" id="line2">
            <tr>
              <td>
		<asp:Repeater ID ="rp_about" runat ="server" >
              <ItemTemplate>
              <div id="lefti"><ul>
                 <li><a href ='NewsClass.aspx?id=<%#Eval("NewsClassId")%>'><%#Eval("NewsClassName")%></a></li>
                  </ul>
                 
              </div>
              </ItemTemplate>
              </asp:Repeater>
			  </td>
            </tr>
          </table>