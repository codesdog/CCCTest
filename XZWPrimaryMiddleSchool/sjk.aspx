<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="sjk, wrxuanke" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">




<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="images/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="5%"><div align="center"><img src="images/tb.gif" width="16" height="16" /></div></td>
                <td width="95%" align="left"><span >你当前的位置</span>：[数据备份还原]</td>
              </tr>
            </table></td>
            <td width="54%">&nbsp;</td>
          </tr>
        </table></td>
        <td width="16"><img src="images/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  
    <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="images/tab_12.gif">&nbsp;</td>
        <td>
        
        
        
            <table style="width:100%;">
                <tr>
                    <td align="center">
        
        
        
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="备份" />
                    </td>
                </tr>
            </table>
&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"   
                CellPadding="4"  Width="98%" RowStyle-HorizontalAlign="center" 
                BorderColor="#B5D6E6"
                Font-Size="9pt" 
                AllowSorting="True" 
                onrowdeleting="GridView1_RowDeleting" 
                onrowdatabound="GridView1_RowDataBound">
                    <HeaderStyle BackColor="#B5D6E6" />
                <RowStyle HorizontalAlign="Center"></RowStyle>
                        <AlternatingRowStyle BackColor="#EFEFFF" />
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="文件名" />
                    <asp:BoundField DataField="Length" HeaderText="文件大小" />
                    <asp:BoundField DataField="LastAccessTime" HeaderText="备份时间" />
                    <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                    <asp:TemplateField HeaderText="操作">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server"  CommandArgument='<%# Eval("name") %>'  
                                onclientclick="javascript:return confirm('你确认要还原吗?')" 
                                onclick="LinkButton1_Click">还原</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
    </asp:GridView>
&nbsp; 
        
        
        </td>
        <td width="8" background="images/tab_15.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
    
   
  <tr>
    <td height="35" background="images/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="images/tab_18.gif" width="12" height="35" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td class="STYLE4">&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
        <td width="16"><img src="images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
  </table>



</asp:Content>

