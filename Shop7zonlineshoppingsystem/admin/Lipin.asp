<!--#include file="conn.asp"-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>��Ʒ�б�</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style>
<!--
td{font-size:9pt;line-height: 160%;}
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
</head>

<body bgcolor="#fcfcfc">

<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" id="tabcss">
  <tr bgcolor="#E1EFFF"> 
    <td height="25" colspan="7"><b>��Ʒ���ã�</b></td>
  </tr>
  <tr bgcolor="#eeeeee"> 
    <td height="25" width=16%>
<div align="center">ͼƬ</div></td>
    <td width=10%> 
      <div align="center">���</div></td>
    <td width=27%>��Ʒ����</td>
    <td width=7%> <div align="center">�������</div></td>
    <td width=7%><div align="center">�Ƿ���ʾ</div></td>
    <td width=7%> <div align="center">˳��</div></td>
    <td width=25%> <div align="center"><b><a href='lipinadd.asp'>�� ��</a></b></div></td>
  </tr>
  <%
i=0

sql="select * from x_lipin order by num"

set rs=server.CreateObject("adodb.recordset")
rs.open sql,conn,1,1
if rs.bof or rs.eof then
	response.write "<tr><td colspan=7><div align=center>û�м�¼! </div></td></tr>"
else
	do while not rs.eof 
	
	id=rs("id")
	picpath=rs("picpath")
	'picpath2=rs("picpath2")
	lipinno=rs("lipinno")
	lipinname=rs("lipinname")
	zhifen=rs("zhifen")
	showflag=rs("showflag")
	num=rs("num")
	'memo=rs("memo")
	
	
	
%>
  <tr onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';"> 
    <td align=center><img width="90" src='<%=picpath%>' border='0'></td>
    <td><%=lipinno%></td>
    <td><b><%=lipinname%></b></td>
    <td><div align="right"><%=zhifen%>&nbsp;</div></td>
    <td><div align="center"><input type="checkbox" name="showflag" value="1" <%if showflag="1" then response.write "checked"%>></div></td>
    <td><%=num%></td>
    <td align="center">
	<a href="../lipinshow.asp?id=<%=id%>" target="_blank">�鿴</a>&nbsp;&nbsp;&nbsp;
	 <a href="lipinadd.asp?id=<%=id%>">�޸�</a>&nbsp;&nbsp;&nbsp;&nbsp; 
      <a href="lipindel.asp?id=<%=id%>" onClick="return confirm('���ɾ���˼�¼?')">ɾ��</a> 
    </td>
  </tr>
  <%
	rs.movenext
	i=i+1
	loop
end if

rs.close
set rs=nothing
call connclose

%>
</table>
<br><br>
</body>
</html>


