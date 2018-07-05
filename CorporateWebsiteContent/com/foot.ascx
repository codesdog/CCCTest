<%@ Control Language="C#" AutoEventWireup="true" CodeFile="foot.ascx.cs" Inherits="com_foot" %>
<style type="text/css">
#foot a:link {
   color: #000000;
   text-decoration: none;
   }
   #foot a:visited {
   text-decoration: none;
   color: #000000;
   }
   #foot a:hover {
   color: #000000;
   background-color:#FF0000;
   }
   #foot a:active {
   text-decoration: none;
   }     
   .STYLE1 {
	font-size: 12px;
	color: #000000;
}
.STYLE2 {color: #000000}
.STYLE11 {color: #000000}
</style> 

<table  width="940px" style="margin-left:10px; margin-right:10px">
    <tr>
        <td>
            <strong>友情链接</strong>|<strong><a href="feedback.aspx" title ="点击这里申请链接">申请链接</a></strong></td>
    </tr>
    <tr>
        <td style="text-align: left">
           <asp:DataList ID ="dl_link" runat ="server"  RepeatColumns="15" 
    style="text-align: center"><ItemTemplate>
    <span style="line-height:25px"><a href ='<%#Eval("linkurl")%>' title='欢迎访问&nbsp;&nbsp;<%#Eval("title")%>' target="_blank"><%#Eval("title")%></a></span>&nbsp;&nbsp;|&nbsp;&nbsp;

</ItemTemplate></asp:DataList>
        </td>
    </tr>
</table>
 <table width="980" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#ABADB3" id="foot">
  <tr>
    <td height="70" align="center" bgcolor="#FFFFFF" style="line-height:20px"><a href="index.aspx">网站首页</a> | <a href="About.aspx">关于我们</a> |<a href="newslist.aspx">新闻中心</a> |<a href="allProducts.aspx">产品展示</a> | <a href="resume.aspx">招贤纳士</a> | <a href="feedback.aspx">在线留言</a><br>      
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
   
   </td>
  </tr>
</table>
<script language="JavaScript" type="text/javascript"> 
lastScrollY=0;
function heartBeat(){ 
var diffY;
if (document.documentElement && document.documentElement.scrollTop)
diffY = document.documentElement.scrollTop;
else if (document.body)
diffY = document.body.scrollTop
else
{/*Netscape stuff*/}
//alert(diffY);
percent=.1*(diffY-lastScrollY); 
if(percent>0)percent=Math.ceil(percent); 
else percent=Math.floor(percent); 
document.getElementById("lovexin12").style.top=parseInt(document.getElementById
("lovexin12").style.top)+percent+"px";
lastScrollY=lastScrollY+percent; 
//alert(lastScrollY);
}
suspendcode12="<DIV id=\"lovexin12\" style='left:2px;POSITION:absolute;TOP:140px;'><div id='t'>在线QQ客服</div><div id='qq'><A href='http://wpa.qq.com/msgrd?V=1&amp;Uin=1234567&amp;Site=客服QQ&amp;Menu=yes' target=blank><IMG alt=点击这里给我们发消息 src='http://wpa.qq.com/pa?p=1:12345678:6' align=absMiddle border=0></A></div><div id='qq'><A href='http://wpa.qq.com/msgrd?V=1&amp;Uin=1234567&amp;Site=客服QQ&amp;Menu=yes' target=blank><IMG alt=点击这里给我们发消息 src='http://wpa.qq.com/pa?p=1:12345678:6' align=absMiddle border=0></A></div></div>"
document.write(suspendcode12); 
window.setInterval("heartBeat()",1);
</script>