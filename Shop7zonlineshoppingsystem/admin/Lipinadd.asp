<!-- #include file="conn.asp" -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>��Ʒ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
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
  if (theForm.smallpicpath.value == "")
  {
    alert("���ϴ���ƷСͼƬ");
    return false;
  }
  if (theForm.bigpicpath.value == "")
  {
    alert("���ϴ���Ʒ��ͼƬ");
    return false;
  }
  if (theForm.lipinno.value == "")
  {
    alert("��������Ʒ���.");
    document.theForm.lipinno.focus();
    return false;
  }
  if (theForm.lipinname.value == "")
  {
    alert("��������Ʒ����.");
    document.theForm.lipinname.focus();
    return false;
  }
  if (theForm.zhifen.value == "")
  {
    alert("�������������.");
    document.theForm.zhifen.focus();
    return false;
  }
  if (isNaN(theForm.zhifen.value))
  {
    alert("�������ҪΪ����!");
    theForm.zhifen.focus();
    return (false);
  }

  if (theForm.num.value == "")
  {
    alert("������˳��.");
    document.theForm.num.focus();
    return false;
  }
  if (isNaN(theForm.num.value))
  {
    alert("˳��ҪΪ����!");
    theForm.num.focus();
    return (false);
  }

}
//-->
</script>
<%

Dim htmlData

htmlData = Request.Form("memo")

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
			id : 'memo',
			urlType : 'absolute',
			imageUploadJson : '../../asp/upload_json.asp',
			fileManagerJson : '../../asp/file_manager_json.asp',
			allowFileManager : true
			 
		});
	</script>
<style>
td { font-size: 9pt; color: #000000;font-family: "����"}

.border {
	BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid
}
input {
      	height=20px;BORDER-RIGHT: #999999 1px solid; BORDER-TOP: #999999 1px solid; FONT-SIZE: 9pt; BORDER-LEFT: #999999 1px solid; BORDER-BOTTOM: #999999 1px solid; FONT-FAMILY: "����"; BACKGROUND-COLOR: #ffffff
}
.style1 {
	font-weight: bold;
	color: #FF0000;
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
</style>

</head>

<body bgcolor="#fcfcfc">
<%
id=request("id")
if id="" then
	showflag="1"
else
	sql="select * from x_lipin where id="&id&" "
	set rs=server.CreateObject("adodb.recordset")
	rs.open sql,conn,1,1
	if rs.bof or rs.eof then
		response.write "<div align=center>û�м�¼! </div>"
	else
		id=rs("id")
		picpath=rs("picpath")
		picpath2=rs("picpath2")
		lipinno=rs("lipinno")
		lipinname=rs("lipinname")
		zhifen=rs("zhifen")
		showflag=rs("showflag")
		num=rs("num")
		memo=rs("memo")
	end if
	rs.close 
	set rs=nothing
end if

	conn.close
	set conn=nothing
%>
<form name="theForm" method="post" action="lipinaddadmin.asp" onSubmit="return Juge()">

  <table width="97%" border="0" align="center" cellpadding="0" cellspacing="0" id="tabcss">
    <tr> 
      <td width="682" height="33" bgcolor="#E1EFFF"><div class="style1">��Ʒ����</div></td>
    </tr>
    <tr> 
      <td height="32"> <input name="smallpicpath" type="text" size="40" value="<%=picpath%>"> 
        <input type="button" name="Button" value="�ϴ�СͼƬ" onClick="MM_openBrWindow('upload2.asp?size=small','','width=310,height=210,top=100,left=10')">
        (���Լ100 X Լ100) </td>
    </tr>
    <tr> 
      <td height="32"> <input name="bigpicpath" type="text" size="40" value="<%=picpath2%>"> 
        <input type="button" name="Button" value="�ϴ���ͼƬ" onClick="MM_openBrWindow('upload2.asp?size=big','','width=310,height=210,top=100,left=10')">
      ���400-600px X 400-600px 100KB���ڡ�ͼƬ��ΪӢ�Ļ�����      </td>
    </tr>
    <tr> 
      <td height="33">��Ʒ���: 
        <input type="text" name="lipinno" size="30" value="<%=lipinno%>"></td>
    </tr>
    <tr> 
      <td height="33">��Ʒ����: 
        <input type="text" name="lipinname" size="30" value="<%=lipinname%>"></td>
    </tr>
    <tr> 
      <td height="33">�������: 
        <input name="zhifen" type="text" size="30" value="<%=zhifen%>"></td>
    </tr>
    <tr> 
      <td height="33">�Ƿ���ʾ: 
        <input type="checkbox" name="showflag" value="1" <%if showflag="1" then response.write "checked"%>></td>
    </tr>
    <tr> 
      <td height="33">˳��: 
        <input type="text" name="num" size="5" value="<%=num%>">
        �������е��Ⱥ�</td>
    </tr>
    <tr>
      <td height="33">��ϸ: 
	<textarea id="memo" name="memo" cols="100" rows="8" style="width:725px;height:400px;visibility:hidden;"><%=htmlspecialchars(memo)%></textarea>
		 
		</td>
    </tr>
    <tr> 
      <td height="37"> <input type="hidden" name="id" value="<%=id%>" > 
        <%if id="" then%> <input type="submit" name="Submit" value=" �� �� " > <%else%> <input type="submit" name="Submit" value=" �� �� " > <%end if%> </tr>
  </table>
  <p>&nbsp;</p>
</form>
</body>
</html>

