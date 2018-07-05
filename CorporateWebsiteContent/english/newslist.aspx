<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newslist.aspx.cs" Inherits="newslist" %>
<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>
<%@ Register src="../com/en/enTop.ascx" tagname="enTop" tagprefix="uc5" %>
<%@ Register src="../com/en/newsclass.ascx" tagname="newsclass" tagprefix="uc6" %>
<%@ Register src="../com/en/tuijian.ascx" tagname="tuijian" tagprefix="uc7" %>
<%@ Register src="../com/foot.ascx" tagname="foot" tagprefix="uc8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>无标题页</title>
    <link href ="../images/css.css" type ="text/css" rel="Stylesheet" />
    <style type="text/css">
        .style1
        {
            width: 990px;
            margin:0 auto;
        }
        .style2
        {
            width: 100%;
            line-height:25px;
        }
        .style3
        {
            width: 22px;
            text-align: center;
        }
        .style4
        {
            width: 541px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
  <div style="text-align: center">
        <uc5:enTop ID="enTop1" runat="server" />
        <table class="style1">
            <tr><td style="wdith:250px"  valign="top">
                <uc6:newsclass ID="newsclass1" runat="server" />
                <uc7:tuijian ID="tuijian1" runat="server" />
                </td>
                <td style="width:750px; text-align: left;" valign="top">
                   <div id="lat">当前位置：<a href="/">HomePage</a> >NewsCenter</div><div >
                  <asp:Repeater ID ="rp_news" runat ="server" ><ItemTemplate >
                    <table class="style2">
                        <tr>
                            <td class="style3">
                                <img src ="../images/fuhao_08.gif" alt ="新闻列表" /></td>
                            <td class="style4">
                              【<a href ='newsclass.aspx?id=<%#Eval("NewsClassId") %>'><%#Eval("NewsClassName")%></a>】 <a href ='newsdetail.aspx?id=<%#Eval("NewsId")%>' title='<%#Eval("NewsTitle")%>'><%#Eval("NewsTitle").ToString ()%></a></td>
                                    <td style="text-align: center">
                                       <%#Eval("NewsTime") %></td>
                                </tr>
                            </table>
                  </ItemTemplate></asp:Repeater>
                        <webdiyer:AspNetPager ID="AspNetPager1" runat="server"  PageSize="15"
                        CustomInfoHTML="共%PageCount%页，当前为第%CurrentPageIndex%页，每页%PageSize%条" 
                        FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" 
                        onpagechanging="AspNetPager1_PageChanging" PrevPageText="上一页" 
                        ShowCustomInfoSection="Left" ShowPageIndexBox="Always" SubmitButtonText="Go" 
                        TextAfterPageIndexBox="页" TextBeforePageIndexBox="转到">
                    </webdiyer:AspNetPager>
                        </div></td>
                   
            </tr>
        </table>
            <uc8:foot ID="foot2" runat="server" />
    
    </div>
    </form>
</body>
</html>
