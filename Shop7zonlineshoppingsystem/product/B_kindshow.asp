<!-- #include file="conn.asp" -->
<!--#include file="check2.asp"-->
<%
menuid=request("menuid")
id=request("id")



sql="select * from sh_kind where id="&request("id")
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
if rs.bof or rs.eof then
	response.write "<br><div align=center>���� <a href='b_kind.asp?menuid="&menuid&"'>����</a> ���ԡ�</div>"
else
	kindnum=rs("kindnum")
	kindname=rs("kindname")
	
end if
rs.close
set rs=nothing

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link REL='stylesheet' HREF='szcrm.css' TYPE='text/css'>
<SCRIPT language=JavaScript>
<!--

function Juge(theForm)
{
  if (theForm.kindnum.value == "")
  {
    alert("��������!");
    theForm.kindnum.focus();
    return (false);
  }


  if (isNaN(theForm.kindnum.value))
  {
    alert("���ҪΪ����!");
    theForm.kindnum.focus();
    return (false);
  }

	if (theForm.kindnum.value.length != theForm.kindnumold.value.length)
	{
    alert("������д�ı����ԭ���ġ�λ������ͬ��");
    theForm.kindnum.focus();
    return (false);	
	}


  if (theForm.kindname.value == "")
  {
    alert("�������������!");
    theForm.kindname.focus();
    return (false);
  }

}
-->
</script>
<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
body {
	margin-top: 5px;
}
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
</head>
<body bgcolor="#fcfcfc">


<form name="theForm" method="post" action="b_kindmodify.asp" onSubmit="return Juge(this)">  
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" id="tabcss">
  <tr bgcolor="#BFDFFF">
      <td colspan=2><b>�޸���Ʒ���</b></td>
    </tr>

    <tr>
      <td height="61"><div align="right">���&nbsp;</div></td>
	  
      <td>
	      <input name="kindnumold" type="text" value="<%=kindnum%>" readonly style='BACKGROUND-COLOR: #FDEEDB;'>(ԭ���ı��)<br>
	  <br><input name="kindnum"    type="text" value="<%=kindnum%>">
        <br>
      (��ŵ�λ����Ҫ��ԭ����<b>λ��</b>һ��������λ��ҪΪ<b>4�ı���</b>���޸ĺ�ı�Ų��ܺ�<b>����</b>�ı��һ�������磺�ܽ�0001��Ϊ0009����0012�ȣ������ܸ�Ϊ00012������,���Խ�00010005��Ϊ00010007,���Ϊ00010018�ȣ������޸ĺ�ԭ�����¼�����Ÿı�ġ�ͨ��������޸ķ����<strong>˳��</strong>,Ҳ��<strong>�ƶ�����</strong>��)</td>
    </tr>
    <tr> 
      <td width="28%" height="39"> <div align="right">�������&nbsp;</div></td> 
      <td width="72%"> <input name="kindname" type="text" id="kindname" value="<%=kindname%>"></td>
    </tr>

    <tr> 
	 <td height="38"> </td>
      <td height="38"> 
<input type="submit" name="Submit" value=" �޸� " >
<input name="id" type="hidden" id="id" value="<%=request("id")%>">
<%
call connclose()
%>
</td>
    </tr>
  </table>
</form>
	</body>
</html>










