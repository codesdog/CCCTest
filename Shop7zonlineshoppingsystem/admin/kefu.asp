<!--#include file="conn.asp"-->
<!--#include file="check2.asp"-->

<html>
<link href="../images/css.css" rel="stylesheet" type="text/css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<style>
<!--
td{font-size:9pt}
body {
	margin-top: 5px;margin-left: 2px;
}
.style3 {color: #A84E22; font-weight: bold; }
#tabcss{
	BORDER-COLLAPSE: collapse;
	border-top-width: 1px;
	border-left-width: 1px;
	border-top-style: solid;
	border-left-style: solid;
	border-top-color: #dddddd;
	border-left-color: #dddddd;
}#tabcss td {
	line-height: 24px;
	padding-left: 10px;
	padding-top: 2px;
	padding-bottom: 2px;
	color: #333333;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-right-style: solid;
	border-bottom-style: solid;
	border-right-color: #dddddd;
	border-bottom-color: #dddddd;
}
-->
</style>
<body topmargin="0" leftmargin="0" rightmargin="0">
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="52">&nbsp;</td>
        <td background="images/main_2.jpg" class="title1">&nbsp;</td>
        <td width="52">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15" background="images/main_4.gif">&nbsp;</td>
        <td class="td">
<%
action=request("ok")
if action="" then 
Set rs = conn.Execute("select * from kefu") 
%>
<table width="100%" border="1" style="border-collapse: collapse; border-style: dotted; border-width: 0px" bordercolor="#333333" cellspacing="0" cellpadding="2">
<form action=kefu.asp method=post name=setup>
<tr class=backs>
      <td height=32 colspan=6 bgcolor="#E1EFFF" class=td><strong>网站客服QQ在线咨询设置 &nbsp;</strong></td>
    </tr>
<tr><td width=20% align=right>“在线咨询”状态 &nbsp;</td>
<td colspan="5" >
<input type="radio" name="qqonline" value="1" <%if rs("qqonline")=1 then%>checked<%end if%>>显示
<input type="radio" name="qqonline" value="0" <%if rs("qqonline")=0 then%>checked<%end if%>>隐藏</td></TR>

<tr><td width=20% align=right>客服QQ号 &nbsp;</td>
      <td colspan="5" > <input type=text value="<%=rs("adm_qq")%>" size=35 name="adm_qq"    size=50> 
        多个请用,分隔&nbsp; </td>
    </TR>
<tr><td width=20% align=right>客服QQ对应昵称 &nbsp;</td>
      <td colspan="5" > <input type=text value="<%=rs("adm_qq_name")%>" size=35 name="adm_qq_name"   size=50>
        多个请用,分隔        &nbsp; </td>
    </TR>
<tr><td width=20% align=right>请选择头像 &nbsp;</td>
<td colspan="5">
<table width=50% border=0> 
<tr><td><input type="radio" name="qqskin" value="4" <%if rs("qqskin")=4 then%>checked<%end if%>>在线：</td><td><img src=../images/qqon4.gif border=0> </td><td> 离线： </td><td> <img src=../images/qqoff4.gif border=0> </td></tr> 
</table></td></TR>
<tr><td width=20% align=right>在线提示语 &nbsp;</td><td colspan="5" > 
<TEXTAREA NAME="qqmsg_on" ROWS="3" COLS="34" style="overflow:auto;"><%=rs("qqmsg_on")%></TEXTAREA>
        &nbsp; </td>
    </tr>
<tr><td width=20% align=right>离线提示语 &nbsp;</td><td colspan="5" >
<TEXTAREA NAME="qqmsg_off" ROWS="3" COLS="34" style="overflow:auto;"><%=rs("qqmsg_off")%></TEXTAREA>
        &nbsp; </td>
    </tr>

<tr><td colspan=6 width="20%" ><INPUT name="ok" TYPE="hidden" value="ok"><INPUT name=action TYPE="submit" value="保存设置"> &nbsp;</td></tr>
</form>
</table>
<%
rs.close
set rs=nothing
conn.close
set conn=nothing
end if
if action="ok" then
if request.form("qqonline")="" then
response.write "<script language='javascript'>"
response.write "alert('出错了，资料填写不完整或有错误！');"
response.write "location.href='javascript:history.go(-1)';"
response.write "</script>"
response.end
end if
if request.form("qqonline")=1 then
if trim(request.form("adm_qq"))="" or trim(request.form("qqmsg_on"))="" or trim(request.form("qqmsg_off"))="" then
response.write "<script language='javascript'>"
response.write "alert('出错了，资料填写不完整或有错误！');"
response.write "location.href='javascript:history.go(-1)';"
response.write "</script>"
response.end
end if
end if
if request.form("adm_qq_name")<>"" and request.form("adm_qq")<>"" then
adm_qq_name=replace(request.form("adm_qq_name"),"，",",")
adm_qq=replace(request.form("adm_qq"),"，",",")
if UBound(split(adm_qq_name,","))<> UBound(split(adm_qq,",")) then
response.write "<script language='javascript'>"
response.write "alert('出错了，客服QQ号与其昵称未一一对应！');"
response.write "location.href='javascript:history.go(-1)';"
response.write "</script>"
response.end
end if
end if
Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from kefu"
rs.open sql,conn,1,3
rs("qqonline")=request.form("qqonline")
rs("whereqq")=0

rs("kefuskin")=request.form("kefuskin")
rs("qqskin")=request.form("qqskin")
rs("wangwang")=request.form("wangwang")
rs("msn")=trim(request.form("msn"))
qqmsg_off=replace(trim(request.form("qqmsg_off")),"'","")
qqmsg_off=replace(qqmsg_off,"&quot;","")
rs("qqmsg_off")=qqmsg_off
qqmsg_on=replace(trim(request.form("qqmsg_on")),"'","")
qqmsg_on=replace(qqmsg_on,"&quot;","")
rs("qqmsg_on")=qqmsg_on
rs("adm_qq")=replace(request.form("adm_qq"),"，",",")
rs("adm_qq_name")=replace(request.form("adm_qq_name"),"，",",")

rs.update
url="kefu.asp"
rs.close
set rs=nothing
conn.close
set conn=nothing
response.write "<script language='javascript'>"
response.write "alert('操作成功，您设置的信息已保存！');"
response.write "location.href='"&url&"';"
response.write "</script>"
end if%>
</td>
        <td width="15" background="images/main_5.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15" background="images/main_4.gif">&nbsp;</td>
        <td background="images/main_9.gif">&nbsp;</td>
        <td width="15" background="images/main_5.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="52">&nbsp;</td>
        <td background="images/main_7.gif" width="100%"></td>
        <td width="52">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
