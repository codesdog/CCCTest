<!--#include file="conn.asp"-->
<%
if session("username")="" or session("s_stat")="" then
		conn.close
		set conn=nothing
		response.Redirect("QuicklyCheck.asp")
		response.end
end if
%>
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
.style12 {color: #990000}
-->
</style>
<SCRIPT language=javascript>
function Juge()
{
	if (document.theForm.password.value=="")
	{
		alert ("�������û���½���롣")
		document.theForm.password.focus();
		return false;
	}
	if (document.theForm.password.value.length<4||document.theForm.password.value.length>20)
	{
		alert ("�û���½�����ַ���̫�̻�̫��")
		document.theForm.password.focus();
		return false;
	}
	if (document.theForm.password.value!=document.theForm.password2.value)
	{
		alert ("��½����ȷ�ϴ���")
		document.theForm.password2.focus();
		return false;
	}
	if (document.theForm.password_prompt.value=="")
	{
		alert ("������������ʾ����")
		document.theForm.password_prompt.focus();
		return false;
	}
	if (document.theForm.password_Answer.value=="")
	{
		alert ("������������ʾ�����")
		document.theForm.password_Answer.focus();
		return false;
	}
	
	if (document.theForm.truename.value=="")
	{
		alert ("�������û���ʵ����")
		document.theForm.truename.focus();
		return false;
	}
	
	if (document.theForm.telphone1.value=="")
	{
		alert ("��������ϵ�绰1")
		document.theForm.telphone1.focus();
		return false;
	}
	
	if (document.theForm.address.value=="")
	{
		alert ("��������ϵ��ַ")
		document.theForm.address.focus();
		return false;
	}


   if(confirm("�������Ҫ�޸����ĸ���������?"))
      return true
   else
      return false;
}
</SCRIPT>
</head>

<body>
<!-- #include file="head.asp" -->
<TABLE width="960" border=0 align="center" cellPadding=0 cellSpacing=0 bgcolor="#FFFFFF">
  <tr>
    <td> 

<TABLE height=278 cellSpacing=0 cellPadding=0 width=960 align=center bgColor=#ffffff border=0>
        <TBODY>
          <TR> 
            <TD vAlign=top width="180"><!-- #include file="zq_left.asp" --></TD>
            <TD width=780 valign="top" bgColor=#ffffff>
			
<%
if session("username")="" or session("s_stat")="" then
		
else
	sql="select * from x_huiyuan where username='"&session("username")&"' "
	set rs=server.createobject("adodb.recordset")
	rs.open sql,conn,1,1
	if rs.bof or rs.eof then
	else
		'username=rs("username")
		password=rs("password") 
		password_prompt=rs("password_prompt") 
		password_Answer=rs("password_Answer") 
		vipno=rs("vipno") 
		truename=rs("truename") 
		province=rs("province") 
		city=rs("city")
		area=rs("self1")
		telphone1=rs("telphone1") 
		telphone2=rs("telphone2") 
		fax=rs("fax") 
		mobile=rs("mobile") 
		address=rs("address") 
		postno=rs("postno") 
		email=rs("email") 
		babysex=rs("babysex") 
		babybirthday=rs("babybirthday")
		customkind=rs("customkind")
		lasttime=rs("lasttime")
		lastip=rs("lastip")
		
		
	end if
	rs.close
	set rs=nothing	
%>
              <TABLE width="99%" border=0 align="center" cellPadding=3 cellSpacing=0 bgColor=#cccccc class=black-pix12 id=Table3>
                <FORM id=theForm name="theForm" action="hyzqadmin.asp" method="post" onSubmit="return Juge()">
                  <TBODY>
                    <TR bgColor=#ffffff> 
                      <TD colSpan=2 height=28><strong><b><font color=#ff0000><%=session("username")%></font></b> �������ϣ�</strong></TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD width=21% height="28" align=right> <DIV class=black align=right>�û�����</DIV></TD><TD width=79%> <b><font color=#ff0000><%=session("username")%></font></b></TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD width=21% height="28" align=right> <P class=black align=right>��¼���룺</P></TD><TD width=79%> <INPUT name=password value="<%=password%>" type=password id=Password1 
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" size=20 maxlength="20"> 
                        <FONT 
                  color=#ff0000>*</FONT> </TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD align=right width=21%></TD>
                      <TD width=79%><FONT color=#666666>4-20���ַ���0-9��a-z��A-Z���»��ߣ� 
                        �������ִ�Сд���������û�����ͬ������������һ�����ڼ����Ҳ��ױ����˲µ������롣���μ����롣</FONT></TD></TR>
                    <TR bgColor=#ffffff> 
                      <TD width=21% height="28" align=right class=black> <DIV align=right>����ȷ�ϣ�</DIV></TD><TD width=79%> <INPUT id=Password2 
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  type=password size=20 name=password2  value="<%=password%>"> 
                        <FONT 
                  color=#ff0000>*</FONT> </TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD height="28" align=right class=black>�����ʼ���</TD>
                      <TD><INPUT name="email" value="<%=email%>" id=email 
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  size=30 maxlength="50"></TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD width=21% height="28" align=right class=black> <DIV align=right>������ʾ���⣺</DIV></TD><TD width=79%> <SELECT style="width:160px;FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; HEIGHT: 21px; FONT-VARIANT: normal" size=1 name="password_prompt">
                          <OPTION value="<%=password_prompt%>" selected><%=password_prompt%></OPTION>
                          <OPTION value="" >��ѡ������</OPTION>
                          
                          <OPTION value="���ĳ��а������ǣ�">���ĳ��а������ǣ�</OPTION>
                          <OPTION value="���ĸ��а������ǣ�">���ĸ��а������ǣ�</OPTION>
                          <OPTION value="������ż�������ǣ�">������ż�������ǣ�</OPTION>
                          <OPTION value="������ż��ְҵ�ǣ�">������ż��ְҵ�ǣ�</OPTION>
                          <OPTION value="������ż�������ǣ�">������ż�������ǣ�</OPTION>
                          <OPTION value="���ĸ��׵������ǣ�">���ĸ��׵������ǣ�</OPTION>
                          <OPTION value="���ĸ��׵�ְҵ�ǣ�">���ĸ��׵�ְҵ�ǣ�</OPTION>
                          <OPTION value="����ĸ�׵������ǣ�">����ĸ�׵������ǣ�</OPTION>
                          <OPTION value="����ĸ�׵������ǣ�">����ĸ�׵������ǣ�</OPTION>
                          <OPTION value="����ϲ���ĸ������ǣ�">����ϲ���ĸ������ǣ�</OPTION>
                          <OPTION value="����ϲ���ĵ�Ӱ���ǣ�">����ϲ���ĵ�Ӱ���ǣ�</OPTION>
                        </SELECT> <FONT 
                  color=#ff0000>*</FONT> <font color="#666666">����ȡ�����루�磺�ҵĳ��а������ǣ���</font></TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD width=21% height="28" align=right class=black> <DIV align=right>������ʾ�𰸣�</DIV></TD><TD width=79%> <INPUT id=Text4 
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  size=20 name=password_Answer  value="<%=password_Answer%>"> 
                        <FONT 
                  color=#ff0000>*</FONT> <font color="#666666">���������룬������������롱��ȷ�ش�˴𰸼���ȡ�����롣</font></TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD width=21% height="28" align=right>��ʵ������</TD>
                      <TD width=79%> <INPUT id=Text2 
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  size=20 name=truename  value="<%=truename%>"> <FONT color=#ff0000>*</FONT> 
                        <font 
                  color=#666666>������������ʵ����������������������ϵ�Լ�����������</font></TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD width=21% height="28" align=right class=black> <DIV align=right>ʡ�ݣ�</DIV></TD><TD width=79%>
					  <INPUT name=province value="<%=province%>" id=Text8 size="20" style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal"></TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD width=21% height="28" align=right class=black> <DIV align=right>���У�</DIV></TD><TD width=79%>
					  <INPUT name=city value="<%=city%>" id=Text8 size="20" style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal"></TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD width=21% height="28" align=right class=black> <DIV align=right>������</DIV></TD><TD width=79%>
					  <INPUT name=area value="<%=area%>" id=Text8 size="20" style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal"></TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD width=21% height="28" align=right class=black> <DIV align=right>��ϵ��ַ��</DIV></TD><TD class=black width=79%> <INPUT id=Text11 
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  size=50 name=address value="<%=address%>"> <FONT color=#ff0000>*</FONT><font color="#0066CC">����ַ������Ʒ�ͻ����Ż��ʼĵ�ַ</font></TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD width=21% height="28" align=right class=black> <DIV align=right>�������룺</DIV></TD><TD class=black width=79%> <INPUT name=postno value="<%=postno%>" id=Text13 
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  size=20 maxlength="20"> </TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD width=21% height="28" align=right class=black> <DIV align=right>��ϵ�绰��</DIV></TD>
                      <TD width=79%> <INPUT id=Text9 
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  size=20 name=telphone1  value="<%=telphone1%>"> <FONT color=#ff0000>*</FONT> 
                        <FONT 
                  color=#666666>����д���Ĺ̶��绰�������ź͵绰����</FONT></TD>
                    </TR>

                    <TR bgColor=#ffffff> 
                      <TD width=21% height="28" align=right class=black> <DIV align=right>�ƶ��绰��</DIV></TD><TD class=black width=79%> <INPUT id='Text14' 
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  size=20 name='mobile'  value="<%=mobile%>"> </TD>
                    </TR>



                    <TR bgColor=#ffffff> 
                      <TD height="28" align=right class=black>��Ա�ȼ���</TD>
                      <TD><b>
					      <%
						  if customkind="2" then 
						 	response.write "��ͨ��Ա"
                          elseif customkind="3" then 
						 	response.write "ͭ����Ա"
                          elseif customkind="4" then 
						    response.write "������Ա"
                          elseif customkind="5" then 
						    response.write "�𼶻�Ա"
                          elseif customkind="6" then 
						    response.write "�꼶��Ա"
						  else
						  end if
						  %>
					  </b></TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD height="28" align=right class=black>�˻���</TD>
                      <TD>
					  <%
						sql6="SELECT id, username,(select sum(czmoney) from sh_chongzhi where sh_chongzhi.customid=a.id and confirmflag='��') AS sumcz, "&_
						"(select sum(total) from x_bill where x_bill.customid=a.id and paytype='�˻����') AS sumkj,  "&_
						"(IIf(IsNull(sumcz),0,sumcz)-IIf(IsNull(sumkj),0,sumkj)) AS leftye  "&_
						"FROM x_huiyuan AS a where username='"&session("username")&"' "
						
						set rs6=server.createobject("adodb.recordset")
						rs6.open sql6,conn,1,1
						if rs6.bof or rs6.eof then
							response.write "��<input type='text' name='leftye' value='0' readonly style='width:85;border:0px;BACKGROUND-COLOR: #ffffff;FONT-WEIGHT: bold; FONT-SIZE: 17px; COLOR:#f00;FONT-FAMILY: Century Gothic'>"
						else
							response.write "��<input type='text' name='leftye' value='"&rs6("leftye")&"' readonly style='width:85;border:0px;BACKGROUND-COLOR: #ffffff;FONT-WEIGHT: bold; FONT-SIZE: 17px; COLOR:#f00;FONT-FAMILY: Century Gothic'>"
						end if
						rs6.close
						set rs6=nothing
					  %>					  </TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD height="28" align=right class=black>ʣ����֣�</TD>
                      <TD>
					  <%
						sql6="SELECT id, username,(select sum(billzhf) from x_view_bill where x_view_bill.username=a.username and sendornot='�ѷ���') AS sumzhf, "&_
						"(select sum(kjzhf) from x_huanlipin where x_huanlipin.username=a.username) AS sumkjzhf,  "&_
						"(IIf(IsNull(sumzhf),0,sumzhf)-IIf(IsNull(sumkjzhf),0,sumkjzhf)) AS leftzhf  "&_
						"FROM x_huiyuan AS a where username='"&session("username")&"' "
						
						set rs6=server.createobject("adodb.recordset")
						rs6.open sql6,conn,1,1
						if rs6.bof or rs6.eof then
							response.write "<input type='text' name='leftzhf' value='0' readonly style='width:85;border:0px;BACKGROUND-COLOR: #ffffff;FONT-WEIGHT: bold; FONT-SIZE: 17px; COLOR:#f00;FONT-FAMILY: Century Gothic'>"
						else
							response.write "<input type='text' name='leftzhf' value='"&rs6("leftzhf")&"' readonly style='width:85;border:0px;BACKGROUND-COLOR: #ffffff;FONT-WEIGHT: bold; FONT-SIZE: 17px; COLOR:#f00;FONT-FAMILY: Century Gothic'>"
						end if
						rs6.close
						set rs6=nothing
					  %>					  </TD>
                    </TR>
					
                    <TR bgColor=#ffffff> 
                      <TD height="28" align=right class=black>�ϴ�½��ʱ�䣺</TD>
                      <TD>
					  <%=lasttime%>					  </TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD height="28" align=right class=black>�ϴ�½�ǵ�IP��</TD>
                      <TD>
					  <%=lastip%>					  </TD>
                    </TR>
                    <TR bgColor=#ffffff>
                      <TD height="28" align=right class=black>&nbsp;</TD>
                      <TD><input type="submit" name="Submit" value="�޸�ע����Ϣ" style="width:100px;color:#ff0000;FONT-SIZE: 10pt; FONT-WEIGHT: bold; background-color:#dddddd">&nbsp; 
					  <input id=Hidden1 type=hidden value=add name=eaction> 
                      <input type="reset" name="Submit2" value="������д" style="width:80px;FONT-SIZE: 10pt; FONT-WEIGHT: bold"> </TD>
                    </TR>
					
					
                    <TR vAlign=top bgColor=#ffffff> 
                      <TD colSpan=2>&nbsp;</TD>
                    </TR>
                  </TBODY>
                </form>
              </TABLE>
<%end if%>
		    </TD>
          </TR>
        </TBODY>
      </TABLE>

    </td>
  </tr>

<TR><TD>

</TD></TR>
</table>

<SCRIPT language=javascript>
function Echeck()
{
	if (document.formlogin.username.value=="")
	{
		alert ("�������û���½����")
		document.formlogin.username.focus();
		return false;
	}
	
	if (document.formlogin.password.value=="")
	{
		alert ("�������û���½����")
		document.formlogin.password.focus();
		return false;
	}
}
</SCRIPT>
<!-- #include file="foot.asp" -->
<%
conn.close
set conn=nothing
%>
</body>
</html>

