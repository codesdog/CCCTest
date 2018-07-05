<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ckbook.aspx.cs" Inherits="ckbook" %>

<%@ Register Src="com/foot.ascx" TagName="foot" TagPrefix="uc1" %>
<%@ Register Src="com/top.ascx" TagName="top" TagPrefix="uc1" %>
<%@ Register Src="com/About.ascx" TagName="About" TagPrefix="uc2" %>
<%@ Register Src="com/lxwm.ascx" TagName="lxwm" TagPrefix="uc3" %>

<%@ Register src="com/Book.ascx" tagname="Book" tagprefix="uc4" %>

<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href ="images/css.css" type ="text/css" rel="stylesheet" />
    <style type="text/css">
        .style3
        {
            width: 64px;
        }
        .style4
        {
        }
        .style5
        {
            width: 89px;
            text-align: center;
        }
        .style6
        {
            width: 79px;
            text-align: center;
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
           <uc4:Book ID="Book1" runat="server" />
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
            <td><div id="lat">当前位置：<a href="/">首 页</a> >在线留言</div></td>
          </tr>
        </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><div id="title"><a href ="feedback.aspx" >在线留言如您对本公司有何建议，<br />
                  请在这里输入您的良言！</a></div></td>
            </tr>
          </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><div id="body">
                  
                  <asp:DataList  ID ="rp_book" runat ="server" ><ItemTemplate >
                  <table width="730px" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="line">
                      <tr style="background-color:#DEE7F9">
                          <td class="style5">
                             留言人：</td>
                          <td class="style6">
                              <%#Eval("author") %></td>
                          <td class="style3">
                              留言标题：</td>
                          <td>
                              <%#Eval("title") %>【留言时间：<%#Eval("addtime") %>】</td>
                      </tr>
                      <tr>
                          <td class="style5">
                              留言内容：</td>
                          <td class="style4" colspan="3" valign="top">
                             <%#FormatString(Eval("content").ToString())%></td>
                      </tr>
                      <tr>
                          <td class="style5">
                              管理员回复：</td>
                          <td class="style4" colspan="3" style="color:Red ">
                              <%#Eval("reply") %></td>
                                                        </tr>
                                                        </table>
                  
                  </ItemTemplate></asp:DataList>
                  <br />
                  <webdiyer:AspNetPager ID="AspNetPager1" runat="server"  PageSize ="4"
                      CustomInfoHTML="共%PageCount%页，当前为第%CurrentPageIndex%页，每页%PageSize%条" 
                      FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" 
                      onpagechanging="AspNetPager1_PageChanging" PrevPageText="上一页" 
                      ShowBoxThreshold="2" ShowCustomInfoSection="Left" SubmitButtonText="Go" 
                      TextAfterPageIndexBox="页" TextBeforePageIndexBox="转到">
                  </webdiyer:AspNetPager>
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