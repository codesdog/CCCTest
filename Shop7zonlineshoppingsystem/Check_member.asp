<!--#include file="conn.asp"-->
<%
username=trim(request.QueryString("username"))
if username<>"" then 
	
	if len(username)<4 or InStr(username,"�ǻ�Ա")>0 or InStr(username,"'")>0 or InStr(username,"--")>0 or InStr(username,"(")>0 or InStr(username,";")>0 or InStr(username,"#")>0 then
		response.write "<meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312""><div style='padding-top:5px;font-size:9pt;color:#ff0000;font-weight:bold;'>���û���������,����������</div>"
		conn.close
		set conn=nothing
		response.end
	END IF
	
	sql3="select * from x_huiyuan where username='"&request("username")&"'"
	set rs3=server.CreateObject("adodb.recordset")
	rs3.open sql3,conn,1,1
	if rs3.bof or rs3.eof then
		response.write "<meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312""><div style='padding-top:5px;font-size:9pt;color:#669900;font-weight:bold;'>���û�������</div>"
	else
		response.write "<meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312""><div style='padding-top:5px;font-size:9pt;color:#ff0000;font-weight:bold;'>���û����ѱ�ʹ��,��������</div>"
	end if
	rs3.close
	set rs3=nothing
	
end if
conn.close
set conn=nothing
%>