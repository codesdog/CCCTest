<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about2.aspx.cs" Inherits="about2" %>
<%@ Register Src="com/foot.ascx" TagName="foot" TagPrefix="uc1" %>
<%@ Register Src="com/top.ascx" TagName="top" TagPrefix="uc1" %>
<%@ Register Src="com/About.ascx" TagName="About" TagPrefix="uc2" %>
<%@ Register Src="com/lxwm.ascx" TagName="lxwm" TagPrefix="uc3" %>
<%@ Register src="com/ProductCategory.ascx" tagname="ProductCategory" tagprefix="uc4" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
     <link href ="images/css.css" type ="text/css" rel="stylesheet" />
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
           <uc4:ProductCategory ID="ProductCategory1" runat="server" />
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
            <td><div id="lat">当前位置：<a href="/">首 页</a> &gt;<asp:Label ID="Label1" runat="server"></asp:Label>
                                                </div></td>
          </tr>
        </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><div id="title"><asp:Label ID ="lbl_title" runat ="server" ></asp:Label></div></td>
            </tr>
          </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><div id="body">
          <asp:Label ID ="lbl_con" runat ="server" ></asp:Label>
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
