
<!-- #include file="conn.asp" -->
<%
if session("pijia")="1" then
else
	response.write "�뷵�أ�ˢ�£�������д��"
	response.end
end if

dim sql,rs,yourname,tel,memo,productid

productid=trim(request.form("productid")) 	
yourname=trim(request.form("yourname")) 
tel=trim(request.form("tel"))
memo=trim(request.form("memo")) 

if yourname="" then yourname="(����)"
if tel="" then tel="-"

s = trim(request.Form("memo"))
Set oReg    = New RegExp
With oReg
	.IgnoreCase = False
	.Global     = True
	.Pattern    = "[\u4E00-\u9FFF]+"
	If .Test(s) Then
		chinese="1"
	End If 
End With

if memo<>"" then
memo=replace(memo,"iframe","")
memo=replace(memo,"script","")
end if

if chinese="1" then    '��begin
sql="select * from z_pijia "
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
rs.addnew
rs("productid")=productid 
rs("yourname")=yourname 
rs("tel")=tel 
rs("memo")=memo 
rs.update
rs.close
set rs=nothing
end if    '��end

conn.close
set conn=nothing

response.write "<script language=JavaScript>" & "alert('�ɹ������������ۡ�лл��');" & "window.location.href='show.asp?pkid="&productid&"'" & "</script>"

%>



