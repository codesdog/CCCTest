<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="system80_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type ="text/css" >
    .bx
    {
    	font-size:14px;
    	font-weight:bold ;
    	
    }
        .style1
        {
            width: 31%;
            height: 185px;
            line-height:25px;
        }
        .style2
        {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style ="font-size:12px;">
    
        <table align="center" class="style1">
            <tr>
                <td style="text-align: center" colspan="2">
                    ----管理员登录窗口---</td>
            </tr>
            <tr>
                <td style="text-align: right">
                    用户名：</td>
                <td class="style2">
                    <asp:TextBox ID="txt_name" runat="server" Width="74px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="请输入用户名" ControlToValidate="txt_name" Display="Dynamic" 
                        ValidationGroup="g"></asp:RequiredFieldValidator>
                    *</td>
            </tr>
            <tr>
                <td style="text-align: right">
                    密&nbsp;&nbsp;&nbsp; 码：</td>
                <td class="style2">
                    <asp:TextBox ID="txt_pass" runat="server" TextMode="Password" Width="73px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="请输入密码！" ControlToValidate="txt_pass" Display="Dynamic" 
                        ValidationGroup="g"></asp:RequiredFieldValidator>
                    *</td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" Text="登录" ValidationGroup="g" 
                        onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="取消" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    版权所有&copy<A href="http://www.xxxxx.com.cn" target="_blank">环球网络</A>CopyRight2010</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
