
<html>
<head>
<title>�������</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style>
Body
{
	margin-top: 0px;
	margin-bottom: 0px;
        FONT-FAMILY: "Verdana, Arial, ����";
	FONT-SIZE: 9pt;
	text-decoration: none;
	line-height: 150%;
	background-color: #ffffff;
	color: #666666;
	FONT-SIZE: 9pt;
	SCROLLBAR-FACE-COLOR: #eaeaea;
	SCROLLBAR-HIGHLIGHT-COLOR: #ffffff;
	SCROLLBAR-SHADOW-COLOR: #b9b9b9;
	SCROLLBAR-3DLIGHT-COLOR: #b9b9b9;
	SCROLLBAR-ARROW-COLOR: #666666;
	SCROLLBAR-TRACK-COLOR: #eaeaea;
	SCROLLBAR-DARKSHADOW-COLOR: #ffffff;
}
Td
{
	FONT-FAMILY: "Verdana, Arial, ����";
	FONT-SIZE: 9pt;
	color: #555555;
	line-height:200%
}
Input
{
	FONT-FAMILY: "Verdana, Arial, ����";
	FONT-SIZE: 9pt;
	color: #555555;

}
checkbox
{
	FONT-FAMILY: "Verdana, Arial, ����";
	FONT-SIZE: 9pt;
	color: #555555;
	border: 0px;
}
Textarea
{
	FONT-FAMILY: "Verdana, Arial, ����";
	FONT-SIZE: 9pt;
	color: #555555;
	background-color: #fefefe;
	border: 1px solid #555555;
}
Button
{
	FONT-FAMILY: "Verdana, Arial, ����";
	FONT-SIZE: 9pt;
	color: #555555;
	background-color: #cccccc;
	border: 1px solid #555555;
}
Select
{
	FONT-FAMILY: "Verdana, Arial, ����";
	FONT-SIZE: 9pt;
	color: #555555;
	background-color: #fefefe;
	border: 1px solid #555555;
}
A
{
	TEXT-DECORATION: none;
	color: #555555;
}
A:hover
{
	COLOR: #ff6600;
	text-decoration: underline;
}
</style>
</head>
<body leftmargin="2" topmargin="0" marginwidth="0" marginheight="0">
<!--
�� Ȩ: w e b 1 3 8 0 0.com.cn ͨ �� �� �� ϵ ͳ / Դ ��  QQ 3 7 2 3 2 3 6 4 8   5 7 0 5 8 9 8
-->
<br>
<table cellpadding="2" cellspacing="1" border="0" width="100%" class="border" align=center>
<tr align="center">
    <td width="776" height=2 colspan=2 class="topbg">    
</tr>
</table>
<%

Dim theInstalledObjects(24)
    theInstalledObjects(9) = "Scripting.FileSystemObject"
    theInstalledObjects(10) = "adodb.connection"
    theInstalledObjects(16) = "JMail.SmtpMail"
    theInstalledObjects(17) = "CDONTS.NewMail"
    theInstalledObjects(18) = "Persits.MailSender"
    theInstalledObjects(19) = "SMTPsvg.Mailer"
    theInstalledObjects(20) = "DkQmail.Qmail"
    theInstalledObjects(21) = "Geocel.Mailer"
    theInstalledObjects(22) = "IISmail.Iismail.1"
'�������Ƿ�֧��
Function IsObjInstalled(strClassString)
On Error Resume Next
IsObjInstalled = False
Err = 0
Dim xTestObj
Set xTestObj = Server.CreateObject(strClassString)
If 0 = Err Then IsObjInstalled = True
Set xTestObj = Nothing
Err = 0
End Function

'�������汾
Function getver(Classstr)
On Error Resume Next
getver=""
Err = 0
Dim xTestObj
Set xTestObj = Server.CreateObject(Classstr)
If 0 = Err Then getver=xtestobj.version
Set xTestObj = Nothing
Err = 0
End Function
%>
<table width="90%" border=1 align="center" cellPadding=0 cellSpacing=0 bordercolor="#999999" borderColorDark=#ffffff bgcolor="#F9F9F9">
  <tr>
    <td height="30" colspan="2" align="center" background="Images/topBar_bg.gif"><b>��������Ϣͳ��</b></td>
  </tr>
  <tr>
    <td width="50%">&nbsp;���������ͣ�<font face="Verdana"><%=Request.ServerVariables("OS")%> ��IP��</font><%=Request.ServerVariables("LOCAL_ADDR")%>��</td>
    <td width="50%"> &nbsp;
        <%
      Response.Write theInstalledObjects(9)
      If Not IsObjInstalled(theInstalledObjects(9)) Then 
        Response.Write "<font color=red><b> ��</b></font>"
      Else
        Response.Write getver(theInstalledObjects(9)) & "<font color=#888888>(FSO �ı��ļ���д)</b><font color=green><b> ��</b></font> "
      End If
      Response.Write vbCrLf
%></td>
  </tr>
  <tr>
    <td width="50%">&nbsp;���ط���������������DNS������IP��ַ��<%=Request.ServerVariables("SERVER_NAME")%></td>
    <td width="50%"> &nbsp;
        <%
      Response.Write theInstalledObjects(10)
   	  Response.Write "<font color=#888888>(ACCESS ���ݿ�)</font>"
      If Not IsObjInstalled(theInstalledObjects(10)) Then 
        Response.Write "<font color=red><b> ��</b></font>"
      Else
        Response.Write "&nbsp;<font color=green><b>��</b></font> " & getver(theInstalledObjects(10))
      End If
      Response.Write vbCrLf
%></td>
  </tr>
  <tr>
    <td width="50%">&nbsp;�ű��������棺<%=ScriptEngine & "/"& ScriptEngineMajorVersion &"."&ScriptEngineMinorVersion&"."& ScriptEngineBuildVersion %></td>
    <td width="50%"> &nbsp;
        <%
      Response.Write theInstalledObjects(16)
		Response.Write "<font color=#888888>(w3 Jmail �շ���)</font>"

      If Not IsObjInstalled(theInstalledObjects(16)) Then 
        Response.Write "&nbsp;<font color=red><b>��</b></font>"
      Else
        Response.Write "&nbsp;<font color=green><b>��</b></font> " & getver(theInstalledObjects(16))
      End If

      Response.Write vbCrLf
%></td>
  </tr>
  <tr>
    <td width="50%">&nbsp;�ű���ʱʱ�䣺<%=Server.ScriptTimeout%> ��</td>
    <td width="50%">&nbsp;
        <%
      Response.Write theInstalledObjects(17)
	  Response.Write "<font color=#888888>(WIN����SMTP ����)</font>"

      If Not IsObjInstalled(theInstalledObjects(17)) Then 
        Response.Write "&nbsp;<font color=red><b>��</b></font>"
      Else
        Response.Write "&nbsp;<font color=green><b>��</b></font> " & getver(theInstalledObjects(17))
      End If

      Response.Write vbCrLf
%></td>
  </tr>
  <tr>
    <td width="50%">&nbsp;�������˿ڣ�<%=Request.ServerVariables("SERVER_PORT")%></td>
    <td width="50%">&nbsp;
        <%
      Response.Write theInstalledObjects(18)
	  Response.Write "<font color=#888888>(ASPemail ����)</font>"

      If Not IsObjInstalled(theInstalledObjects(18)) Then 
        Response.Write "&nbsp;<font color=red><b>��</b></font>"
      Else
        Response.Write "&nbsp;<font color=green><b>��</b></font> " & getver(theInstalledObjects(18))
      End If

      Response.Write vbCrLf
%></td>
  </tr>
  <tr>
    <td width="50%">&nbsp;վ������·����<%=server.mappath(Request.ServerVariables("SCRIPT_NAME"))%></td>
    <td width="50%">&nbsp;
        <%
      Response.Write theInstalledObjects(19)
	  Response.Write "<font color=#888888>(ASPemail ����)</font>"

      If Not IsObjInstalled(theInstalledObjects(19)) Then 
        Response.Write "&nbsp;<font color=red><b>��</b></font>"
      Else
        Response.Write "&nbsp;<font color=green><b>��</b></font> " & getver(theInstalledObjects(19))
      End If

      Response.Write vbCrLf
%></td>
  </tr>
  <tr>
    <td width="50%">&nbsp;������IIS�汾��<%=Request.ServerVariables("SERVER_SOFTWARE")%></td>
    <td width="50%">&nbsp;
        <%
      Response.Write theInstalledObjects(20)
	  Response.Write "<font color=#888888>(dkQmail ����)</font>"

      If Not IsObjInstalled(theInstalledObjects(20)) Then 
        Response.Write "&nbsp;<font color=red><b>��</b></font>"
      Else
        Response.Write "&nbsp;<font color=green><b>��</b></font> " & getver(theInstalledObjects(20))
      End If

      Response.Write vbCrLf
%></td>
  </tr>
  <tr>
    <td width="50%">&nbsp;������CPU������<%=Request.ServerVariables("NUMBER_OF_PROCESSORS")%> ��</td>
    <td width="50%">&nbsp;
        <%
      Response.Write theInstalledObjects(21)
	  Response.Write "<font color=#888888>(Geocel ����)</font>"

      If Not IsObjInstalled(theInstalledObjects(21)) Then 
        Response.Write "&nbsp;<font color=red><b>��</b></font>"
      Else
        Response.Write "&nbsp;<font color=green><b>��</b></font> " & getver(theInstalledObjects(21))
      End If

      Response.Write vbCrLf
%></td>
  </tr>
  <tr>
    <td width="50%">&nbsp;������ʱ�䣺<%=now%></td>
    <td width="50%">&nbsp;
        <%
      Response.Write theInstalledObjects(22)
	  Response.Write "<font color=#888888>(IISemail ����)</font>"

      If Not IsObjInstalled(theInstalledObjects(22)) Then 
        Response.Write "&nbsp;<font color=red><b>��</b></font>"
      Else
        Response.Write "&nbsp;<font color=green><b>��</b></font> " & getver(theInstalledObjects(22))
      End If

      Response.Write vbCrLf
%>
    </td>
  </tr>
</table><br>


</body>
</html>