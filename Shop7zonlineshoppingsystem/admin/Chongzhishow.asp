<!--#include file="conn.asp"-->
<!--#include file="check4.asp"-->
<%
menuid=request("menuid")
id=request.QueryString("id")
'response.write id
'response.end


sql="select * from VIEW_chongzhi where id="&id
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
	id=rs("id")
	czdate=rs("czdate")
	customid=rs("customid")
	customname=rs("username")
	
	czby=rs("czby")
	czmoney=rs("czmoney")
	czmemo=rs("czmemo")
	
	confirmflag=rs("confirmflag")
	operator=rs("operator")

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

   if (theForm.customname.value == "")
  {
    alert("����д��Ա��");
    theForm.customname.focus();
    return (false);
  } 

  if (theForm.czdate.value == "" || theForm.czdate.value == "null")
  {
    alert("����д��ֵ���ڡ�");
    theForm.czdate.focus();
    return (false);
  }  

  if (theForm.czby.value == "")
  {
    alert("����д��ֵ��ʽ��");
    theForm.czby.focus();
    return (false);
  }

  if (theForm.czmoney.value == "")
  {
    alert("����д��ֵ��");
    theForm.czmoney.focus();
    return (false);
  }
  if (isNaN(theForm.czmoney.value))
  {
    alert("���ֵ���ҪΪ��ֵ��");
    theForm.czmoney.focus();
    return (false);
  }  

  if (theForm.confirmflag.value == "")
  {
    alert("��ѡ���Ƿ�ȷ�ϡ�");
    theForm.confirmflag.focus();
    return (false);
  }

   if(confirm("ȷ���޸���?"))
      return true
   else
      return false;

}
-->
</script>
</head>
<body topmargin="10">
  <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td>&nbsp;</td>
    </tr>
  </table>

  <table width="93%" align="center" border=1 cellspacing=0 cellpadding=1 bordercolorlight=#5BD77D bordercolordark=#ffffff>
   <form name="theForm" method="post" action="chongzhimodify.asp?menuid=<%=menuid%>" onsubmit="return Juge(this)">   <tr>
      <td class=titlehead height=20>�޸ĳ�ֵ��Ϣ</td>
    </tr>
  </table>
 <table width="93%" border="0" align="center" cellpadding="0" cellspacing="1" class="tableborder">

    <tr> 
      <td width="12%" height="5"></td>
      <td width="26%"></td>
      <td width="10%"></td>
      <td width="51%"></td>
    </tr>
    <tr height=35>
	<td align='right'>��ֵ����</td>
	<td><input type='text' name='czdate' maxlength='50' value='<%=czdate%>'></td>
	<td align="right">��ֵ��Ա</td>
	<td ><input type="text" name="customname" value="<%=customname%>" size="16" class="input1" readonly>
	<input type=button value='��' onclick="javascript:window.open('openhy.asp?tan=1&menuid=28','','top=72,left=100,scrollbars=yes,width=670,height=530');">
	<input type="hidden" name="customid" value="<%=customid%>">
	</td>	
	</tr>
	
    <tr height=35> 
	<td align='right'>��ֵ��ʽ</td>
	<td><input type='text' name='czby' maxlength='50' value='<%=czby%>'></td>
	<td align='right'>��ֵ���</td>
	<td><input type='text' name='czmoney' maxlength='50' value='<%=czmoney%>'></td>
    </tr>


    <tr height=35> 
	<td align='right'>�Ƿ�ȷ��</td>
	<td> <select name='confirmflag' size='1' >
	<option value=''></option>
	<option value='��' <%if confirmflag="��" then response.write "selected" %>>��</option>
	<option value='��' <%if confirmflag="��" then response.write "selected" %>>��</option>
	</select></td> 
	<td align='right'>ȷ����/ʱ��</td> 
	<td><input type='text' name='operator' maxlength='50' value='<%=operator%>' class='input1' readonly></td>  
    </tr> 
    <tr  height=35>
	<td align='right'>��ע</td>
	<td colspan=3><input type='text' name='czmemo' size='64' maxlength='70' value='<%=czmemo%>'></td>
    </tr>	
	
  </table>
  
  <table width="82%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td height="40"> 
		<div align="center">
		<input type="hidden" name="id" value="<%=id%>">
		<input type="Submit" name="Submit2" value="ȷ ��">
          &nbsp;&nbsp;&nbsp;&nbsp; 
          <input type="reset" name="Submit2" value="�� ��">
          &nbsp;&nbsp;&nbsp;&nbsp; 
          <input type="button" name="Submit22" value="�� ��" onclick=javascript:history.back()>
        </div></td>
    </tr></form>
  </table>
<br>
</body>
</html>
<%conn.close
set conn=nothing%>






