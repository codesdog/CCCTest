<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewNews.aspx.cs" Inherits="Web.ViewNews" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<SCRIPT language=JavaScript>
var currentpos,timer;

function initialize()
{
timer=setInterval("scrollwindow()",50);
}
function sc(){
clearInterval(timer);
}
function scrollwindow()
{
currentpos=document.body.scrollTop;
window.scroll(0,++currentpos);
if (currentpos != document.body.scrollTop)
sc();
}
document.onmousedown=sc
document.ondblclick=initialize
</SCRIPT>
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="150" background="images/bn2.jpg">&nbsp;</td>
  </tr>
</table>
<table width="778" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td height="28"  background="image/qy11_topbg.gif"><span style="padding-left:50px;line-height:28px;"><a href="default.aspx" class="a01">首页</a> 
      &gt; <a href="News.aspx" class="a01">新闻动态</a> &gt; <a href="<%=myurl%>" class="a01"><%=mytitle%></a> &gt; <font color="FF9900">内容</font></span></td>
  </tr>
</table>
<table width="778" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td align="center">
      <table width="90%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="5"></td>
        </tr>
        <tr>
          <td align="center" class="font2" style="height: 2px"><font color=333333><%=keytitle%></font></td>
        </tr>
        <tr>
          <td height="5"></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table width="778" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td align="center">
     
      <table width="90%" border="0" cellspacing="0" cellpadding="0">
        <tr bgcolor="#F0F0F0">
              <td width="40%" height="30" style="border-top: 1 solid #666666;border-bottom: 1 solid #666666">双击自动滚屏</td>
              <td width="60%" align="center" style="border-top: 1 solid #666666;border-bottom: 1 solid #666666">发布者：<%=lbl_Author %> 发布时间：<%=lbl_AddTime %> 阅读：<font color="#FF0000"><%=lbl_ReadCount%></font>次</td>
            </tr>
      </table>
      
      <table width="90%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
      <table width="90%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td class="font1" height="200" valign=top align="left"><p><%=keycontent%></p>
            <p>&nbsp;</p></td>
        </tr>
      </table>
      <table width="90%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="1" bgcolor="#BBBBBB"></td>
        </tr>
      </table>
      <table width="90%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td width="451">&nbsp;</td>
          <td width="92" align="left">&nbsp;【<a href="javascript:print();" class="a11">打印本页</a>】</td>
          <td width="87" height="40" align="left">【<a href="javascript:window.close();" class="a11">关闭窗口</a>】</td>
       
          <td width="70" align="left">【<a href="#" class="a11">向上</a>】</td>
        </tr>
      </table>
      <table width="90%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</asp:Content>

