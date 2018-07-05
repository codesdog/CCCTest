<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="admingg, wrxuanke" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
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
                <td width="95%" align="left"><span >你当前的位置</span>：[业务中心]-[我的邮件]</td>
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
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0" 
            style="height: 259px">
      <tr>
        <td width="8" background="images/tab_12.gif">&nbsp;</td>
        <td>
            
            <table border="1" cellpadding="2" cellspacing="0" 
                 
                
                
                
                style="border-color:#B5D6E6;font-size:9pt;width:90%; border-collapse:collapse; height: 290px;" 
                align="center">
                <tr  style="background-color:#B5D6E6;">
                    <td colspan="2" align="center" style="height: 31px">
                        编辑公告内容</td>
                </tr>
                <tr>
                    <td style=" width: 127px; ">
                        公告内容</td>
                    <td align="left" >
                        <asp:TextBox ID="TextBox8" runat="server" Rows="8" TextMode="MultiLine" 
                            Width="96%" Height="300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="TextBox8" ErrorMessage="请输入公告内容">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Button1" runat="server" Text="保存" onclick="Button1_Click" />
                      
                        &nbsp;
                      
                        <asp:ValidationSummary ID="ValidationSummary2" runat="server" 
                            ShowMessageBox="True" ShowSummary="False" />
                    </td>
                </tr>
            </table>
            
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

