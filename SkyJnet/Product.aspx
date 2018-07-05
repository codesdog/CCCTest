<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Web.Product" Title="Untitled Page" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<%@ Register TagPrefix="uc1" TagName="uc_LeftContents"   Src="~/LeftContents.ascx"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="150" background="images/bn3.jpg">&nbsp;</td>
  </tr>
</table>
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td height="32" class="xia2"> 　　首页 &gt; 产品展示 </td>
  </tr>
</table>
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="200" height="500" valign="top" class="you">
    <table width="200" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="50"><div align="center"><img src="images/left3.jpg" width="190" height="30" /></div></td>
      </tr>

    </table>
              	<!--左边自定义控件-->
              <uc1:uc_LeftContents id="LeftContents" runat="server" OnLoad="LeftContents_Load" ></uc1:uc_LeftContents>
              </td>
    <td width="580" valign="top"><table width="550" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="40" class="blue3"><strong>
            <asp:Label ID="lbl_Title" runat="server"></asp:Label></strong></td>
      </tr>
      <tr>
        <td height="200" valign="top"><p class="black">
            <asp:Repeater ID="rp_ProductList" runat="server">
                                <ItemTemplate>
                                    <div style="float: left; width: 128px; margin-left: 25px; margin-right: 13px; margin-top: 10px;">
                                        <div style="float: left; width: 128px; height: 100px; padding: 2px; border: 1px #cccccc solid;">
                                            <a href='ViewProduct.aspx?id=<%#Eval("id") %>'>
                                                <img border="0" height="100" src='uploadpic/<%#Eval("ProductPic")%>' width="128" /></a>
                                        </div>
                                        <div style="float: left; width: 134px; height: 30px; line-height: 30px; text-align: center;">
                                            <a href='ViewProduct.aspx?id=<%#Eval("id") %>' title='<%#Eval("ProductName") %>'><font
                                                color="986A01">
                                                <%#cutstr(Eval("ProductName").ToString(),8)%>
                                            </font></a>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
            &nbsp;</p>
            <div style="margin: 0px auto; width: 96%">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td style="height: 41px" width="20">
                        </td>
                        <td align="right" style="height: 41px">
                            <form id="form1" runat="server">
                                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="True" CustomInfoHTML="共有  <b><font color='red'>%RecordCount%</font></b>  条记录 当前页<b><font color='red'>%CurrentPageIndex%</font>/%PageCount%</b>   次序 %StartRecordIndex%-%EndRecordIndex%"
                                    FirstPageText="首页" HorizontalAlign="right" InputBoxStyle="width:19px" LastPageText="尾页"
                                    meta:resourceKey="AspNetPager1" NextPageText="下一页" NumericButtonCount="5" OnPageChanged="AspNetPager1_PageChanged"
                                    PageSize="6" PrevPageText="上一页" ShowCustomInfoSection="Left" Style="font-size: 12px"
                                    Width="95%">
                                </webdiyer:AspNetPager>
                            </form>
                        </td>
                        <td style="height: 41px" width="20">
                        </td>
                    </tr>
                </table>
            </div>
          </td>
      </tr>
    </table></td>
  </tr>
</table>

</asp:Content>

