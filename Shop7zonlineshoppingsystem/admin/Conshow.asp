<!--#include file="conn.asp"-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>�޸�����</title>
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
  if (theForm.c_parent.value == "")
  {
    alert("��ѡ����Ŀ����!");
    document.theForm.c_parent.focus();
    return false;
  }
  if (theForm.c_num.value == "")
  {
    alert("����������д˳��!");
    document.theForm.c_num.focus();
    return false;
  }
  if (isNaN(theForm.c_num.value))
  {
    alert("����������д˳��!");
    document.theForm.c_num.focus();
    return false;
  }
}
//-->
</script>

<style type="text/css">
<!--
body {
	margin-top: 5px;
}
.style1 {color: #CCCCCC}
.style2 {color: #FF0000}
.style4 {
	font-size: 14px;
	font-weight: bold;
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
</style></head>
<%

Dim htmlData

htmlData = Request.Form("c_contect")

Function htmlspecialchars(str)
	str = Replace(str, "&", "&amp;")
	str = Replace(str, "<", "&lt;")
	str = Replace(str, ">", "&gt;")
	str = Replace(str, """", "&quot;")
	htmlspecialchars = str
End Function
%>
<script type="text/javascript" charset="utf-8" src="../kindeditor.js"></script>
	<script type="text/javascript">
		KE.show({
			id : 'c_contect',
			urlType : 'absolute',
			imageUploadJson : '../../asp/upload_json.asp',
			fileManagerJson : '../../asp/file_manager_json.asp',
			allowFileManager : true
			 
		});
	</script>
<body bgcolor="#fcfcfc">

<%
	sql="select * from e_contect where c_id="&request("c_id")

set rs=server.CreateObject("adodb.recordset")
rs.open sql,conn,1,1
if rs.bof or rs.eof then
	response.write "<div align=center><br>û�м�¼!</div>"
else
	c_id=rs("c_id")
	c_parent1=rs("c_parent1")
	c_parent2=rs("c_parent2")
	c_title=rs("c_title")
	c_contect=rs("c_contect")
	c_num=rs("c_num")
	c_ubb=rs("c_ubb")
	url=rs("url")
	cuxflag=rs("cuxflag")
%>

<table width="97%" border="0" align="center" cellpadding="0" cellspacing="0" id="tabcss">
  <form name="theForm" method="post" action="conmodify.asp?newskind=<%=request.QueryString("newskind")%>" onSubmit="return Juge()">
    <tr bgcolor="#BFDFFF"> 
	<td height="33" colspan="2"><b>�޸���Ϣ��������</b></td>
    </tr>
    <tr> 
      <td height="24"><div align="right">��Ŀ</div></td>  
      <td> <select name="c_parent" size="1" style="width:250px;">
<%
		set rs2=server.CreateObject("adodb.recordset")
		sql2="select * from e_board where id="&c_parent1
		rs2.open sql2,conn,1,1
		id=rs2("id")
		rs2.close
		set rs2=nothing

		set rs3=server.CreateObject("adodb.recordset")
		sql3="select * from e_left where l_id="&c_parent2
		rs3.open sql3,conn,1,1
		l_id=rs3("l_id")
		l_title=rs3("l_title")
		response.write "<option value='"&id&"|"&l_id&"'>--"&l_title&"</option>"
		rs3.close
		set rs3=nothing


%>
          <option value="">**��ѡ����Ŀ����**</option>

          <%
		set rs2=server.CreateObject("adodb.recordset")
		sql2="select * from e_board"
		rs2.open sql2,conn,1,1
		if rs2.bof or rs2.eof then
		else
		do while not rs2.eof
		id=rs2("id")
		title=rs2("title")
		'response.write "<option value=''>"&title&"</option>"

				set rs3=server.CreateObject("adodb.recordset")
				sql3="select * from e_left where  (menukind='��ͨ�����б�' or menukind='�����б�ָ������' or menukind='����˵��')  order by bigmenu desc,l_num "
				rs3.open sql3,conn,1,1
				if rs3.bof or rs3.eof then
				else
				do while not rs3.eof
				l_id=rs3("l_id")
				l_title=rs3("l_title")
				menukind=rs3("menukind")
				response.write "<option value='"&id&"|"&l_id&"'>--"&l_title&" ("&menukind&")</option>"
				rs3.movenext
				loop
				end if
				rs3.close
				set rs3=nothing

		rs2.movenext
		loop
		end if
		rs2.close
		set rs2=nothing
%>
        </select></td>
    </tr>
    <tr> 
      <td height="27"><div align="right">����</div></td>
      <td><input name="c_title" type="text" size="60" maxlength="80" value="<%=c_title%>">
        ��80�����ڣ� </td>
    </tr>
    <tr>
      <td height="21">&nbsp;</td>
      <td>������ɫ���� �磺&lt;font color=&quot;#FF0000&quot;&gt;����&lt;/font&gt;</td>
    </tr>
    <tr> 
      <td height="21"><div align="right">����</div></td>

      <td><p> 
  
		  <textarea id="c_contect" name="c_contect" cols="100" rows="8" style="width:725px;height:400px;visibility:hidden;"><%=htmlspecialchars(c_contect)%></textarea>

        </p>
      </td>
    </tr>
    <tr> 
      <td height="20"><div align="right">˳��</div></td>
      <td><input name="c_num" type="text" size="5" maxlength="5" value="<%=c_num%>"></td>
    </tr>
    <tr> 
      <td height="28"><div align="right">������Ϣ</div></td>
      <td><input type="radio" name="cuxflag" value="1" <%if cuxflag="1" then response.write "checked"%>>�ǡ�
        <input type="radio" name="cuxflag" value="0" <%if cuxflag<>"1" then response.write "checked"%>>
        �� (��ҳ������Ʒ����ʾ�� </td>
    </tr>

<!--
    <tr>
      <td height="20"><div align="right"></div></td>
      <td><span class="style2">��������� (��������ӣ�����д���ӵ�ַ) </span></td>
    </tr>
    <tr>
      <td height="27"><div align="right">���ӵ�ַ</div></td>
      <td><input name="url" type="text" id="url" size="60" maxlength="100" value="<%=url%>"></td>
    </tr>
-->
    <tr> 
      <td height="45"><div align="right"></div></td>
      <td><input type="hidden" name="c_ubb" value="1"> <input type="submit" name="Submit" value=" �� �� "><input type=hidden name="c_id" value="<%=request("c_id")%>"> </td>
    </tr>
  </form>
</table>
<%end if%>
<!--
<a class="style1" style="Cursor:hand" onClick="MM_openBrWindow('upload.asp','','width=350,height=210')"> �ϴ�ͼƬ</a>
-->
</body>
</html>
<%
conn.close
set conn=nothing
%>

