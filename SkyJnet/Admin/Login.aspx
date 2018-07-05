<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Web.Admin_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>管理员登录</title>
    <STYLE type="text/css">BODY { SCROLLBAR-FACE-COLOR: #799ae1;  MARGIN: 0px; FONT: 12px 宋体; SCROLLBAR-HIGHLIGHT-COLOR: #799ae1; SCROLLBAR-SHADOW-COLOR: #799ae1; SCROLLBAR-3DLIGHT-COLOR: #799ae1; SCROLLBAR-ARROW-COLOR: #ffffff; SCROLLBAR-TRACK-COLOR: #aabfec; SCROLLBAR-DARKSHADOW-COLOR: #799ae1 }
	TABLE { BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px }
	TD { FONT: 12px 宋体 }
	IMG { BORDER-RIGHT: 0px; BORDER-TOP: 0px; VERTICAL-ALIGN: bottom; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px }
	A { FONT: 12px 宋体; COLOR: #000000; TEXT-DECORATION: none }
	A:hover { COLOR: #428eff; TEXT-DECORATION: underline }
	.sec_menu { BORDER-RIGHT: white 1px solid; BACKGROUND: #d6dff7; OVERFLOW: hidden; BORDER-LEFT: white 1px solid; BORDER-BOTTOM: white 1px solid }
	.menu_title { }
	.menu_title SPAN { FONT-WEIGHT: bold; LEFT: 8px; COLOR: #215dc6; POSITION: relative; TOP: 2px }
	.menu_title2 { }
	.menu_title2 SPAN { FONT-WEIGHT: bold; LEFT: 8px; COLOR: #428eff; POSITION: relative; TOP: 2px }
		</STYLE>
</head>
<body bgcolor="#6699FF" background="IMAGES/Admin_Login1_0_02.gif">
    <form id="form1" runat="server">
    <div align="center">
  <center>
 
  <table width="100%" border="0" cellspacing="1" background="IMAGES/Admin_Login1_0_02.gif">
    <tr>
      <td>　 
      
        <table width="392" border="0" cellspacing="0" cellpadding="1" bordercolordark="#6699FF" bordercolorlight="#FFFFFF" align="center">
          <tr><TD><img src="IMAGES/adminmain01.gif"></TD></TR>
            <TR><TD>
			<div >
              <center>         
                <table width="100%" border="0" cellpadding="0" cellspacing="0" height="100">
                <tr align="center" valign="middle" bgcolor="#53A9FF">
                  <td width="102" style="height: 25px" >
                  帐&nbsp;号：</td>
                  <td width="290" align="left" style="height: 25px"><asp:TextBox ID="tb_Id" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="帐号不能为空" ControlToValidate="tb_Id"></asp:RequiredFieldValidator></td>
                </tr>
                <tr align="center" valign="middle" bgcolor="#53A9FF">
                  <td width="102" height="25" >
                  密&nbsp;码：</td>
                  <td width="290" height="25" align="left">
                  
                      <asp:TextBox ID="tb_Pwd" runat="server" TextMode="Password"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="密码不能为空" ControlToValidate="tb_Pwd"></asp:RequiredFieldValidator></td>
                </tr>
                <tr bgcolor="#53A9FF">
                <td></td>
                  <td height="27" align="left" >
                      <asp:Button ID="btn_Ok" runat="server" Text=" 登录 " OnClick="btn_Ok_Click" />
                      &nbsp;&nbsp;<asp:Button ID="btn_Cancel" runat="server" Text=" 取消 " OnClientClick="javascript:window.close();" /></td>
                </tr>
                <tr>
                  <td colspan="2" align="right" height="18"></td>
                </tr>
              </table>
              </center>
            </div>
            </td>
          </tr>
        </table>
     
      </td>
    </tr>
  </table>
  </center>
</div>
    </form>
</body>
</html>
