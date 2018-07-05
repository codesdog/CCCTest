<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="Web.About" Title="Untitled Page" %>
<%@ Register TagPrefix="uc1" TagName="uc_LeftContents"   Src="~/LeftContents.ascx"  %>
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
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(images/bj2.jpg);
}
h1 {
	font-size: 24px;
	color: #FFFFFF;
}
-->
</style>
<link href="css.css" rel="stylesheet" type="text/css" />
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="150" background="images/bn1.jpg">&nbsp;</td>
  </tr>
</table>
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td height="32" class="xia2"> 　　首页 &gt; 关于一秀 &gt; 公司介绍</td>
  </tr>
</table>
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="200" height="100" valign="top" class="you"><table width="200" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="50"><div align="center"><img src="images/left1.jpg" width="190" height="30" /></div></td>
      </tr>
      <tr>
        <td height="28">    <div align="left"> 
              	<!--左边自定义控件-->
              <uc1:uc_LeftContents id="LeftContents" runat="server" ></uc1:uc_LeftContents>
              </div></td>
      </tr>
      <tr>
        <td height="28"><img src="images/wall-papge_06.jpg" width="199" height="251" /></td>
      </tr>
    </table></td>
    <td width="580"><table width="550" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="40" class="blue3"><strong>
            <asp:Label ID="lbl_Title" runat="server"></asp:Label></strong></td>
      </tr>
      <tr>
        <td height="578" valign="top">
          <p class="black">　　
              <asp:Label ID="lbl_Contents" runat="server"></asp:Label>&nbsp;</p>
          </td>
      </tr>
    </table></td>
  </tr>
</table>

</asp:Content>

