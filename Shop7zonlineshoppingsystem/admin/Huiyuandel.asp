<!--#include file="conn.asp"-->
<!--#include file="check4.asp"-->
<%
set rs=server.CreateObject("adodb.recordset")
sql="select * from x_huiyuan where id = "&request.QueryString("id")
rs.open sql,conn,1,3
if rs.bof or rs.eof then
	response.write "�˻�Ա�����ڣ����ܱ�����������Ա�ո�ɾ��������ˣ�ˢ�£����ԡ�"
else
	rs.delete
	response.redirect (request.cookies("hypage"))
end if

rs.close
set rs=nothing

call connclose

%>
