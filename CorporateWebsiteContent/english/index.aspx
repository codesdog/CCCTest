<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="english_index" %>

<%@ Register Src="../com/foot.ascx" TagName="foot" TagPrefix="uc3" %>
<%@ Register Src="../com/en/enAbout.ascx" TagName="enAbout" TagPrefix="uc4" %>
<%@ Register Src="../com/en/enTop.ascx" TagName="enTop" TagPrefix="uc5" %>
<%@ Register Src="../com/en/enProductCategory.ascx" TagName="enProductCategory" TagPrefix="uc1" %>
<%@ Register Src="../com/en/tuijian.ascx" TagName="tuijian" TagPrefix="uc2" %>
<%@ Register Src="../com/en/lxwm.ascx" TagName="lxwm" TagPrefix="uc6" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="../images/css.css" rel="stylesheet" type="text/css" />
    <link href="../css/css.css" type="text/css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc5:enTop ID="enTop1" runat="server" />
        <table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr valign="top">
                <td width="760">
                    <table width="756" border="0" cellpadding="0" cellspacing="0" id="line">
                        <tr bgcolor="#FFFFFF">
                            <td valign="top">
                                <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#DEE7F9">
                                    <tr>
                                        <td>
                                            <div id="abt">
                                                Company Instruction</div>
                                        </td>
                                        <td>
                                            <div id="abta">
                                                <a href="about.aspx?id=1">更多>></a></div>
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="39%" bgcolor="#FFFFFF">
                                            <div class="aboutpic">
                                                <img src="../images/1.bmp" />
                                                <script src="/adfile/ad9.js"></script>
                                            </div>
                                        </td>
                                        <td width="61%" valign="top" style="text-align: left; line-height: 25px">
                                            <span style="padding-left: 10px">
                                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></span>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table width="756" border="0" cellpadding="0" cellspacing="0" id="line2">
                        <tr>
                            <td valign="top" bgcolor="#FFFFFF">
                                <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#DEE7F9">
                                    <tr>
                                        <td>
                                            <div id="abt">
                                                Company Products</div>
                                        </td>
                                        <td>
                                            <div id="abta">
                                                <a href="AllProducts.aspx">更多&gt;&gt;</a></div>
                                        </td>
                                    </tr>
                                </table>
                                <table width="97%" border="0" align="center" cellpadding="0" cellspacing="0" style="margin: 5px auto">
                                    <tr>
                                        <td>
                                            <table style="width: 100%">
                                                <tr>
                                                    <td style="width: 100%; height: 27px;">
                                                        <div id="demoleft" style="overflow: hidden; width: 749px; color: #000000; height: 170px;
                                                            text-align: left;">
                                                            <table border="0" cellpadding="0" cellspacing="0" cellspace="0">
                                                                <tbody>
                                                                    <tr>
                                                                        <td id="demo1left" valign="top" align="middle" style="width: 691px; height: 150px">
                                                                            <!--显示产品-->
                                                                            <asp:DataList ID="DLproduct" runat="server" RepeatDirection="Horizontal">
                                                                                <ItemTemplate>
                                                                                    <table cellspacing="6" cellpadding="0" border="0" style="border-right: lightgrey 2px solid;
                                                                                        border-top: lightgrey 2px solid; border-left: lightgrey 2px solid; border-bottom: lightgrey 2px solid">
                                                                                        <tbody>
                                                                                            <tr align="middle">
                                                                                                <td style="width: 111px">
                                                                                                    <a href='showproducts.aspx?id=<%#Eval("Id")%>' title='<%#Eval("ProTitle")%>' target="_blank">
                                                                                                        <img src='../<%#Eval("ProImg")%>' style="border: 5px; border-style: solid; padding: 5px 5px 5px 5px;
                                                                                                            border-color: Gray; width: 120px; height: 100px" /></a>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr align="middle">
                                                                                                <td style="width: 111px; text-align: center">
                                                                                                    <%#Eval("ProTitle")%>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </ItemTemplate>
                                                                            </asp:DataList>
                                                                            <!--显示产品结束-->
                                                                        </td>
                                                                        <td id="demo2left" valign="top" visible="true" style="height: 196px">
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <script>
                                                    var speed = 20//速度数值越大速度越慢,demo2.offsetWidth=demo1.offsetWidth=固定值
                                                    demo2left.innerHTML = demo1left.innerHTML
                                                    function Marquee() {
                                                        if (demo2left.offsetWidth - demoleft.scrollLeft <= 0)//其实demo.scrollLeft是有 最大值的，和demo0.width,引用的图片的width有关系。demo过了一半（每半内容一样的），重新开始循环
                                                            demoleft.scrollLeft -= demo1left.offsetWidth
                                                        else {
                                                            demoleft.scrollLeft++//不断的增加，相当于父容器的滚动条不断是缩小；但由于OVERFLOW: hidden; （滚动条不可见）
                                                        }
                                                    }
                                                    var MyMarleft = setInterval(Marquee, speed)
                                                    demoleft.onmouseover = function () { clearInterval(MyMarleft) }
                                                    demoleft.onmouseout = function () { MyMarleft = setInterval(Marquee, speed) }
                                                </script>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table width="756" border="0" cellpadding="0" cellspacing="0" id="Table2" style="border-right: #dee7f9 1px solid;
                        border-top: #dee7f9 1px solid; border-left: #dee7f9 1px solid; border-bottom: #dee7f9 1px solid">
                        <tr bgcolor="#FFFFFF">
                            <td valign="top">
                                <table style="width: 100%; background-color: #DEE7F9; font-weight: bold; font-size: 13px;
                                    color: dimgray; line-height: 25px;" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td style="width: 50%; height: 14px; text-align: left;">
                                            CompanyNews
                                        </td>
                                        <td style="width: 50%; height: 14px; text-align: left;">
                                            HangNews
                                        </td>
                                    </tr>
                                </table>
                                <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" style="margin: 10px auto">
                                    <tr>
                                        <td valign="top" style="height: 12px; text-align: left;">
                                            <asp:DataList ID="DataList1" runat="server" Width="47px">
                                                <ItemTemplate>
                                                    <table style="width: 350px; border-bottom-style: solid; border-bottom-width: 1px;
                                                        border-bottom-color: #CCCCCC;">
                                                        <tr>
                                                            <td width="12" align="center">
                                                                <img src="../images/fuhao_08.gif" />
                                                            </td>
                                                            <td width="333">
                                                                <a href='newsdetail.aspx?id=<%#Eval("NewsId")%>' title='<%#Eval("NewsTitle")%>'>
                                                                    <%#CutString(Eval("NewsTitle").ToString ())%></a>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </td>
                                        <td style="height: 12px; text-align: left;" valign="top">
                                            <asp:DataList ID="DataList2" runat="server" Width="47px">
                                                <ItemTemplate>
                                                    <table style="width: 350px; border-bottom-style: solid; border-bottom-width: 1px;
                                                        border-bottom-color: #CCCCCC;">
                                                        <tr>
                                                            <td width="12" align="center">
                                                                <img src="../images/fuhao_08.gif" />
                                                            </td>
                                                            <td width="333">
                                                                <a href='newsdetail.aspx?id=<%#Eval("NewsId")%>' title='<%#Eval("NewsTitle")%>'>
                                                                    <%#CutString(Eval("NewsTitle").ToString ())%></a>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="220" bgcolor="#FFFFFF">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF"
                        id="Table3">
                        <tr>
                            <td width="100%" valign="top">
                                <!--这是注册功能
        <asp:Panel ID ="pl_login" runat ="server" >
         <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#DEE7F9">
          <tr>
            <td><div id="Div1">注册登录</div></td>
          </tr>
        </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin:3px auto">
            <tr>
              <td style="height: 12px"><div style="text-align:center; line-height:24px">
                  wq</div></td>
            </tr>
          </table>
        </asp:Panel>-->
                                <uc4:enAbout ID="enAbout1" runat="server" />
                            </td>
                        </tr>
                    </table>
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF"
                        id="Table1">
                        <tr>
                            <td width="100%" valign="top">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin: 3px auto">
                                    <tr>
                                        <td style="height: 12px">
                                            <uc1:enProductCategory ID="enProductCategory1" runat="server" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF"
                        id="Table6">
                        <tr>
                            <td width="100%" valign="top">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin: 3px auto">
                                    <tr>
                                        <td style="height: 12px">
                                            <uc2:tuijian ID="tuijian1" runat="server" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF"
                        id="Table4">
                        <tr>
                            <td width="100%" valign="top">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin: 3px auto">
                                    <tr>
                                        <td style="height: 12px">
                                            <uc6:lxwm ID="lxwm1" runat="server" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr valign="top">
                <td>
                    &nbsp;
                </td>
                <td bgcolor="#FFFFFF">
                    &nbsp;
                </td>
            </tr>
        </table>
        <uc3:foot ID="foot1" runat="server" />
    </div>
    </form>
</body>
</html>
