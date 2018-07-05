<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="kcadd, wrxuanke" %>

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
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style=" width: 127px">
                        课程名称</td>
                    <td align="left">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="请输入课程名称">*</asp:RequiredFieldValidator>
                        <asp:HiddenField ID="HiddenField1" runat="server" Value="" />
                    </td>
                </tr>
                <tr>
                    <td style=" width: 127px">
                        课程分类</td>
                    <td align="left">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                 <tr>
                    <td style=" width: 127px">
                        是否开设</td>
                    <td align="left">
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem>是</asp:ListItem>
                            <asp:ListItem>否</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style=" width: 127px">
                        开课老师</td>
                    <td align="left">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox3" ErrorMessage="请输入开课老师的用户名">*</asp:RequiredFieldValidator>
                        开课老师的用户名</td>
                </tr>
                <tr>
                    <td style=" width: 127px; ">
                        限选人数</td>
                    <td align="left" >
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="TextBox4" ErrorMessage="请输入限选人数">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="TextBox4" ErrorMessage="限选人数必须为数字" 
                            ValidationExpression="^[0-9]*[1-9][0-9]*$"></asp:RegularExpressionValidator>
                        </td>
                </tr>
                <tr>
                    <td style=" width: 127px">
                        本班限选人数</td>
                    <td align="left">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="请输入本班限选人数">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="限选人数必须为数字" 
                            ValidationExpression="^[0-9]*[1-9][0-9]*$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style=" width: 127px">
                        开课对象</td>
                    <td align="left">
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                         
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td style=" width: 127px">
                        上课时间</td>
                    <td align="left">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="TextBox6" ErrorMessage="请输入上课时间">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style=" width: 127px; ">
                        上课地点</td>
                    <td align="left" >
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="TextBox7" ErrorMessage="请输入上课地点">*</asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td style=" width: 127px; ">
                        课程简介</td>
                    <td align="left" >
                        <asp:TextBox ID="TextBox8" runat="server" Rows="8" TextMode="MultiLine" 
                            Width="96%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="TextBox8" ErrorMessage="请输入课程简介">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Button1" runat="server" Text="保存" onclick="Button1_Click" />
                      
                        &nbsp;
                      
                        <asp:LinkButton ID="LinkButton1" runat="server" 
                            PostBackUrl="kcgl.aspx?caidanid=3" CausesValidation="False">返回</asp:LinkButton>  <asp:ValidationSummary ID="ValidationSummary2" runat="server" 
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

