<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Webwangzhan.admin.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>管理员入口</title>

    <LINK href="images/Default.css" type=text/css rel=stylesheet>
    <LINK href="images/xtree.css" type=text/css rel=stylesheet>
    <LINK href="images/User_Login.css" type=text/css rel=stylesheet>
    <META http-equiv=Content-Type content="text/html; charset=gb2312">

</head>
<body id=userlogin_body>
    <form id="form1" runat="server">
   <DIV></DIV>

<DIV id=user_login>
<DL>
  <DD id=user_top>
  <UL>
    <LI class=user_top_l></LI>
    <LI class=user_top_c></LI>
    <LI class=user_top_r></LI></UL>
  <DD id=user_main>
  <UL>
    <LI class=user_main_l></LI>
    <LI class=user_main_c>
    <DIV class=user_main_box>
    <UL>
      <LI class=user_main_text>用户名： </LI>
      <LI class=user_main_input>
      
          <asp:TextBox ID="TxtUserName" runat="server" class="TxtUserNameCssClass"  maxLength=20></asp:TextBox>
      </LI></UL>
    <UL>
      <LI class=user_main_text>密 码： </LI>
      <LI class=user_main_input>
      
      <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" class="TxtPasswordCssClass"   maxLength=20></asp:TextBox>
      </LI></UL>
   </DIV></LI>
    <LI class=user_main_r>
    
        <asp:LinkButton ID="IbtnEnter"  class="IbtnEnterCssClass" runat="server" 
            onclick="IbtnEnter_Click">
        <img src="images/user_botton.gif"  style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px; height:100;"/>
        </asp:LinkButton>
 </LI></UL>
  <DD id=user_bottom>
  <UL>
    <LI class=user_bottom_l></LI>
    <LI class=user_bottom_c><SPAN style="MARGIN-TOP: 40px"></SPAN> </LI>
    <LI class=user_bottom_r></LI></UL>
    </DD>
    </DL>
    </DIV>
    </form>
</body>
</html>
