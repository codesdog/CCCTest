
<!--#include file="conn.asp"-->
<!--#include file="check2.asp"-->
<%
okkind=request.form("okkind")
if okkind="ok" then

		wuliuflag=trim(request.form("wuliuflag"&i))
		memo=trim(request.form("memo"&i))
		sql="update sh_wuliuflag set wuliuflag='"&wuliuflag&"' "
		conn.execute(sql)

	response.write "<script language=JavaScript>" & "alert('�ɹ��������ã�');" & "window.location.href='wuliuflag.asp';" & "</script>"
	conn.close
	response.end
end if
%>
<html><head>
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
<BODY bgcolor="#fcfcfc">

<table height="5"><tr><td></td></tr></table>
<TABLE width=93% border=0 align="center" cellPadding=0 cellSpacing=0 style="BORDER-RIGHT: #b1bfee 1px solid; BORDER-TOP: #b1bfee 1px solid; BORDER-LEFT: #b1bfee 1px solid; BORDER-BOTTOM: #b1bfee 1px solid" >
  <TBODY>
    <TR>
      <TD width="90%" bgColor=#f4f5fd><font color="#000000">��<B><font color="#FF0000">ѡ�����ͼƷѷ�ʽ</font></B></font></TD>
      <TD bgColor=#f4f5fd height=30>&nbsp;</TD>
    </TR>
  </TBODY>
</TABLE>

<%
dim sql4,rs4,id,num,pkid
	sql4="select wuliuflag from sh_wuliuflag"
	set rs4=server.createobject("adodb.recordset")
	rs4.open sql4,conn,1,1
	if rs4.bof or rs4.eof then
	else
		wuliuflag=rs4("wuliuflag")
	end if
	rs4.close
	set rs4=nothing
%>

<table width="93%"  border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#b1bfee">
  <form action=wuliuflag.asp method=post name=setup>
    <tr bgcolor="#FFFFFF"> 
      <td width="10%" height="30" align="center" valign="middle"><div align="right">
        <input type="radio" name="wuliuflag" value="1" <%if wuliuflag="1" then response.write "checked"%>>
      </div></td>
      <td  valign="middle">��ͨ�Ƽ���ʽ ��ͨ�����ۣ���Ʒ���٣������ᣬ�˷Ѳ��󣬼ƷѼ򵥵������ѡ��˷�ʽ��</td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="30" align="center" valign="middle"><div align="right">
        <input type="radio" name="wuliuflag" disabled  value="2">
      </div></td>
      <td  valign="middle">����Ʒ���������˷ѷ�ʽ ��ͨ������Ʒ������ÿ������Ʒ�����������������˷Ѵ󣬰����õ��������͹�˾�Ʒѣ���ѡ��˷�ʽ��</td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="30">&nbsp;</td>
      <td>˵����<br>�����ھ��������ַ�ʽǰ��ģ�������Ŷ���������һ�������ּ����˷ѷ�ʽ�پ�����<br>
	  ѡ��ͬ�ļ����˷ѷ�����ڹ˿��¶�������ʱ�ᰴ��ѡ�ķ�ʽ�����˷ѡ��밴�������ѡ��<br>
	  <strong>ֻ����ҵ�汾��֧�ֱ����ͻ��˷ѷ�ʽ</strong></td>
    </tr>
    <tr> 
      <td height="30" bgcolor="#FFFFFF" >&nbsp;</td>
      <td height="30" bgcolor="#FFFFFF" ><input name="okkind" type="hidden" value="ok"> 
        <input name=action type="submit" value="��������">
        &nbsp;</td>
    </tr>
  </form>
</table>
</td></tr>
</table> </td></tr> </table> 
         
<table width="95%" border="0">
  <tr> 
    <td height="60">&nbsp;</td>
  </tr>
</table>

<%conn.close%>
</body></html>
