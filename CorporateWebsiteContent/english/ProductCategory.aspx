<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductCategory.aspx.cs" Inherits="english_ProductCategory" %>
<%@ Register src="../com/en/enAbout.ascx" tagname="enAbout" tagprefix="uc2" %>
<%@ Register src="../com/en/enProductCategory.ascx" tagname="enProductCategory" tagprefix="uc3" %>
<%@ Register src="../com/en/lxwm.ascx" tagname="lxwm" tagprefix="uc4" %>
<%@ Register src="../com/en/enTop.ascx" tagname="enTop" tagprefix="uc5" %>
<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>
<%@ Register src="../com/foot.ascx" tagname="foot" tagprefix="uc6" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
     <link href ="../images/css.css" type ="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div><uc5:enTop ID="enTop1" runat="server" />
     <table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr valign="top">
    <td width="220" bgcolor="#EEF2FA"><table width="98%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="line">
      <tr>
        <td width="100%" valign="top">
            <uc2:enAbout ID="enAbout1" runat="server" />
        </td>
      </tr>
    </table>
  
	<table width="98%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="line2">
      <tr>
        <td width="100%" valign="top">
           
            <uc3:enProductCategory ID="enProductCategory1" runat="server" />
        </td>
      </tr>
    </table>
     <table width="98%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="line">
      <tr>
        <td width="100%" valign="top">
            <uc4:lxwm ID="lxwm1" runat="server" />
        </td>
      </tr>
    </table>
	</td>
    <td width="760"><table width="100%" height="500" border="0" cellpadding="0" cellspacing="0" id="Table1">
      <tr>
        <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" style="background:#DEE7F9">
          <tr>
            <td><div id="lat">当前位置：<a href="/">HomePage</a> &gt;ProductCategory &gt;<asp:Label ID="Label1" runat="server"></asp:Label>
                                                </div></td>
          </tr>
        </table>
        
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><div id="body">
                  <asp:DataList ID ="dl_pro" runat ="server"  RepeatColumns="3" ><ItemTemplate>
                  <table  style="width:200px">
                      <tr>
                          <td style="width:200px">
                             <img src ='../<%#Eval("ProImg")%>' alt='<%#Eval("ProTitle")%>' style ="width:180px;  height:150px; padding :5px 5px 5px 5px ; border :5px; border-style:solid ; color:Gray " /></td>
                      </tr>
                      <tr>
                          <td style="width:200px; text-align:center ">
                             <strong> <a  href ='showproducts.aspx?id=<%#Eval("Id")%>'><%#Eval("ProTitle")%></a></strong></td>
                      </tr>
                  </table>
                  </ItemTemplate></asp:DataList>
                  <br />
                  <webdiyer:AspNetPager ID="AspNetPager1" runat="server" 
                      CustomInfoHTML="共%PageCount%页，当前为第%CurrentPageIndex%页，每页%PageSize%条" 
                      FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" 
                      onpagechanging="AspNetPager1_PageChanging" PrevPageText="上一页" 
                      ShowCustomInfoSection="Left" ShowPageIndexBox="Always" SubmitButtonText="Go" 
                      TextAfterPageIndexBox="页" TextBeforePageIndexBox="转到">
                  </webdiyer:AspNetPager>
                </div></td>
            </tr>
          </table></td>
      </tr>
    </table></td>
  </tr>
</table> 
        <uc6:foot ID="foot1" runat="server" />
    </div>
    </form>
</body>
</html>
