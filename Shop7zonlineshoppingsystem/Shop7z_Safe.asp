<%
Dim Fy_Post,Fy_Get,Fy_In,Fy_Inf,Fy_Xh,Fy_db,Fy_dbstr
'�Զ�����Ҫ���˵��ִ�,�� "��" �ָ� ' ��ֹSQLע���Լ�XSS��վ���� /2016/1/3
Fy_In = "'��;��and��exec��insert��select��delete��count��*��%��chr��mid��master��truncate��char��declare��<��>��script"
'----------------------------------
%>

<%
Fy_Inf = split(Fy_In,"��")
'--------POST����------------------
If Request.Form<>"" Then
For Each Fy_Post In Request.Form

For Fy_Xh=0 To Ubound(Fy_Inf)
If Instr(LCase(Request.Form(Fy_Post)),Fy_Inf(Fy_Xh))<>0 Then

Response.Write "<Script Language=JavaScript>alert('�벻Ҫ�Ա�վ���Խ��зǷ�����лл����^_^ ');javascript:history.go(-1);</Script>"

Response.End
End If
Next

Next
End If
'----------------------------------

'--------GET����-------------------
If Request.QueryString<>"" Then
For Each Fy_Get In Request.QueryString

For Fy_Xh=0 To Ubound(Fy_Inf)
If Instr(LCase(Request.QueryString(Fy_Get)),Fy_Inf(Fy_Xh))<>0 Then

Response.Write "<Script Language=JavaScript>alert('�벻Ҫ�Ա�վ���Խ���ע�����лл����^_^ ');javascript:history.go(-1);</Script>"

Response.End
End If
Next
Next
End If
%>