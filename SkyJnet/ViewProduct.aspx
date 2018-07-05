<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master"  CodeFile="ViewProduct.aspx.cs" Inherits="Web.ViewProduct" %>
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
    <td height="150" background="images/bn3.jpg">&nbsp;</td>
  </tr>
</table>
<table width="778" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td height="28"  background="image/qy11_topbg.gif"><span style="padding-left:50px;line-height:28px;"><a href="default.aspx" class="a01">首页</a> 
      &gt; <a href="Product.aspx" class="a01">作品展示</a> &gt; <a href="<%=myurl%>" class="a01"><%=mytitle%></a> &gt; <font color="FF9900">内容</font></span></td>
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
     
      <table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr bgcolor="#F0F0F0">
              <td width="40%" height="30" style="border-top: 1 solid #666666;border-bottom: 1 solid #666666">更多播放选项请在画面中点右键</td>
              <td width="60%" align="center" style="border-top: 1 solid #666666;border-bottom: 1 solid #666666"> 上传时间：<%=lbl_AddTime %> 点击：<font color="#FF0000"><%=lbl_ReadCount%></font>次</td>
            </tr>
      </table>
      
      <table width="90%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
      <asp:Panel ID="pan_Player" runat="server" Visible=false>
     <TABLE height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0" style="color:#ffffff;">	    
		<TR>
			<TD vAlign="middle" align="center"><!--MediaPlayer-->
            <object classid="clsid:22D6F312-B0F6-11D0-94AB-0080C74C7E95" id="MediaPlayer1" /> 
            <param name="Filename" value="<%=keyplayurl %>"/> <!--你文件的位置-->
            <param name="PlayCount" value="1"/><!--控制重复次数: “x”为几重复播放几次; x=0，无限循环。--> 
            <param name="AutoStart" value="1"/><!--控制播放方式: x=1，打开网页自动播放; x=0，按播放键播放。--> 
            <param name="ClickToPlay" value="1"/><!--控制播放开关: x=1，可鼠标点击控制播放或暂停状态; x=0，禁用此功能。-->
            <param name="DisplaySize" value="0"/><!--控制播放画面: x=0，原始大小; x=1，一半大小; x=2，2倍大小。--> 
            <param name="EnableFullScreen Controls" value="1"/><!--控制切换全屏: x=1，允许切换为全屏; x=0，禁用此功能。--> 
            <param name="ShowAudio Controls" value="1"/><!--控制音量: x=1，允许调节音量; x=0，禁止音量调节。-->
            <param name="EnableContext Menu" value="1"><!--控制快捷菜单: x=1，允许使用右键菜单; x=0，禁用右键菜单。--> 
            <param name="ShowDisplay" value="1"/><!--控制版权信息: x=1，显示电影及作者信息;x=0，不显示相关信息-->
            </object >
        </TD>
		</TR>
		
	</TABLE>
	</asp:Panel>
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

	
   

