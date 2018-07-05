<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="Web.news" Title="新闻中心" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="150" background="images/bn2.jpg">&nbsp;</td>
  </tr>
</table>
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td height="32" class="xia2">　　首页 &gt; 公司新闻 &gt; 公告信息 </td>
  </tr>
</table>
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="200" height="500" valign="top" class="you"><table width="200" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="50"><div align="center"><img src="images/left2.jpg" width="190" height="30" /></div></td>
      </tr>
      <tr>
        <td height="28">　　<a href="news.aspx?id=1" class="black02">　公告信息</a></td>
      </tr>
      <tr>
        <td height="28">　　<a href="news.aspx?id=2" class="black02">　行业动态</a></td>
      </tr>
      <tr>
        <td height="408" valign="bottom"><img src="images/wall-papge_06.jpg" width="199" height="251" /></td>
      </tr>
    </table></td>
    <td width="580"><table width="550" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td class="blue3" style="height: 40px"><strong>
            <asp:Label ID="lbl_Title" runat="server"></asp:Label></strong></td>
      </tr>
      <tr>
        <td height="602" valign="top"><span class="black02">
            <table align="center" bgcolor="#fbfeff" border="0" cellpadding="0" cellspacing="3"
                width="100%">
                <tr>
                    <td style="height: 19px">
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <asp:Repeater ID="rp_NewsList" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td height="24" style="border-bottom: #999999 1px dotted">
                                            <img height='11' src='Image/dot.gif' width='7'>&nbsp;<span style="font-size: 9pt;
                                                line-height: 15pt"> <a href='ViewNews.aspx?id=<%#Eval("id") %>' title='<%#Eval("title") %>'>
                                                    <%#Eval("title") %>
                                                </a></span><font color="#999999">
                                                    <%#(Eval("hasPic").ToString()=="1"?"<img alt='图片新闻' border='0' src='image/picnews.gif'/>":"") %>
                                                    [<%#Eval("AddTime","{0:yyyy年MM月dd日}") %>]</font> <font color="#999999">(阅读<font color="#FF0000"><%#Eval("ReadCount") %></font>次)</font>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </table>
                    </td>
                </tr>
            </table>
            <div style="width: 100%; text-align: left">
                <table bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" height="8" width="100%">
                    <tr>
                        <td align="center">
                        </td>
                    </tr>
                </table>
                <div style="margin: 0px auto; width: 96%">
                    <table bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" height="8" width="100%">
                        <tr>
                            <td class="font1" style="height: 46px">
                                <%-- <table width="100%" height="19" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr bgcolor="#F7F7F7">
                        <td width="22%" height="18">&nbsp;&nbsp;首页 &gt;&gt; <asp:Label ID="Label1" runat="server"></asp:Label></td>
                        <td width="78%">&nbsp; </td>
                      </tr>
                      <tr>
                        <td colspan="2" bgcolor="#999999" style="height: 1px"></td>
                      </tr>
                    </table>--%>
                                <table align="center" bgcolor="#fbfeff" border="0" cellpadding="0" cellspacing="3"
                                    width="100%">
                                    <tr>
                                        <td>
                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                <asp:Repeater ID="Repeater1" runat="server">
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td height="24" style="border-bottom: #999999 1px dotted">
                                                                <img height='11' src='Image/dot.gif' width='7'>&nbsp;<span style="font-size: 9pt;
                                                                    line-height: 15pt"> <a href='ViewNews.aspx?id=<%#Eval("id") %>' title='<%#Eval("title") %>'>
                                                                        <%#Eval("title") %>
                                                                    </a></span><font color="#999999">
                                                                        <%#(Eval("hasPic").ToString()=="1"?"<img alt='图片新闻' border='0' src='image/picnews.gif'/>":"") %>
                                                                        [<%#Eval("AddTime","{0:yyyy年MM月dd日}") %>]</font> <font color="#999999">(阅读<font color="#FF0000"><%#Eval("ReadCount") %></font>次)</font>
                                                            </td>
                                                        </tr>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td style="height: 41px" width="20">
                            </td>
                            <td align="right" style="height: 41px">
                                <form id="form1" runat="server">
                                    <webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="True" CustomInfoHTML="共有  <b><font color='red'>%RecordCount%</font></b>  条记录 当前页<b><font color='red'>%CurrentPageIndex%</font>/%PageCount%</b>   次序 %StartRecordIndex%-%EndRecordIndex%"
                                        FirstPageText="首页" HorizontalAlign="right" InputBoxStyle="width:19px" LastPageText="尾页"
                                        meta:resourceKey="AspNetPager1" NextPageText="下一页" NumericButtonCount="5" OnPageChanged="AspNetPager1_PageChanged"
                                        PageSize="20" PrevPageText="上一页" ShowCustomInfoSection="Left" Style="font-size: 12px"
                                        Width="95%">
                                    </webdiyer:AspNetPager>
                                </form>
                            </td>
                            <td style="height: 41px" width="20">
                            </td>
                        </tr>
                    </table>
                </div>
                <table bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" height="8" width="100%">
                    <tr>
                        <td align="center" height="70">
                            &nbsp;</td>
                    </tr>
                </table>
            </div>
          </span>
          <p class="black">&nbsp;</p>          </td>
      </tr>
    </table></td>
  </tr>
</table>
</asp:Content>



