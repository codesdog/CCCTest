<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<%@ Register src="../com/en/enTop.ascx" tagname="enTop" tagprefix="uc5" %>
<%@ Register src="../com/en/enBook.ascx" tagname="enBook" tagprefix="uc6" %>
<%@ Register src="../com/en/lxwm.ascx" tagname="lxwm" tagprefix="uc7" %>

<%@ Register src="../com/foot.ascx" tagname="foot" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href ="../images/css.css" type ="text/css" rel="stylesheet" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 161px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc5:enTop ID="enTop1" runat="server" />
    <table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr valign="top">
    <td width="220" bgcolor="#EEF2FA"><table width="98%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="line">
      <tr>
        <td width="100%" valign="top">
            <uc6:enBook ID="enBook1" runat="server" />
        </td>
      </tr>
    </table>
   <table width="98%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="line2">
      <tr>
        <td width="100%" valign="top">
            &nbsp;</td>
      </tr>
    </table>
	<table width="98%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="line2">
      <tr>
        <td width="100%" valign="top">
            <uc7:lxwm ID="lxwm1" runat="server" />
        </td>
      </tr>
    </table>
	</td>
    <td width="760"><table width="100%" height="500" border="0" cellpadding="0" cellspacing="0" id="Table1">
      <tr>
        <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" style="background:#DEE7F9">
          <tr>
            <td><div id="lat">当前位置：<a href="/">首 页</a> >在线留言</div></td>
          </tr>
        </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><div id="title">在线留言如您对本公司有何建议，<br />
                  请在这里输入您的良言！</div></td>
            </tr>
          </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><div id="body">
                  <table class="style1">
                      <tr style ="background-color:#DEE7F9">
                          <td class="style2">
                              留言标题：</td>
                          <td>
                              <asp:TextBox ID="TextBox1" runat="server" Width="433px"></asp:TextBox>
&nbsp; *
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                  ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="标题不能为空" 
                                  ValidationGroup="g"></asp:RequiredFieldValidator>
                                                            </td>
                      </tr>
                      <tr style ="background-color:#DEE7F9">
                          <td class="style2">
                              留&nbsp;&nbsp; 言 人：</td>
                          <td>
                              <asp:TextBox ID="TextBox2" runat="server" Width="129px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr style ="background-color:#DEE7F9">
                          <td class="style2">
                              留言内容：</td>
                          <td>
                              <asp:TextBox ID="TextBox3" runat="server" Height="130px" TextMode="MultiLine" 
                                  Width="434px"></asp:TextBox>
&nbsp;*<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" 
                                  Display="Dynamic" ErrorMessage="内容不能为空" ValidationGroup="g"></asp:RequiredFieldValidator>
                                                            </td>
                      </tr>
                      <tr style ="background-color:#DEE7F9">
                          <td class="style2">
                              您的地址：</td>
                          <td>
                              <asp:TextBox ID="TextBox8" runat="server" Width="435px"></asp:TextBox>
&nbsp;*
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                  ControlToValidate="TextBox8" Display="Dynamic" ErrorMessage="请输入地址" 
                                  ValidationGroup="g"></asp:RequiredFieldValidator>
                                                            </td>
                      </tr>
                      <tr style ="background-color:#DEE7F9">
                          <td class="style2">
                              您的电话：</td>
                          <td>
                              <asp:TextBox ID="TextBox4" runat="server" Width="183px"></asp:TextBox>
&nbsp;* 为方便与您取得联系，请您填写正确的联系方式。<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                  ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="内容不能为空" 
                                  ValidationGroup="g"></asp:RequiredFieldValidator>
                                                            </td>
                      </tr>
                      <tr style ="background-color:#DEE7F9">
                          <td class="style2">
                              邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 箱：</td>
                          <td>
                              <asp:TextBox ID="TextBox5" runat="server" Width="183px"></asp:TextBox>
&nbsp;* 我们会通过邮件方式与您及时沟通。<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                  ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="邮箱不能为空" 
                                  ValidationGroup="g"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                  ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="邮箱格式不正确" 
                                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                            </td>
                      </tr>
                      <tr style ="background-color:#DEE7F9">
                          <td class="style2">
                              QQ/MSN：</td>
                          <td>
                              <asp:TextBox ID="TextBox6" runat="server" Width="183px"></asp:TextBox>
&nbsp;</td>
                      </tr>
                      <tr style ="background-color:#DEE7F9">
                          <td class="style2">
                              备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 注：</td>
                          <td>
                              <asp:TextBox ID="TextBox7" runat="server" Height="91px" TextMode="MultiLine" 
                                  Width="436px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td class="style2">
                              &nbsp;</td>
                                                            <td>
                                                                <asp:Button ID="Button1" runat="server" Text="提交留言" onclick="Button1_Click" 
                                                                    ValidationGroup="g" />
                                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                                <asp:Button ID="Button2" runat="server" Text="取消" />
                                                            </td>
                                                        </tr>
                                                    </table>
                </div></td>
            </tr>
          </table></td>
      </tr>
    </table></td>
  </tr>
</table>
            <uc1:foot ID="foot2" runat="server" />
    </div>
    </form>
</body>
</html>
