<!--#include file="conn.asp"-->
<!--#include file="check2.asp"-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>��վ��̨,����META</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style>
<!--
td{font-size:9pt}
body {
	margin-top: 5px;margin-left: 2px;
}
.style3 {color: #A84E22; font-weight: bold; }
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


meta_title=trim(request.form("meta_title"))
meta_keyword=trim(request.form("meta_keyword"))
meta_desc=trim(request.form("meta_desc"))
Submit2=trim(request.form("Submit2"))

if Submit2="����" then

meta_all="<title>"&meta_title&"</title>"&vbcrlf
meta_all=meta_all&"<META http-equiv=Content-Language content=zh-cn>"&vbcrlf
meta_all=meta_all&"<META NAME=copyright CONTENT='Copyright "&year(date())&"'>"&vbcrlf
meta_all=meta_all&"<META  name=""keywords"" content="""&meta_keyword&""">"&vbcrlf
meta_all=meta_all&"<META  name=description content="""&meta_desc&""">"

		sql4="select * from meta"
		set rs4=server.createobject("adodb.recordset")
		rs4.open sql4,conn,1,3
		if rs4.bof or rs4.eof then
				rs4.addnew
				rs4("meta_title")=meta_title
				rs4("meta_keyword")=meta_keyword
				rs4("meta_desc")=meta_desc
				rs4("meta_a11")=meta_all
				rs4.update
		else
				rs4("meta_title")=meta_title
				rs4("meta_keyword")=meta_keyword
				rs4("meta_desc")=meta_desc
				rs4("meta_a11")=meta_all
				rs4.update
		end if
		rs4.close
		set rs4=nothing
		response.write "<script language=JavaScript>" & "alert('����ɹ�!');"& "window.location.href='sitemeta.asp';" & "</script>"
end if

%>
</head>

<body bgcolor="#fcfcfc">       
<table width="97%" border="0" align="center" cellpadding="0" cellspacing="0" id="tabcss">
  <tr bgcolor="#E1EFFF"> 
    <td height=30 colspan=2>&nbsp;<b>������վMETA��</b>(����META����������ֿ���磺baidu,google��������¼�������꣬����������META��׼ȷ���ҵ���������)</td>
  </tr>
<form name="form1" method="post" action="sitemeta.asp">
  <%
		
		sql4="select * from meta"
		set rs4=server.createobject("adodb.recordset")
		rs4.open sql4,conn,1,1
		if rs4.bof or rs4.eof then
			response.write "û�з�������������¼��"
		else
				id=rs4("id")
				meta_title=rs4("meta_title")
				meta_keyword=rs4("meta_keyword")
				meta_desc=rs4("meta_desc")
				meta_all=rs4("meta_a11")
%>
    
    <tr bgcolor='#Ffffff' onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';"> 

      <td height='23' width="18%" align='right'>����</td>
      <td width="82%"> 
        <input name='meta_title' type=text id="meta_title" value="<%=meta_title%>" size="70"></td>
  </tr>
  <tr bgcolor='#Ffffff' onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';"> 

<td height='23' align='right'>�����ؼ���</td>
    <td><input name='meta_keyword' type=text id="meta_keyword" value="<%=meta_keyword%>" size="70"></td>
  </tr>
    
    <tr bgcolor='#Ffffff' onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';"> 
<td height='23' align='right'>��վ����</td>
    <td><input name='meta_desc' type=text id="meta_desc" value="<%=meta_desc%>" size="70">
      </td>
  </tr>
  <tr bgcolor='#Ffffff' onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';"> 
      <td height='35' align='right'>&nbsp;</td>  
<td><input type="submit" name="Submit2" value=" ���� ">&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="reset" name="Submit3" value=" ���� "> </td>
  </tr>  
  
  <tr bgcolor='#Ffffff' onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';"> 

<td height='31' align='right'>&nbsp;</td>
      <td>����������Ϣ����Զ����ɵ�������Ϣ��</td>
  </tr>
  <tr bgcolor='#Ffffff' onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';"> 
      <td height='23' align='right'>&nbsp;</td>
<td><textarea name="meta_all" cols="68" rows="11" readonly style="background:'#FFf4CA';"><%=meta_all%></textarea></td>
  </tr>


  <%				
		end if
rs4.close
set rs4=nothing		
%>
</form>
</table>
<br><br><br>

</body>
</html>
<%
call connclose
%>

