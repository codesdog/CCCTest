<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rs.aspx.cs" Inherits="rs" %>

<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>
<%@ Register src="../com/en/enTop.ascx" tagname="enTop" tagprefix="uc4" %>
<%@ Register src="../com/en/enAbout.ascx" tagname="enAbout" tagprefix="uc5" %>
<%@ Register src="../com/en/lxwm.ascx" tagname="lxwm" tagprefix="uc6" %>
<%@ Register src="../com/foot.ascx" tagname="foot" tagprefix="uc7" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
 <title>无标题页</title>
    <link href ="../images/css.css" type ="text/css" rel="stylesheet" />
        <style type="text/css">
            .style1
            {
                width: 700px;
            }
            .style2
            {
                width: 200px;
                text-align: center;
            }
            .style3
            {
            	width:490px;
            }
            .style4
            {
                width: 470px;
            }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc4:enTop ID="enTop1" runat="server" />
    <table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr valign="top">
    <td width="220" bgcolor="#EEF2FA"><table width="98%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="line">
      <tr>
        <td width="100%" valign="top">
            <uc5:enAbout ID="enAbout1" runat="server" />
        </td>
      </tr>
    </table>
	<table width="98%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="line2">
      <tr>
        <td width="100%" valign="top">
            <uc6:lxwm ID="lxwm1" runat="server" />
        </td>
      </tr>
    </table>
	</td>
    <td width="760"><table width="100%" height="500" border="0" cellpadding="0" cellspacing="0" id="Table1">
      <tr>
        <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" style="background:#DEE7F9">
          <tr>
            <td><div id="lat">当前位置：<a href="/">首 页</a> &gt;<asp:Label ID="Label1" runat="server">招贤纳士</asp:Label>
                                                &nbsp;&gt;查看详细信息</div></td>
          </tr>
        </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><div id="title">公司招聘信息
                             <img src ="images/zhaopin_03.gif" alt="我要应聘" /></div></td>
            </tr>
          </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><div id="body">
                  <table class="style1">
                      <tr style ="background-color:#DEE7F9">
                          <td class="style2" valign="top">
                              招聘职位：</td>
                          <td class="style4">
                              <asp:Label ID="Label2" runat="server"></asp:Label>
                          </td>
                          <td style="text-align: left; width:200px">
                              发布时间：<asp:Label ID="Label3" runat="server"></asp:Label>
                          </td>
                      </tr>
                      <tr  style ="background-color:#DEE7F9">
                          <td class="style2">
                              招聘人数：</td>
                          <td class="style3" colspan="2">
                              <asp:Label ID="Label4" runat="server"></asp:Label>
                                                            </td>
                      </tr>
                      <tr  style ="background-color:#DEE7F9">
                          <td class="style2" valign ="top">
                              招聘简介：</td>
                          <td class="style3" colspan="2">
                              <asp:Label ID="Label5" runat="server"></asp:Label>
                          </td>
                      </tr>
                      <tr  style ="background-color:#DEE7F9">
                          <td class="style2" valign ="top">
                              职位信息：</td>
                          <td class="style3" colspan="2">
                              <asp:Label ID="Label6" runat="server"></asp:Label>
                          </td>
                      </tr>
                      <tr  style ="background-color:#DEE7F9">
                          <td class="style2">
                              发布单位：</td>
                          <td class="style3" colspan="2">
                              <asp:Label ID="Label7" runat="server"></asp:Label>
                          </td>
                      </tr>
                      <tr  style ="background-color:#DEE7F9">
                          <td class="style2">
                              联系方式：</td>
                          <td class="style3" colspan="2">
                              <asp:Label ID="Label8" runat="server"></asp:Label>
                          </td>
                      </tr>
                      <tr  style ="background-color:#DEE7F9">
                          <td class="style2">
                              &nbsp;</td>
                          <td class="style3" colspan="2">
                              <asp:ImageButton ID="ImageButton1" runat="server" 
                                  ImageUrl="~/images/zhaopin_03.gif" onclick="ImageButton1_Click" />
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
    </div>
        <uc7:foot ID="foot2" runat="server" />
    </form>
</body>
</html>