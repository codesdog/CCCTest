<!--#include file="conn.asp"-->
<!--#include file="check4.asp"-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>���û��ֱ���</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../inc/i.css" type=text/css rel=stylesheet>
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}
//-->
</script>

<script language="JavaScript">
<!--
function Juge()
{
  if (theForm.zhfbili.value == "")
  {
    alert("����������д����!");
    document.theForm.zhfbili.focus();
    return false;
  }
  if (isNaN(theForm.zhfbili.value))
  {
    alert("����������д����!");
    document.theForm.zhfbili.focus();
    return false;
  }
}
//-->
</script>

<style type="text/css">
<!--
td{font-size:9pt}
body {
	margin-top: 5px;margin-left: 2px;
}
.style1 {color: #CCCCCC}
.style2 {color: #FF0000}
.style3 {color: #0000CC}
#tabcss{
	BORDER-COLLAPSE: collapse;
	border-top-width: 1px;
	border-left-width: 1px;
	border-top-style: solid;
	border-left-style: solid;
	border-top-color: #dddddd;
	border-left-color: #dddddd;
}#tabcss td {
	line-height: 24px;
	padding-left: 10px;
	padding-top: 2px;
	padding-bottom: 2px;
	color: #333333;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-right-style: solid;
	border-bottom-style: solid;
	border-right-color: #dddddd;
	border-bottom-color: #dddddd;
}
-->
</style>

<%
dim sql4,rs4,id,num,pkid

ok=request.form("ok")
if ok="1" then
	zhfbili=request.form("zhfbili")
	sql4="update zhfbili set zhfbili='"&zhfbili&"' "
	conn.execute(sql4)
	conn.close
	set conn=nothing
	response.write "<script language=JavaScript>" & "alert('�ɹ����棡');" & "window.location.href='zhfbili.asp';" & "</script>"
	response.end
else
	sql4="select * from zhfbili"
	set rs4=server.createobject("adodb.recordset")
	rs4.open sql4,conn,1,1
	if rs4.bof or rs4.eof then
			zhfbili="10"
	else
			zhfbili=rs4("zhfbili")
	end if
	rs4.close
	set rs4=nothing
	
end if
conn.close
set conn=nothing
%>



</head>

<body bgcolor="#fcfcfc">
<table width="97%" border="0" align="center" cellpadding="0" cellspacing="0" id="tabcss">
  <form name="theForm" method="post" action="zhfbili.asp"  onSubmit="return Juge()">
    <tr bgcolor="#E1EFFF"> 
      <td height="24" ><strong>���ֱ�������</strong></td>
    </tr>
    <tr> 
      <td height="24"><p> ����ֵ: 
          <input name="zhfbili" type="text" value="<%=zhfbili%>" size="5" maxlength="5">
          ������=���*����ֵ�����磺����ֵ��10���ɹ�������Ʒ50Ԫ����ô������û���Ϊ50*10=500�֣� <br>
          �������ڲ�ͬ��ʱ�����ò�ͬ�ر���ֵ���Դﵽ�̼���Ա�����ѡ�</p></td>
    </tr>
    <tr> 
      <td height="54"> <input type="submit" name="Submit" value=" ���� "> <input name="ok" type="hidden" value="1"></td>
    </tr>
  </form>
</table>

</body>
</html>


