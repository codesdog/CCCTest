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
    <td height="28"  background="image/qy11_topbg.gif"><span style="padding-left:50px;line-height:28px;"><a href="default.aspx" class="a01">��ҳ</a> 
      &gt; <a href="Product.aspx" class="a01">��Ʒչʾ</a> &gt; <a href="<%=myurl%>" class="a01"><%=mytitle%></a> &gt; <font color="FF9900">����</font></span></td>
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
              <td width="40%" height="30" style="border-top: 1 solid #666666;border-bottom: 1 solid #666666">���ಥ��ѡ�����ڻ����е��Ҽ�</td>
              <td width="60%" align="center" style="border-top: 1 solid #666666;border-bottom: 1 solid #666666"> �ϴ�ʱ�䣺<%=lbl_AddTime %> �����<font color="#FF0000"><%=lbl_ReadCount%></font>��</td>
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
            <param name="Filename" value="<%=keyplayurl %>"/> <!--���ļ���λ��-->
            <param name="PlayCount" value="1"/><!--�����ظ�����: ��x��Ϊ���ظ����ż���; x=0������ѭ����--> 
            <param name="AutoStart" value="1"/><!--���Ʋ��ŷ�ʽ: x=1������ҳ�Զ�����; x=0�������ż����š�--> 
            <param name="ClickToPlay" value="1"/><!--���Ʋ��ſ���: x=1������������Ʋ��Ż���ͣ״̬; x=0�����ô˹��ܡ�-->
            <param name="DisplaySize" value="0"/><!--���Ʋ��Ż���: x=0��ԭʼ��С; x=1��һ���С; x=2��2����С��--> 
            <param name="EnableFullScreen Controls" value="1"/><!--�����л�ȫ��: x=1�������л�Ϊȫ��; x=0�����ô˹��ܡ�--> 
            <param name="ShowAudio Controls" value="1"/><!--��������: x=1�������������; x=0����ֹ�������ڡ�-->
            <param name="EnableContext Menu" value="1"><!--���ƿ�ݲ˵�: x=1������ʹ���Ҽ��˵�; x=0�������Ҽ��˵���--> 
            <param name="ShowDisplay" value="1"/><!--���ư�Ȩ��Ϣ: x=1����ʾ��Ӱ��������Ϣ;x=0������ʾ�����Ϣ-->
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
          <td width="92" align="left">&nbsp;��<a href="javascript:print();" class="a11">��ӡ��ҳ</a>��</td>
          <td width="87" height="40" align="left">��<a href="javascript:window.close();" class="a11">�رմ���</a>��</td>
       
          <td width="70" align="left">��<a href="#" class="a11">����</a>��</td>
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

	
   

