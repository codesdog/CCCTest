<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Resume.aspx.cs" Inherits="Resume" %>

<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>
<%@ Register src="../com/en/enTop.ascx" tagname="enTop" tagprefix="uc1" %>
<%@ Register src="../com/en/enAbout.ascx" tagname="enAbout" tagprefix="uc2" %>
<%@ Register src="../com/en/lxwm.ascx" tagname="lxwm" tagprefix="uc3" %>
<%@ Register src="../com/foot.ascx" tagname="foot" tagprefix="uc4" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
 <title>无标题页</title>
    <link href ="../images/css.css" type ="text/css" rel="stylesheet" />
    <style type="text/css">
        .style1
        {
            width: 750px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:enTop ID="enTop1" runat="server" />
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
            <uc3:lxwm ID="lxwm1" runat="server" />
        </td>
      </tr>
    </table>
	</td>
    <td width="760"><table width="100%" height="500" border="0" cellpadding="0" cellspacing="0" id="Table1">
      <tr>
        <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" style="background:#DEE7F9">
          <tr>
            <td><div id="lat">当前位置：<a href="/">首 页</a> &gt;<asp:Label ID="Label1" runat="server">招贤纳士</asp:Label>
                                                </div></td>
          </tr>
        </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><div id="title">公司招聘信息</div></td>
            </tr>
          </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><div id="body">
                  <asp:DataList ID="DataList1" runat="server">
                  <HeaderTemplate> <table class="style1">
                      <tr style ="background-color:#DEE7F9">
                          <td   style="text-align: center; width:20px">
                              <img src ="../images/fuhao_08.gif" /></td>
                          <td  style ="width:400px; text-align:center ">
                              招聘职位</td>
                          <td style="width:50px; text-align :center ">
                              招聘人数</td>
                          <td style="width:120px; text-align :center ;">
                             发布时间</td>
                          <td style ="width:100px; text-align :center ">
                              应聘点这里</td>
                      </tr>
                  </table></HeaderTemplate>
                  <ItemTemplate>
                   <table class="style1">
                      <tr style ="background-color:#DEE7F9">
                          <td   style="text-align: center; width:20px">
                              <img src ="../images/fuhao_08.gif" /></td>
                          <td  style ="width:400px; text-align:left ">
                            <a href='rs.aspx?id=<%#Eval("Id")%>' title ="查看详细"> <strong> <%#Eval("title")%></strong></a></td>
                          <td style="width:50px; text-align :center ">
                              <%#Eval("Numberw")%></td>
                          <td style="width:120px; text-align :center ;">
                             <%#Eval("PostTime") %></td>
                          <td style ="width:100px; text-align :center ">
                               <a href ='yinpin.aspx?id=<%#Eval("Id")%>' ><img src ="../images/zhaopin_03.gif" alt="我要应聘" /></a></td>
                      </tr>
                  </table>
                  </ItemTemplate>
                  </asp:DataList>
                  <webdiyer:AspNetPager ID="AspNetPager1" runat="server"  PageSize="6" 
                      CustomInfoHTML="共%PageCount%页，当前为第%CurrentPageIndex%页，每页%PageSize%条" 
                      FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" 
                      onpagechanging="AspNetPager1_PageChanging" PageIndexBoxType="DropDownList" 
                      PrevPageText="上一页" ShowCustomInfoSection="Left" ShowPageIndexBox="Always" 
                      SubmitButtonText="Go" TextAfterPageIndexBox="页" TextBeforePageIndexBox="转到">
                  </webdiyer:AspNetPager>

                 
                </div></td>
            </tr>
          </table></td>
      </tr>
    </table></td>
  </tr>
</table>
            <uc4:foot ID="foot2" runat="server" />
    </div>
    </form>
</body>
</html>