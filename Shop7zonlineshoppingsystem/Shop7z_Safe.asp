<%
Dim Fy_Post,Fy_Get,Fy_In,Fy_Inf,Fy_Xh,Fy_db,Fy_dbstr
'自定义需要过滤的字串,用 "曹" 分隔 ' 防止SQL注入以及XSS跨站攻击 /2016/1/3
Fy_In = "'曹;曹and曹exec曹insert曹select曹delete曹count曹*曹%曹chr曹mid曹master曹truncate曹char曹declare曹<曹>曹script"
'----------------------------------
%>

<%
Fy_Inf = split(Fy_In,"曹")
'--------POST部份------------------
If Request.Form<>"" Then
For Each Fy_Post In Request.Form

For Fy_Xh=0 To Ubound(Fy_Inf)
If Instr(LCase(Request.Form(Fy_Post)),Fy_Inf(Fy_Xh))<>0 Then

Response.Write "<Script Language=JavaScript>alert('请不要对本站尝试进行非法操作谢谢合作^_^ ');javascript:history.go(-1);</Script>"

Response.End
End If
Next

Next
End If
'----------------------------------

'--------GET部份-------------------
If Request.QueryString<>"" Then
For Each Fy_Get In Request.QueryString

For Fy_Xh=0 To Ubound(Fy_Inf)
If Instr(LCase(Request.QueryString(Fy_Get)),Fy_Inf(Fy_Xh))<>0 Then

Response.Write "<Script Language=JavaScript>alert('请不要对本站尝试进行注入操作谢谢合作^_^ ');javascript:history.go(-1);</Script>"

Response.End
End If
Next
Next
End If
%>