<!--#include file="conn.asp"-->
<!--#include file="check4.asp"-->
<!-- #include file="../product/page.asp" -->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link REL='stylesheet' HREF='../szcrm.css' TYPE='text/css'>
<title>��ѡ���Ա</title>
<SCRIPT LANGUAGE="JavaScript"> 
<!-- 
function pick(symbol1,symbol2,symbol3) { 
if (window.opener && !window.opener.closed) 
window.opener.document.theForm.customname.value = symbol1; 
window.opener.document.theForm.customid.value = symbol2; 
window.close(); 
} 
// --> 
</SCRIPT>
<script language="javascript">
<!--
function SetBgColor(Menu)
{
		Menu.style.background="#E7E7E7";
}
function RestoreBgColor(Menu)
{
		Menu.style.background="#ffffff";
}
-->
</script>
</head>
<body topmargin="10" >
  <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td height=6></td>
    </tr>
  </table>
  <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">
<form name="theForm22" method="post" action="openhy.asp?menuid=<%=request("menuid")%>">
    <tr>
	<td height="18">
��ѡ��
<select language='javascript' class=select name='inputkind' size='1'>
          <option value="username">�û���</option> 
          <option value="id">��Ա���</option>  
          <option value="truename">��ʵ����</option>
          <option value="province">ʡ��</option>
          <option value="city">����</option>
          <option value="telphone1">��ϵ�绰1</option>
          <option value="telphone2">��ϵ�绰2</option>
          <option value="fax">����</option>
          <option value="mobile">�ƶ��绰</option>
          <option value="address">��ϵ��ַ</option>
          <option value="postno">��������</option>
          <option value="email">�����ʼ�</option>
</select>&nbsp;���I�֣�
<input name='inputsearch' type='text' class=input size='12' value=''>&nbsp;&nbsp;
<input type=submit name='search' value='��ѯ'>
</td>
<td>&nbsp;</td>
    </tr>
</form>
  </table>
  <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td height=4></td>
    </tr>
  </table>
  <%
dim nowpage,sql,rs,rowcount,myorder,menuid,order_condition
dim id,customname,sex,cardnum,city,carddate,zmd,BA,customname2,cardnum2
dim m,mykind,inputsearch,inputkind,sql_condition
m=1

nowpage=request("page")
myorder=request("myorder")
menuid=request("menuid")

inputsearch=trim(request("inputsearch"))
inputkind=trim(request("inputkind"))

mykind=trim(request("mykind"))

function changechar(info)
	if info<>"" then
		info=replace(info,"	","")
		info=replace(info," ","")
	end if
	changechar=info
end function

sql_condition="where id>2 "

if inputsearch<>"" then
	sql_condition = sql_condition & " and "&inputkind&" like '%"&inputsearch&"%' "
end if

if myorder="" then
	order_condition=" id desc "
else
	order_condition=" "&myorder&" "
end if

sql="select * from x_huiyuan "&sql_condition&" order by "&order_condition

set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
if rs.bof or rs.eof then
	response.write "<div align=center>��ǰû�л�Ա��¼��"
	response.write "</div>"
else
%>

  <table width="98%" border="1" align="center" cellpadding="1" cellspacing="0" bordercolorlight=#5BD77D bordercolordark=#ffffff>
  <form name="theForm2" method="post" action="b_customdel.asp?menuid=<%=menuid%>">
  <tr bgcolor="#E1E1E1"> 
    <td height="24"> 
<div align="center">�û���</div></td>
    <td> 
<div align="center">��ʵ����</div></td>
    <td> 
<div align="center">��ϵ�绰1</div></td>
    <td > 
<div align="center">��ϵ�绰2</div></td>
    <td > 
<div align="center">�ƶ��绰</div></td>
    <td > 
<div align="center">��ϵ��ַ</div></td>
  </tr>
    <%
   rs.pagesize=20
   rs.absolutepage=1
   if request("page")<>"" then rs.absolutepage=request("page")
   rowcount =rs.pagesize
   if not rs.eof then
   		do while not rs.eof and rowcount>0 
			id=rs("id")
			username=rs("username")
			vipno=addspace(rs("vipno"))
			truename=rs("truename") 
			telphone1=rs("telphone1") 
			telphone2=addspace(rs("telphone2"))
			mobile=addspace(rs("mobile")) 
			address=rs("address") 
			addtime=rs("addtime") 

			username2=changechar(username)
    		
  			response.write "<tr Onmouseover='return SetBgColor(this);' Onmouseout='return RestoreBgColor(this);'>"
    		response.write "<td height='20'>&nbsp;<a href=javascript:pick('"&username2&"','"&id&"')>"&username&"</a></td>"
			%>
			<td><%=truename%></td>
			<td><%=telphone1%></td>
			<td><%=telphone2%></td>
			<td><%=mobile%></td>
			<td style="WIDTH: 200; WORD-WRAP: break-word;line-height:140%;"><%=address%></td>
			
			<%
  			response.write "</tr>"
			rs.movenext
		m = m + 1
		rowcount=rowcount-1
		loop
		end if
%>
  </table>
<%
response.write "<table border=0 width='97%' align=center><tr><td align=right height=30>"
		backnexturl="inputsearch="&inputsearch&"&inputkind="&inputkind&"&none=&"
		if nowpage="" then nowpage="1"
		lastpage=rs.pagecount
		nowpath=request.ServerVariables("SCRIPT_NAME")
		response.write "��"&rs.recordcount&"�� ÿҳ20�� ���ڵ�"&nowpage&"/"&rs.pagecount&"ҳ&nbsp; "
		response.write "&nbsp;<input type='button' name='Button1' value='��ҳ' onclick=window.location.href='"&nowpath&"?"&backnexturl&"page=1'>&nbsp;"
		if nowpage>1 then
			response.write"<input type='button' name='Button2' value=��ҳ onclick=window.location.href='"&nowpath&"?"&backnexturl&"page="&nowpage-1&"'>&nbsp;"
		else
			response.write"<input type='button' name='Button3' value=��ҳ>&nbsp;"
		end if
		if clng(nowpage) < clng(lastpage) then
			response.write"<input type='button' name='Button4' value=��ҳ onclick=window.location.href='"&nowpath&"?"&backnexturl&"page="&nowpage+1&"'>&nbsp;"
		else
			response.write"<input type='button' name='Button5' value=��ҳ>&nbsp;"
		end if
		response.write"<input type='button' name='Button6' value=βҳ onclick=window.location.href='"&nowpath&"?"&backnexturl&"page="&clng(lastpage)&"'>&nbsp;"
response.write "</td></tr></table>"

end if
rs.close
set rs=nothing
conn.close
set conn=nothing
%>
</body>
</html>



