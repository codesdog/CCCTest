<!--#include file="conn.asp"-->
<%
if s_head="head4.asp" or s_productkind="4" then
	response.write "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">"
else
	response.write "<!DOCTYPE HTML PUBLIC ""-//W3C//DTD HTML 4.01 Transitional//EN"">"
end if
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><%=application("sitename")%></title>
<link href="i.css" type=text/css rel=stylesheet>
<style type="text/css"> 
<!--

.style1 {font-size: 14px}
.style11 {
	font-size: 14px;
	color: #990000;
	font-weight: bold;
}
.style12 {color: #990000}
-->
</style>
<SCRIPT language=JavaScript>
<!--

function Juge(theForm)
{
  if (isNaN(theForm.price11.value))
  {
    alert("�г���ҪΪ����!");
    theForm.price11.focus();
    return (false);
  }
  if (isNaN(theForm.price12.value))
  {
    alert("�г���ҪΪ����!");
    theForm.price12.focus();
    return (false);
  }
  if (isNaN(theForm.price21.value))
  {
    alert("��Ա��ҪΪ����!");
    theForm.price21.focus();
    return (false);
  }
  if (isNaN(theForm.price22.value))
  {
    alert("��Ա��ҪΪ����!");
    theForm.price22.focus();
    return (false);
  }
}
-->
</script>

</head>

<body>
<!-- #include file="head.asp" -->
<TABLE width="960" border=0 align="center" cellPadding=0 cellSpacing=0 bgcolor="#FFFFFF">
  <tr><td>


<table width="770" height="352" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="213" height="184" valign="top" >
 <!-- #include file="inc_left_all.asp" --> </td>

    <td width="557" valign="top">
	<table width="99%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height=2></td>
      </tr>
    </table>
      <TABLE width="550" 
                  border=0 align="center" cellPadding=0 cellSpacing=2 class=a1>
        <TBODY>
          <TR>
            <TD width="543" height=30 colSpan=3><TABLE width="548" 
border=0 cellPadding=0 cellSpacing=0 background="images/bg4.gif">
              <TBODY>
                <TR>
                          <TD width=136 
                            height=30 background=images/hotnewpro.gif>������<span class="style11">��Ʒ�߼�����</span></TD>
                          <TD width="370">&nbsp;</TD>
                          <TD width=42>&nbsp;</TD>
                </TR>
              </TBODY>
            </TABLE></TD>
          </TR>
		  </tbody>
		  </table>
            <br>
            <table width="86%" border="0" cellspacing="0" cellpadding="0">
<form name="theForm" method="post" action="advsearchadmin.asp" onSubmit="return Juge(this)">
              <tr> 
                  <td width="27%" height="35">
<div align="right">��Ʒ���</div></td>
                  <td width="73%">
                    <select name="kindnum" size="1" style="width:168px; font-size:12px; ">
<%
	  'dim maxkind,kindnum,kindname,grade,i,gradestr

	response.write "<option value=''>ȫ��</option>"

		sql="select * from sh_kind order by kindnum"
		set rs=server.createobject("adodb.recordset")
		rs.open sql,conn,1,1
		if rs.bof or rs.eof then
		else
		do while not rs.eof
			kindnum=rs("kindnum")
			kindname=rs("kindname")
			grade=len(kindnum)/4
			i=1
			gradestr=""
			for i=1 to grade-1
				gradestr=gradestr &"--"
			next
			response.write "<option value='"&kindnum&"'>|-"&gradestr&kindname&"</option>"
		rs.movenext
		loop
		end if
		rs.close
		set rs=nothing
%>
	  
      </select></td>
              </tr>
              <tr> 
                  <td height="35">
<div align="right">��ƷƷ�ƣ�</div></td>
                <td><input name="pipai" type="text" id="pipai">
                    (֧��ģ������) </td>
              </tr>
              <tr> 
                  <td height="35">
<div align="right">��Ʒ��ţ�</div></td>
                <td><input name="model" type="text" id="model">
                    (֧��ģ������) </td>
              </tr>
              <tr> 
                  <td height="35">
<div align="right">��Ʒ���ƣ�</div></td>
                <td><input name="productname" type="text" id="productname">
                    (֧��ģ������) </td>
              </tr>
			  
<!--
              <tr> 
                  <td height="35">
<div align="right">�г��ۣ�</div></td>
                  <td>��
                    <input name="price11" type="text" id="price11" size="6">
                    �� 
                    <input name="price12" type="text" id="price12" size="6">
                    Ԫ</td>
              </tr>
              <tr> 
                  <td height="35">
<div align="right">��Ա�ۣ�</div></td>
                  <td>�� 
                    <input name="price21" type="text" id="price21" size="6">
                    �� 
                    <input name="price22" type="text" id="price22" size="6">
                    Ԫ</td>
              </tr>
-->
			  
			  
              <tr> 
                  <td height="16"> 
<div align="right"></div></td>
                <td>&nbsp;</td>
              </tr>
              <tr> 
                <td height="30"><div align="right"></div></td>
                <td>
                    <input type="submit" name="Submit" value="��������">
                    ���� 
                    <input type="reset" name="Submit2" value="������д">
                  </td>
              </tr>
              <tr> 
                <td height="30"><div align="right"></div></td>
                <td>&nbsp;</td>
              </tr></form>
            </table> </td>
  </tr>
</table>

    </td>
  </tr>

</table>
<!-- #include file="foot.asp" -->
<%
conn.close
set conn=nothing
%>
</body>
</html>

