<!-- #include file="../Dataname.asp" -->
<%
dim db,conn,connstr
db="../data/"&mydataname
Set conn = Server.CreateObject("ADODB.Connection")
connstr="driver={Microsoft Access Driver (*.mdb)};uid=admin;pwd="&mydatapsw&";dbq=" & Server.MapPath(""&db&"")
conn.Open connstr

sub connclose
	conn.close
	set conn=nothing
end sub

function addspace(strfield)	'�б���ʾ	
	if strfield="" or isnull(strfield) or strfield="δ֪" then 
		addspace="&nbsp;"
	else
		addspace=strfield
	end if
end function
%>
