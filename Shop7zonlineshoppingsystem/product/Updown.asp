<!-- #include file="conn.asp" -->
<!--#include file="check2.asp"-->
<%
updown=request("updown")
pkid=request("pkid")
kind=request("kind")
keyword=request("keyword")
nowpage=request("page")

sql="update e_product set updown='"&updown&"', updowntime='"&now()&"' where pkid="&pkid
conn.execute(sql)

response.write "<table align=center width=500 height=50><tr><td>"
'response.write "���óɹ��� <a href='"&&"'>������Ʒ�б�</a>"
response.write "<script language=JavaScript>" & "window.location.href='"&request.cookies("oldpage")&"';" & "</script>"
response.write "</td></tr></table>"

%>
