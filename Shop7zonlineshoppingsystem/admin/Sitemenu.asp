<!--#include file="conn.asp"-->
<!--#include file="check2.asp"-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>�趨��Ŀ</title>
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

</head>

<body bgcolor="#fcfcfc">

<table width="97%" border="0" align="center" cellpadding="0" cellspacing="0" id="tabcss">
  <tr bgcolor="#BFDFFF">
      
    <td height=30 colspan=9>&nbsp;<b>�趨��Ŀ��</b></td> 
  </tr>

		<form name="theForm" method="post" action="sitemenuadmin.asp"  onsubmit="return Juge(this)">
		<tr bgcolor='#Ffffff'><td height=23 align=center>&nbsp;</td>
		<td colspan=8><B>��ҳ <font color="#FF0000">(ʱ�а��Ѳ������ﶨ��ͷ���˵������ǲ�������Ʒ������Ϊͷ���˵��������˵�) </font></b></td>
		</tr>
		<tr bgcolor='#E1E1E1'>
			<td height=23 align='center'>NO</td>
			<td>ͷ����Ŀ</td>
			<td>˳��</td>
			<td>��Ŀ���</td>
			<td>��Ŀ����</td>
			<td>ָ����URL</td>
			<td>�¿�����</td>
			<td>ϵͳ�̶�</td>
			<td>�Ƿ���ʾ</td>
		</tr>
  <%
		
		sql4="select * from e_left order by bigmenu desc,l_num"
		set rs4=server.createobject("adodb.recordset")
		rs4.open sql4,conn,1,1
		if rs4.bof or rs4.eof then
			response.write "��û����Ŀ��"
		else
		i=1
			do while not rs4.eof
				l_id=rs4("l_id")
				menukind=rs4("menukind")
				l_title=rs4("l_title")
				l_num=rs4("l_num")
				bigmenu=rs4("bigmenu")
				zhidingurl=rs4("zhidingurl")
				mylock=rs4("mylock")
				showflag=rs4("showflag")
				newopen=rs4("newopen")
				
				if bigmenu="��" then
%>
		  <tr bgcolor='#Ffffff' onMouseOver="this.style.background='#FFc4CA';" onMouseOut="this.style.background='#ffffff';"> 
		 <%else%>
		 <tr bgcolor='#BbEcB9' onMouseOver="this.style.background='#FFc4CA';" onMouseOut="this.style.background='#BbEcB9';"> 
		 <%end if%>
			<td height='23' align='center'><%=i%><input type=hidden name='l_id<%=i%>' value="<%=l_id%>"><input type=hidden name='mylock<%=i%>' value="<%=mylock%>"></td>
			<td>
			<select name="bigmenu<%=i%>">
				<option value="<%=bigmenu%>"><%=bigmenu%></option>
				<option value=""></option>
				<option value="��">��</option>
				<option value="��">��</option>
			</select>
			</td>
			<td>
			<input type=text name='l_num<%=i%>' value="<%=l_num%>" size="4">
			</td>			
			<td>
			<select name="menukind<%=i%>" style='width:150px;'>
				<option value="<%=menukind%>"><%=menukind%></option>
				<option value=""></option>
				<option value="��Ʒ�б�">��Ʒ�б�</option>
				<option value="��ͨ�����б�">��ͨ�����б�</option>
				<option value="�����б�ָ������">�����б�ָ������</option>
				<option value="����˵��">����˵��</option>
				<option value="ָ������">ָ������</option>
			</select>
			</td>
			
			<td>
			<input type=text name='l_title<%=i%>' value="<%=l_title%>" size="15">
			</td>
			
			<td>
			<input type=text name='zhidingurl<%=i%>' value="<%=zhidingurl%>" size="40" <%if mylock="��" then response.write " readonly style='BACKGROUND-COLOR: #FDEEDB;'"%>>
			</td>
			<td>
			<select name="newopen<%=i%>">
				<option value="<%=newopen%>"><%=newopen%></option>
				<option value="��">��</option>
				<option value="��">��</option>
			</select>
			</td>
			
			<td align='center'><%=mylock%></td>
			<td>
			<select name="showflag<%=i%>">
				<option value="<%=showflag%>"><%=showflag%></option>
				<option value="��">��</option>
				<option value="��">��</option>
			</select>
			</td>
		  </tr>

  <%		rs4.movenext
  			i=i+1
  			loop			
		end if
rs4.close
set rs4=nothing		
%>

		  <tr bgcolor='#Ffffff' onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';"> 
			<td height='23' align='center'><%=i%><input type=hidden name='l_id<%=i%>' value=""></td>
			<td>
			<select name="bigmenu<%=i%>">
				<option value=""></option>
				<option value="��">��</option>
				<option value="��">��</option>
			</select>
			</td>
			<td>
			<input type=text name='l_num<%=i%>' value="" size="4">
			</td>			
			<td>
			<select name="menukind<%=i%>" style='width:150px;'>
				<option value=""></option>
				<option value="��Ʒ�б�">��Ʒ�б�</option>
				<option value="��ͨ�����б�">��ͨ�����б�</option>
				<option value="�����б�ָ������">�����б�ָ������</option>
				<option value="����˵��">����˵��</option>
				<option value="ָ������">ָ������</option>
			</select>
			</td><td>
			<input type=text name='l_title<%=i%>' value="" size="15">
			</td>
			<td>
			<input type=text name='zhidingurl<%=i%>' value="" size="40">
			</td>
			<td>
			<select name="newopen<%=i%>">
				<option value="<%=newopen%>"><%=newopen%></option>
				<option value="��">��</option>
				<option value="��">��</option>
			</select>
			</td>
			<td>&nbsp;</td>
			<td>
			<select name="showflag<%=i%>">
				<option value="��">��</option>
				<option value="��">��</option>
			</select>
			</td>
		  </tr>
		  
  <tr bgcolor='#Ffffff'> 
      <td height='35' align='right'><input type=hidden name='i' value="<%=i%>"></td>  
	  <td colspan=8><input type="submit" name="Submit2" value=" ���� ">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="Submit3" value=" ���� "> </td>
  </tr>
  
</form>
</table>
<table width="97%" border="0" align="center" cellpadding="2" cellspacing="1">
  <tr bgcolor="#FFFFFF">
    <td height="63" valign="top" style="line-height:170%"><strong><font color="#FF0000">˵����</font></strong><br>
      1 ����趨�ˡ�ָ����URL������Ŀ���ӽ�����ָ����URL���ȡ�����ϵͳ���ݡ���Ŀ��������������ӡ�<br>
      2 ����ǡ�����������Ŀ�����Ǻ�̨Ԥ���趨�ģ�ֻ���޸ġ���Ŀ���ơ���˳�򣬶��������Բ����޸ġ�<br>
	  3 ����ǡ������б���������˵�����ľ�����Ϣ���ݼ���ͨ���˵��������Ŀ��Ϣ����������Ϣ��ͨ������Ŀ��Ϣ�б����޸���Ϣ��<br>
      4 ����ǡ�ָ�����ӡ���ģ����ǵ���˲˵�����ת��ָ�������ӡ��������ָ��<strong>��վ</strong>�����ӣ���ʹ��http://��ͷ�����ӣ��磺ָ����URL����дhttp://www.Shop7z.com/payfor.asp��<br>
      5 �����������ӵ���Ŀ������߲˵�����ʾʱ���ɰ�F5��ˢ�º�����Ŀ�����ɿ��������Ĳ˵��� <br>
      6 ������Ƿ���ʾ������ѡ���ˡ��񡱣���������ǰ̨�˵��н�����ʾ����Ŀ��<br>
      7 ���Ҫ<strong>ɾ��</strong>����������Ŀ��������ѡ��Ϊ�հף�ɾ�����������ݣ��ٱ��棬����ɾ������Ŀ�� <br>
      <br></td>
  </tr>
</table>


<SCRIPT language=JavaScript>
<!--
function Juge()
{


<%for k=1 to i%>

if (document.theForm.l_title<%=k%>.value!="")
{
	if (theForm.menukind<%=k%>.value == "")
	{
	alert("��ѡ����Ŀ���");
	theForm.menukind<%=k%>.focus();
	return (false);
	}
	
	if (theForm.l_num<%=k%>.value == "")
	{
	alert("����д˳��š�");
	theForm.l_num<%=k%>.focus();
	return (false);
	}
	
	if (theForm.bigmenu<%=k%>.value == "")
	{
	alert("��ѡ���Ƿ�Ϊͷ����Ŀ��");
	theForm.bigmenu<%=k%>.focus();
	return (false);
	}

	if (theForm.menukind<%=k%>.value == "�����б�ָ������" || theForm.menukind<%=k%>.value == "ָ������" )
	{
		if (theForm.zhidingurl<%=k%>.value == "")
		{
		alert("����дָ�������ӵ�ַ��");
		theForm.zhidingurl<%=k%>.focus();
		return (false);
		}
	}	
	
}

<%next%>




if(confirm("ȷ��Ҫ������Ŀ������?"))
  return true
else		
  return false;
}
-->
</script>


</body>
</html>
<%
call connclose
%>

