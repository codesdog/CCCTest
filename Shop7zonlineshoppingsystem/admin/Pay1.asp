
<!--#include file="conn.asp"-->
<!--#include file="check2.asp"-->
<%
dim paypalstat,paypalkind,business0,currency_code0,business1,currency_code1,paypalmemo

ok=request.form("ok")
if ok="ok" then
	for i=1 to 3
		mystat=trim(request.form("mystat"&i))
		myaccount=trim(request.form("myaccount"&i))
		mykey=trim(request.form("mykey"&i))
		myparentid=trim(request.form("myparentid"&i))
		memo=trim(request.form("memo"&i))
		self1=trim(request.form("self1"))
		self2=trim(request.form("self2"))
		if self1<>"" and right(self1,1)="/" then self1=left(self1,len(self1)-1)
		if self2<>"" and right(self2,1)="/" then self2=left(self2,len(self2)-1)
		
		sql="update sh_pay1 set mystat='"&mystat&"',myaccount='"&myaccount&"',mykey='"&mykey&"',myparentid='"&myparentid&"',memo='"&memo&"',self1='"&self1&"',self2='"&self2&"' where id="&i
		conn.execute(sql)
		
	next


	response.write "<script language=JavaScript>" & "alert('�ɹ��������ã�');" & "window.location.href='pay1.asp';" & "</script>"
	
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
<TABLE width=93% border=0 align="center" cellPadding=0 cellSpacing=0 style="BORDER-RIGHT: #b1bfee 1px solid; BORDER-TOP: #b1bfee 1px solid; BORDER-LEFT: #b1bfee 1px solid; BORDER-BOTTOM: #b1bfee 1px solid" 
>
  <TBODY>
    <TR>
      <TD width="90%" bgColor=#f1d5fd><font color="#000000">��<B><font color="#FF0000">����֧����������֧��ƽ̨������</font></B></font></TD>
      <TD bgColor=#f1d5fd height=30>&nbsp;</TD>
    </TR>
  </TBODY>
</TABLE>
		  <table height="5"><tr><td></td></tr></table>

<%
dim sql4,rs4,id,num,pkid


	sql4="select * from sh_pay1"
	set rs4=server.createobject("adodb.recordset")
	rs4.open sql4,conn,1,1
	if rs4.bof or rs4.eof then
			
	else
		self1=rs4("self1")
		self2=rs4("self2")
		do while not rs4.eof
			id=rs4("id")
			if id=1 then
				mystat1=rs4("mystat")
				myaccount1=rs4("myaccount")
				mykey1=rs4("mykey")
				myparentid1=rs4("myparentid")
				memo1=rs4("memo")
			elseif id=2 then
				mystat2=rs4("mystat")
				myaccount2=rs4("myaccount")
				mykey2=rs4("mykey")
				myparentid2=rs4("myparentid")
				memo2=rs4("memo")
			elseif id=3 then
				mystat3=rs4("mystat")
				myaccount3=rs4("myaccount")
				mykey3=rs4("mykey")
				myparentid3=rs4("myparentid")
				memo3=rs4("memo")
			else
			end if
	    rs4.movenext
		loop
	end if
	rs4.close
	set rs4=nothing
	
	'---------������paypal��----------
	sql4="select * from sh_pay_paypal "
	set rs4=server.createobject("adodb.recordset")
	rs4.open sql4,conn,1,1
	if rs4.bof or rs4.eof then
			
	else
		paypalstat = RS4("paypalstat")
		paypalkind = RS4("paypalkind")
		business0 = RS4("business0")
		currency_code0 = RS4("currency_code0")
		business1 = RS4("business1")
		currency_code1 = RS4("currency_code1")
		paypalmemo = RS4("paypalmemo")
	end if
	rs4.close
	set rs4=nothing

%>
<table width="93%"  border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#b1bfee">
  <form action=pay1.asp method=post name=setup>
  
    <tr bgcolor="#FFFFFF"> 
      <td width="20%" height="30" align="center" valign="middle"><div align="right">����������</div></td>
      <td  valign="middle"><input name="self1" type="text" size="33" value="<%=self1%>">       
         ����д������������.��:www.shop7z.com (��ַǰ����http://) </td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="30" align="center" valign="middle"><div align="right">������ַ��</div></td>
      <td  valign="middle"><input name="self2" type="text" size="33" value="<%=self2%>">        
      �п��������ļ����Ƿ��ڿռ��Ŀ¼�£����Ƕཨ��һ���ļ���,��shop�������Ļ���������ַ����дwww.shop7z.com/shop�����û�жཨ�ļ��У�����д�����������ɡ�</td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="30" align="center" valign="middle"><div align="right">״̬��</div></td>
      <td  valign="middle"><input type="radio" name="mystat1" value="1" <%if mystat1="1" then response.write "checked"%>>
        �������� 
        <input type="radio" name="mystat1" value="0" <%if mystat1="0" then response.write "checked"%>>
        �ر�</td>
    </tr>
	
    <tr bgcolor="#FFFFFF"> 
      <td height="30" align="center" valign="middle"><div align="right">֧�����ʻ���</div></td>
      <td  valign="middle"><input name="myaccount1" type="text" size="33" value="<%=myaccount1%>"></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="30" align="center" valign="middle"><div align="right">���װ�ȫУ����(Key)��</div></td>
      <td  valign="middle"><input name="mykey1" type="text" size="33" value="<%=mykey1%>"></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="30" align="center" valign="middle"><div align="right">���������(PartnerID)��</div></td>
      <td  valign="middle"><input name="myparentid1" type="text" size="33" value="<%=myparentid1%>"></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="30" align="center" valign="middle"><div align="right">˵����</div></td>
      <td  valign="middle"><textarea name="memo1" cols="50" rows="4"><%=memo1%></textarea></td>
    </tr>
    <tr> 
      <td height="30" rowspan="2" bgcolor="#FFFFFF" >&nbsp;</td>
      <td height="14" bgcolor="#FFFFFF" ><input name="ok" type="hidden" value="ok"> 
        <input name=action type="submit" value="��������ȫ������" onClick="return confirm('ȷ�ϱ�������������')"> &nbsp;</td>
    </tr>
    <tr>
      <td height="15" bgcolor="#FFFFFF" ><strong>��Ѱ�ֻ֧��֧�����н鵣������ʽ��֧�ֶ�������֧���ӿ��Լ�֧������ʱ���ʵ����ݡ�</strong></td>
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
