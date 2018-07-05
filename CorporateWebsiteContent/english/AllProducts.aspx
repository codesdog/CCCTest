<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllProducts.aspx.cs" Inherits="english_AllProducts" %>

<%@ Register src="../com/en/enProductCategory.ascx" tagname="enProductCategory" tagprefix="uc1" %>
<%@ Register src="../com/en/lxwm.ascx" tagname="lxwm" tagprefix="uc2" %>
<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>
<%@ Register src="../com/en/enTop.ascx" tagname="enTop" tagprefix="uc3" %>
<%@ Register src="../com/foot.ascx" tagname="foot" tagprefix="uc4" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void AspNetPager1_PageChanging(object src, PageChangingEventArgs e)
    {
        AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        bind2();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href ="../images/css.css" type ="text/css" rel="stylesheet" />
    <style type="text/css">
        .style1
        {
            height: 18px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc3:enTop ID="enTop1" runat="server" />
<table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr valign="top">
    <td width="220" bgcolor="#EEF2FA"><table width="98%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="line">
      <tr>
        <td width="100%" valign="top">
            <uc1:enProductCategory ID="enProductCategory1" runat="server" />
        </td>
      </tr>
    </table>
	<table width="98%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="line2">
      <tr>
        <td width="100%" valign="top" class="style1">
            <uc2:lxwm ID="lxwm1" runat="server" />
        </td>
      </tr>
    </table>
	</td>
    <td width="760"><table width="100%" height="500" border="0" cellpadding="0" cellspacing="0" id="Table1">
      <tr>
        <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" style="background:#DEE7F9">
          <tr>
            <td><div id="lat">当前位置：<a href="/">HomePage</a>&nbsp; &gt;<asp:Label ID="Label1" runat="server">ProductsCenter</asp:Label>
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
                          <td style="width:200px">
                              <a  href ='showproducts.aspx?id=<%#Eval("Id")%>'><%#Eval("ProTitle")%></a></td>
                      </tr>
                  </table>
                  </ItemTemplate></asp:DataList>
                  <webdiyer:aspnetpager ID="AspNetPager1" runat="server" 
                      CustomInfoHTML="第%CurrentPageIndex%页，共%PageCount%页，每页%PageSize%条" 
                      FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" 
                      onpagechanging="AspNetPager1_PageChanging" PageSize="6" PrevPageText="上一页" 
                      ShowCustomInfoSection="Left" ShowPageIndexBox="Always" SubmitButtonText="Go" 
                      TextAfterPageIndexBox="页" TextBeforePageIndexBox="转到">
                  </webdiyer:aspnetpager>
                </div></td>
            </tr>
          </table></td>
      </tr>
    </table></td>
  </tr>
</table> <uc4:foot ID="foot1" runat="server" />
    </div>
    </form>
</body>
</html>
