<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllProducts.aspx.cs" Inherits="AllProducts" %>
<%@ Register Src="com/About.ascx" TagName="About" TagPrefix="uc2" %>
<%@ Register Src="com/lxwm.ascx" TagName="lxwm" TagPrefix="uc3" %>
<%@ Register src="com/top.ascx" tagname="top" tagprefix="uc1" %>
<%@ Register Src="com/foot.ascx" TagName="foot" TagPrefix="uc1" %>
<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>
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
    
        <uc1:top ID="top1" runat="server" />
     <table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr valign="top">
    <td width="220" bgcolor="#EEF2FA"><table width="98%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="line">
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
            <td><div id="lat">当前位置：<a href="/">首 页</a>&nbsp; &gt;<asp:Label ID="Label1" runat="server">产品中心</asp:Label>
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
                             <img src ='<%#Eval("ProImg")%>' alt='<%#Eval("ProTitle")%>' style ="width:180px;  height:150px; padding :5px 5px 5px 5px ; border :5px; border-style:solid ; color:Gray " /></td>
                      </tr>
                      <tr>
                          <td style="width:200px">
                              <a  href ='showproducts.aspx?id=<%#Eval("Id")%>'><%#Eval("ProTitle")%></a></td>
                      </tr>
                  </table>
                  </ItemTemplate></asp:DataList>
                  <webdiyer:AspNetPager ID="AspNetPager1" runat="server" 
                      CustomInfoHTML="第%CurrentPageIndex%页，共%PageCount%页，每页%PageSize%条" 
                      FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" 
                      onpagechanging="AspNetPager1_PageChanging" PageSize="6" PrevPageText="上一页" 
                      ShowCustomInfoSection="Left" ShowPageIndexBox="Always" SubmitButtonText="Go" 
                      TextAfterPageIndexBox="页" TextBeforePageIndexBox="转到">
                  </webdiyer:AspNetPager>
                </div></td>
            </tr>
          </table></td>
      </tr>
    </table></td>
  </tr>
</table>  <uc1:foot ID="Foot1" runat="server" />
    </div>
    </form>
</body>
</html>
