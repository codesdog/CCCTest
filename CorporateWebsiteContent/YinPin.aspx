<%@ Page Language="C#" AutoEventWireup="true" CodeFile="YinPin.aspx.cs" Debug ="true"  Inherits="YinPin" %>


<%@ Register Src="com/foot.ascx" TagName="foot" TagPrefix="uc1" %>
<%@ Register Src="com/top.ascx" TagName="top" TagPrefix="uc1" %>
<%@ Register Src="com/About.ascx" TagName="About" TagPrefix="uc2" %>
<%@ Register Src="com/lxwm.ascx" TagName="lxwm" TagPrefix="uc3" %>
<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
 <title>无标题页</title>
    <link href ="images/css.css" type ="text/css" rel="stylesheet" />
        <style type="text/css">
            .style1
            {
                width: 700px;
            }
            .style3
            {
            }
            .style4
            {
                height: 25px;
            }
            .style5
            {
                width: 352px;
                text-align: center;
            }
            .style6
            {
                width: 120px;
                height: 25px;
            }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <uc1:top ID="Top1" runat="server" />
    <table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr valign="top">
    <td width="220" bgcolor="#EEF2FA"><table width="98%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="line">
      <tr>
        <td width="100%" valign="top">
            <uc2:About ID="About1" runat="server" />
        </td>
      </tr>
    </table>
	<table width="98%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="line2">
      <tr>
        <td width="100%" valign="top">
            <uc3:lxwm ID="Lxwm1" runat="server" />
        </td>
      </tr>
    </table>
	</td>
    <td width="760"><table width="100%" height="500" border="0" cellpadding="0" cellspacing="0" id="Table1">
      <tr>
        <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" style="background:#DEE7F9">
          <tr>
            <td><div id="lat">当前位置：<a href="/">首 页</a> &gt;<asp:Label ID="Label1" runat="server">招贤纳士</asp:Label>
                                                &nbsp;&gt;应聘职位</div></td>
          </tr>
        </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><div id="title">应聘职位名称：<asp:Label ID="Label2" runat="server" 
                      Font-Underline="True" ForeColor="Red"></asp:Label>
&nbsp;</div></td>
            </tr>
          </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><div id="body">
                  <table class="style1">
                      <tr style ="background-color:#DEE7F9">
                          <td class="style5" valign="top">
                              真实姓名：    <td class="style4">
                              <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                          &nbsp;* 请输入您的真实姓名</td>
                          <td style="text-align: left; " valign="top" class="style6">
                              性别：<asp:DropDownList ID="DropDownList2" runat="server">
                                  <asp:ListItem>男</asp:ListItem>
                                  <asp:ListItem>女</asp:ListItem>
                              </asp:DropDownList>
                                                            </td>
                      </tr>
                      <tr  style ="background-color:#DEE7F9">
                          <td class="style5">
                              您的昵称：</td>
                          <td class="style3" colspan="2">
                              <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                                            </td>
                      </tr>
                      <tr  style ="background-color:#DEE7F9">
                          <td class="style5" valign ="top">
                              学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 历：</td>
                          <td class="style3" colspan="2">
                              <asp:DropDownList ID="DropDownList1" runat="server">
                                  <asp:ListItem>博士</asp:ListItem>
                                  <asp:ListItem>硕士</asp:ListItem>
                                  <asp:ListItem>本科</asp:ListItem>
                                  <asp:ListItem>大专</asp:ListItem>
                                  <asp:ListItem>其他</asp:ListItem>
                              </asp:DropDownList>
                                                            &nbsp;</td>
                      </tr>
                      <tr  style ="background-color:#DEE7F9">
                          <td class="style5" valign ="top">
                              联系地址：</td>
                          <td class="style3" colspan="2">
                              <asp:TextBox ID="TextBox3" runat="server" Width="304px"></asp:TextBox>
                          &nbsp;*请输入你的详细地址，方便我们与您联系。</td>
                      </tr>
                      <tr  style ="background-color:#DEE7F9">
                          <td class="style5">
                              籍&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 贯：</td>
                          <td class="style3" colspan="2">
                              <asp:TextBox ID="TextBox4" runat="server" Width="561px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr  style ="background-color:#DEE7F9">
                          <td class="style5">
                              教育背景：</td>
                          <td class="style3" colspan="2">
                              <asp:TextBox ID="TextBox5" runat="server" Width="559px" Height="80px" 
                                  TextMode="MultiLine"></asp:TextBox>
                              
                              *请输入您的教育经历，方便我们更多的了解您，谢谢！</td>
                      </tr>
                      <tr  style ="background-color:#DEE7F9">
                          <td class="style5">
                              工作经验：</td>
                          <td class="style3" colspan="2">
                              <asp:TextBox ID="TextBox6" runat="server" Width="565px" Height="80px" 
                                  TextMode="MultiLine"></asp:TextBox>
                                                            
                              *请输入您的工作经历，方便我们更多的了解您，谢谢！</td>
                      </tr>
                      <tr  style ="background-color:#DEE7F9">
                          <td class="style5">
                              备注信息：</td>
                          <td class="style3" colspan="2">
                              <asp:TextBox ID="TextBox7" runat="server" Width="565px" Height="80px" 
                                  TextMode="MultiLine"></asp:TextBox>
                                                            </td>
                      </tr>
                      <tr  style ="background-color:#DEE7F9">
                          <td class="style5">
                              &nbsp;</td>
                          <td class="style3">
                              <asp:Button ID="Button1" runat="server" Text="提交申请" onclick="Button1_Click" />
&nbsp;</td>
                          <td class="style3">
                              &nbsp;</td>
                      </tr>
                  </table>

                 
                </div></td>
            </tr>
          </table></td>
      </tr>
    </table></td>
  </tr>
</table>
  <uc1:foot ID="Foot1" runat="server" />
    </div>
    </form>
</body>
</html>