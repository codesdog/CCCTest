
<!-- #include file="conn.asp" -->
<%
pkid=request("id")
	sql="delete * from x_lipin where id="&pkid&""
	conn.execute(sql)
	conn.close
	response.write "<script language=JavaScript>" & "alert('�ɹ�ɾ����');" & "window.location.href='lipin.asp'" & "</script>"

%>
