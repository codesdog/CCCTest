<!-- #include file="conn.asp" -->
<!--#include file="check2.asp"-->
<%

dim kindnum,menuid,sql2,rs2
dim kindnumlen,maxkindnum,a

dim sql,rs

id=trim(request.form("id"))
kindnum=trim(request.form("kindnum"))
kindnumold=trim(request.form("kindnumold"))
kindname=trim(request.form("kindname"))
productflag=trim(request.form("productflag"))
menuid=trim(request("menuid"))

if len(kindnumold)<>len(kindnum) then
	response.write "�����޸ġ�������д�ı����ԭ����<b>λ��</b>��ͬ��"
	response.end
end if
if len(kindnum) mod 4 >0 then
	response.write "�����޸ġ�������д�ı�Ų�����<b>4�ı���</b>��"
	response.end
end if

if kindnumold<>kindnum then

	sql0="select * from sh_kind where kindnum like '"&kindnum&"%'"
	set rs=server.createobject("adodb.recordset")
	rs.open sql0,conn,1,1
	if rs.bof or rs.eof then
	
		sql2="update sh_kind set kindnum='"&kindnum&"'+mid(kindnum,"&len(kindnum)+1&") where kindnum like '"&kindnumold&"%'"
		conn.execute(sql2)

		sql3="update e_product set kind='"&kindnum&"'+mid(kind,"&len(kindnum)+1&") where kind like '"&kindnumold&"%'"
		conn.execute(sql3)

	else
		response.write "�����޸ġ�������д�ı�ź����еı��һ��������д������š�"
		response.end
	end if
	rs.close
	set rs=nothing

end if

call checkchar(kindname)

sub checkchar(info)
		info=replace(info,"	","")
		info=replace(info," ","")
		info=replace(info,"&","/")
	for i=1 to len(info)
	aa=mid(info,i,1)
	if aa=" " or aa="&" then
	response.write "<script language=JavaScript>" & "alert('������Ʒ���Ʋ��ܺ��пո����&���ţ������������š�');" & "history.back()" & "</script>"
	response.end
	end if
	next
end sub

sql="select * from sh_kind where id="&id
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
if rs.bof or rs.eof then
	response.write "<br><div align=center>����ʧ�ܣ����� <a href='b_kindadd.asp?menuid="&menuid&"'>����</a> ���ԡ�</div>"

	rs.close
	set rs=nothing
	conn.close
	set conn=nothing

else

	'rs("kindnum")=kindnum
	rs("kindname")=kindname
	'rs("productflag")=productflag
	rs("whoaddkind")=session("username")
	rs.update
	rs.close
	set rs=nothing
	
	
	conn.close
	set conn=nothing
	response.Redirect("b_kind.asp?page="&request.cookies("nowpage_cook"))	
end if
%>










