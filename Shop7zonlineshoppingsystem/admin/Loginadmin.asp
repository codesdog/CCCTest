<%@ LANGUAGE = VBScript.Encode %>
<!--#include file="conn2.asp"-->
<!--#include file="md5.asp"-->

<%
adminIP = Request.ServerVariables("Remote_Addr")
User_name=trim(request.form("h_name"))
User_pwd=md5(trim(request.form("h_pwd")))
admin=User_name
sub passwrong()
	response.write "<meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312"">"
	response.write "<title>��½ʧ���뷵����������</title><br><br>"
	response.write "<table align=center border=1 cellspacing=0 cellpadding=20 bordercolorlight=#cccccc bordercolordark=#ffffff><tr>"
	response.write "<td width=400 align=left height=160 bgcolor=#eeeeee style='font-size:12px;'>"
	response.write "<font style='font-size:14px;font-weight:bold;color:#ff0000;'>ϵͳ��ʾ��</font><br><br><br>"
	response.write "<a href='javascript:window.history.back()'><b>��½��̨ʧ�ܡ�����������������û��������롣</b></a>"
	response.write "</td></tr></table>"
	response.end
end sub
if cstr(session("getcode"))<>cstr(trim(request("verifycode"))) then
'
set Shop7z=server.CreateObject("adodb.recordset")
Shop7z.Open "select * from adminlog " ,conn,1,3
Shop7z.AddNew
Shop7z("adminuser")=admin
Shop7z("adminip")=adminIP
Shop7z("shijian")="��֤�벻��ȷ����¼ʧ�ܣ�"
Shop7z.update
Shop7z.Close
set Shop7z=nothing

'
response.Write "<script LANGUAGE='javascript'>alert('��������ȷ����֤�룡');history.go(-1);</script>"
response.end
end if
dim User_name,User_pwd,confirmcode
dim del_date,sql0


if User_pwd="" or User_name="" then
'

set Shop7z=server.CreateObject("adodb.recordset")
Shop7z.Open "select * from adminlog " ,conn,1,3
Shop7z.AddNew
Shop7z("adminuser")="��"
Shop7z("adminip")=adminIP
Shop7z("shijian")="��½ʧ�ܣ��û���������Ϊ�գ�"
Shop7z.update
Shop7z.Close
set Shop7z=nothing
'
	call passwrong()
end if
if InStr(User_name,"'")>0 or InStr(User_name,"--")>0 or InStr(User_name,"(")>0 or InStr(User_name,";")>0 or InStr(User_name,"replace")>0 or InStr(User_name,"eval")>0 then
'
	set Shop7z=server.CreateObject("adodb.recordset")
Shop7z.Open "select * from adminlog " ,conn,1,3
Shop7z.AddNew
Shop7z("adminuser")=admin
Shop7z("adminip")=adminIP
Shop7z("shijian")="�û����Ƿ�����¼ʧ�ܣ�"
Shop7z.update
Shop7z.Close
set Shop7z=nothing
'
'
	call passwrong()
END IF

set rs=server.createobject("adodb.recordset")
	sql="select * from admin where s_user='" & User_name & "'"
	rs.open sql,conn,1,3
	if rs.bof or rs.eof then
	'
	set Shop7z=server.CreateObject("adodb.recordset")
Shop7z.Open "select * from adminlog " ,conn,1,3
Shop7z.AddNew
Shop7z("adminuser")=admin
Shop7z("adminip")=adminIP
Shop7z("shijian")="���벻��ȷ����¼ʧ�ܣ�"
Shop7z.update
Shop7z.Close
set Shop7z=nothing
'
		call passwrong()
	else
	    if rs("s_pwd")=User_pwd then
			t=rs("lasttime")
			ip=rs("lastip")
			session("m_user")=rs("s_user")
			session("m_gold")=rs("self1")
			
		    session("username")=rs("s_user")

			rs("lasttime")=now()
			rs("lastip")=request.ServerVariables("REMOTE_ADDR")
			rs.update
		
			set Shop7z=server.CreateObject("adodb.recordset")
Shop7z.Open "select * from adminlog " ,conn,1,3
Shop7z.AddNew
Shop7z("adminuser")=admin
Shop7z("adminip")=adminIP
Shop7z("shijian")="��¼�ɹ���"
Shop7z.update
Shop7z.Close
set Shop7z=nothing
'
			response.Redirect("index.asp")
		else
		
		set Shop7z=server.CreateObject("adodb.recordset")
Shop7z.Open "select * from adminlog " ,conn,1,3
Shop7z.AddNew
Shop7z("adminuser")=admin
Shop7z("adminip")=adminIP
Shop7z("shijian")="��½ʧ�ܣ��û��������벻��ȷ��"
Shop7z.update
Shop7z.Close
set Shop7z=nothing
'
			call passwrong()
		end if
	end if
	
rs.close
conn.close
%>


