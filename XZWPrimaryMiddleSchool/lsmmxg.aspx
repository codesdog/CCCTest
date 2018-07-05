<%@ page title="" language="C#" masterpagefile="~/ls.master" autoeventwireup="true" inherits="lsmmxg, wrxuanke" %>

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
                <td width="95%" align="left"><span >你当前的位置</span>：[修改密码]</td>
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
                        <asp:Label ID="Label1" runat="server" Font-Bold="True">修改密码</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style=" width: 127px">
                        原始密码</td>
                    <td align="left">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox3" ErrorMessage="请输入原始密码">*</asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td style=" width: 127px; ">
                        新密码</td>
                    <td align="left" >
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="TextBox4" ErrorMessage="请输入新密码">*</asp:RequiredFieldValidator>
                        4位及以上，限数字或字母</td>
                </tr>
                <tr>
                    <td style=" width: 127px">
                        再次输入新密码</td>
                    <td align="left">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="TextBox5" ControlToValidate="TextBox4" ErrorMessage="两次密码不一样">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Button1" runat="server" Text="保存" onclick="Button1_Click" />
                      
                        &nbsp;
                      
                        <asp:LinkButton ID="LinkButton1" runat="server" 
                            PostBackUrl="lsindex.aspx" CausesValidation="False">返回</asp:LinkButton>  <asp:ValidationSummary ID="ValidationSummary2" runat="server" 
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

