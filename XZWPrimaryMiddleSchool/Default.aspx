<%@ page language="C#" autoeventwireup="true" inherits="_Default, wrxuanke" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><%=Titlep %></title>
<STYLE type=text/css>
    BODY {
	BACKGROUND-COLOR: #1d3647; MARGIN: 0px; FONT-SIZE: 9pt
}

    .style3
    {
        height: 16px;
    }
    .style4
    {
        height: 33px;
    }
</STYLE>

<link rel="stylesheet" type="text/css" href="syimage/skin.css"  />

</head>
<body style="BORDER-BOTTOM: 0px; BORDER-LEFT: 0px; MARGIN: 0px; COLOR: #ffffff; BORDER-TOP: 0px; BORDER-RIGHT: 0px">
    <form id="form1" runat="server">
  <table border="0" cellSpacing="0" cellPadding="0" width="100%" height=166>

  <tr>
    <td height=42 vAlign=top>
      <table class=login_top_bg border="0" cellSpacing="0" cellPadding="0" 
      width="100%" height=42>
        <tbody>
        <tr>
          <td height=21 width="1%">&nbsp;</TD>
          <td height=42><SPAN >
              <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="sdafdsf" 
                  Target="_blank" ForeColor="Red">[HyperLink1]</asp:HyperLink>
              授权给： 
              <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
              使用</SPAN></TD>
          <td width="17%">
              <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </TD></TR></tbody></table></TD>
  </TR>
  <tr>
    <td vAlign=top>
      <table class=login_bg border="0" cellSpacing="0" cellPadding="0" width="100%">
        <tbody>
        <tr>
          <td width="56%" align=right>
            <table class=login_bg2 border=0 cellSpacing=0 cellPadding=0 
            width="91%" height=532>
              <tbody>
              <tr>
                <td height=138 vAlign=top>
                  <table border=0 cellSpacing=0 cellPadding=0 width="89%" 
                  >
                    <tbody>
                    <tr>
                      <td class="style4"></TD></TR>
                    <tr>
                      <td vAlign=top align=center class="style3"><IMG 
                        src="syimage/tz.gif" ></TD></TR>
                    <tr>
                      <td height=198 vAlign=top align=left  class=login_txt>
                          <asp:Label ID="Label1" runat="server" Text="公告"></asp:Label>
                        </TD></TR></tbody></table></TD></TR></tbody></table></TD>
          <td width="1%">&nbsp;</TD>
          <td vAlign=bottom width="50%">
            <table border=0 cellSpacing=0 cellPadding=0 width="100%" 
            align=center height=59>
              <tbody>
              <tr>
                <td width="4%">&nbsp;</TD>
                <td height=38 width="96%"><SPAN 
                  class=login_txt_bt>输入登陆信息</SPAN></TD></TR>
              <tr>
                <td>&nbsp;</TD>
                <td height=21>
                  <table id=table211 border=0 cellSpacing=0 cellPadding=0 
                  width="100%" height=328>
                    <tbody>
                    <tr>
                      <td height=164 colSpan=2 align=middle>
                        <table id=table212 border=0 cellSpacing=0 cellPadding=0 
                        width="100%" height=143>
                          <tbody>
                         <tr>
                            <td  height=38 width="66"><SPAN 
                              class=login_txt>用户类型：</SPAN></TD>
                            <td class=top_hui_text height=38 colSpan=2 align="left">
                                <asp:DropDownList ID="DropDownList1" runat="server" Width="122px">
                                    <asp:ListItem Selected="True">学生</asp:ListItem>
                                    <asp:ListItem>老师</asp:ListItem>
                                    <asp:ListItem>管理员</asp:ListItem>
                                </asp:DropDownList>
                              </TD></TR> <tr>
                            <td  height=38 width="66"><SPAN 
                              class=login_txt>登陆名称：</SPAN></TD>
                            <td class=top_hui_text height=38 colSpan=2 align="left"><asp:TextBox ID="dengluming" runat="server" Width="120px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="dengluming" ErrorMessage="请输入账号"></asp:RequiredFieldValidator>
                              </TD></TR>
                          <tr>
                            <td  height=35 width="66"><SPAN 
                              class=login_txt>登陆密码： </SPAN></TD>
                            <td class=top_hui_text height=35 colSpan=2 align="left">
                                    <asp:TextBox ID="mima" runat="server" TextMode="Password" Width="119px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="mima" ErrorMessage="请输入密码"></asp:RequiredFieldValidator>
                                    </TD></TR>
                          <tr>
                            <td height=35  width="66"><SPAN 
                              class=login_txt>验&nbsp; 证&nbsp; 码：</SPAN></TD>
                            <td class=top_hui_text height=35 colSpan=2 align="left"> <asp:TextBox ID="CheckCode" runat="server" CssClass="cc07" Width="70px"></asp:TextBox>
                                                    <img src="ValidateCode.aspx" onclick="this.src=this.src+'?'" height="18" alt="看不清验证码,请单击"
                                                        style="cursor: hand;" />
                              </TD></TR>
                          <tr>
                            <td height=35  width="66">
                                <asp:Button ID="Button1" runat="server" Text="登陆" onclick="Button1_Click" />
                              </TD>
                            <td height=35 >&nbsp;</TD>
                            <td class=top_hui_text align="left">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                    ShowMessageBox="True" ShowSummary="False" />
                              </TD></TR></tbody></table><BR></TD></TR>
                    <tr>
                      <td height=164 vAlign=bottom width=433 align=right><IMG 
                        src="syimage/login-wel.gif" width=242 
                        height=138></TD>
                      <td vAlign=bottom width=57 
                    align=right>&nbsp;</TD></TR></tbody></table></TD></TR></tbody></table>
            
            </TD></TR></tbody></table></TD>
  </TR>
  <tr>
    <td height=50>
      <table class=login-buttom-bg border="0" cellSpacing="0" cellPadding="0" 
      width="100%">
        <tbody>
        <tr>
          <td align=middle>&nbsp;</TD></TR>
        <tr>
          <td align=middle><SPAN style="FONT-SIZE: 9pt"><%=Titlep %> &nbsp;&nbsp;&nbsp; 联系电话：<%=Descriptionp%>&nbsp;&nbsp;&nbsp; 技术支持：&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="sdafdsf" 
                  Target="_blank" ForeColor="Red">[HyperLink1]</asp:HyperLink>
              <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
              </SPAN>
           </TD></TR></tbody></table></TD>
  </TR>
</table>
    </form>
</body>
</html>
