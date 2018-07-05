<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="adminadmin, wrxuanke" %>

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
                <td width="95%" align="left"><span >你当前的位置</span>：[业务中心]-[我的邮件]</td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="60"><table width="87%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center">
                      &nbsp;<asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" oncheckedchanged="CheckBox2_CheckedChanged" />
                    </div></td>
                    <td ><div align="center">全选</div></td>
                  </tr>
                </table></td>
                <td width="60"><table width="88%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td ><div align="center"><img src="images/11.gif" width="14" height="14" /></div></td>
                    <td ><div align="center">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                            onclientclick="javascript:return confirm('你确认要删除?\r\n\r\n此操作一旦执行，将清除所有的学生名单和选课信息。\r\n\r\n该操作将不可恢复!?');" 
                            Text="删除" />
                        </div></td>
                  </tr>
                </table></td>
                <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td ><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td ><div align="center"><img src="images/22.gif" width="14" height="14" /></div></td>
                    <td ><div align="center">新增</div></td>
                  </tr>
                </table></td>
                    <td >&nbsp;</td>
                  </tr>
                </table></td>
                <td width="52">&nbsp;</td>
              </tr>
            </table></td>
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
        <td align="center">
            <asp:GridView ID="dbgContract" runat="server" AutoGenerateColumns="False"    
                CellPadding="4"  Width="98%" RowStyle-HorizontalAlign="center" 
                BorderColor="#B5D6E6" onrowcancelingedit="dbgContract_RowCancelingEdit" 
                onrowdatabound="dbgContract_RowDataBound" 
                onrowdeleting="dbgContract_RowDeleting" 
                onrowediting="dbgContract_RowEditing" 
                onrowupdating="dbgContract_RowUpdating" Font-Size="9pt" 
               >

<RowStyle HorizontalAlign="Center"></RowStyle>
                        <AlternatingRowStyle BackColor="#EFEFFF" />

                <Columns>
                    <asp:BoundField DataField="XZWAdminUID" HeaderText="登陆名" />
                    <asp:BoundField DataField="XZWAdminPWD" HeaderText="密码" />
                    <asp:CommandField HeaderText="编辑" ShowEditButton="True" />
                    <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                </Columns>
                 
                        <HeaderStyle BackColor="#B5D6E6" />
                        <PagerSettings Visible="False" />
                        <PagerStyle BackColor="#DEE9F9" Font-Bold="True" Font-Italic="False" Font-Size="13pt" />
                 
                       <RowStyle HorizontalAlign="Center" />
            </asp:GridView>
         <br />   <table border="1" style="border-collapse:collapse;" width="98%">
  <tr>
    <td>登录名 
      <asp:TextBox ID="TextBox1" runat="server" Width="93"></asp:TextBox>
    </td>
    <td>
        密码 <asp:TextBox ID="TextBox2" runat="server" Width="93"></asp:TextBox>
    </td>
    <td>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="增加" />
    </td>
  </tr>
</table>
<%--Table结束--%>

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
            <td class="STYLE4">&nbsp;&nbsp;</td>
            <td><table border="0" align="right" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="40">&nbsp;</td>
                  <td width="45">&nbsp;</td>
                  <td width="45">&nbsp;</td>
                  <td width="40">&nbsp;</td>
                  <td width="100"><div align="center"></div></td>
                  <td width="40">&nbsp;</td>
                </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
  </table></asp:Content>

