<!--#include file="conn.asp"-->
<!--#include file="check4.asp"-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��Ա����</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-bottom: 0px;
	margin-right: 0px;
}
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
	
	



   if(confirm("�������Ҫ�޸ĸ����ϻ�Ա��������?"))
      return true
   else
      return false;
}
</SCRIPT>
</head>

<body>
<br>
<TABLE width="740" border=0 align="center" cellPadding=0 cellSpacing=0 bgcolor="#FFFFFF">
  <tr><td>
<TABLE width=740 height=278 cellSpacing=0 cellPadding=0 align=center bgColor=#ffffff border=0>
        <TBODY>
          <TR> 
            <TD valign="top" bgColor=#ffffff> 
              <%
	sql="select * from x_huiyuan where id="&request.QueryString("id")&" "
	set rs=server.createobject("adodb.recordset")
	rs.open sql,conn,1,1
	if rs.bof or rs.eof then
	else
		username=rs("username")
		password=rs("password") 
		password_prompt=rs("password_prompt") 
		password_Answer=rs("password_Answer") 
		vipno=rs("vipno") 
		truename=rs("truename") 
		province=rs("province") 
		city=rs("city") 
		telphone1=rs("telphone1") 
		telphone2=rs("telphone2") 
		fax=rs("fax") 
		mobile=rs("mobile") 
		address=rs("address") 
		postno=rs("postno") 
		email=rs("email") 
		babysex=rs("babysex") 
		babybirthday=rs("babybirthday")
		addtime=rs("addtime")
		lasttime=rs("lasttime")
		s_stat=rs("s_stat")
		customkind=rs("customkind")
		
	end if
	rs.close
	set rs=nothing
	response.Cookies("customid")=request.QueryString("id")
	response.Cookies("username9")=username
%>
              <TABLE width="99%" border=0 align="center" cellPadding=3 cellSpacing=1 bgColor=#dddddd class=black-pix12 id=Table3>
                <FORM id=theForm name="theForm" action="huiyuandetailadmin.asp" method="post" onSubmit="return Juge()">
                  <TBODY>
                    <TR bgColor=#EEEEEE> 
                      <TD colSpan=2 height=28><strong><b><font color=#ff0000><%=username%></font></b> 
                        �������ϣ�</strong>&nbsp;&nbsp;&nbsp;&nbsp;<b>&nbsp;&nbsp; 
						
						��
                        </b></TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD align=right width=20%> <DIV class=black align=right>�û�����</DIV></TD>
                      <TD width=80%> <b><font color=#ff0000><%=username%></font></b></TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD align=right width=20%> <P class=black align=right>��¼���룺</P></TD>
                      <TD width=80%> <INPUT name=password value="<%=password%>" type=password id=Password1 
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" size=20 maxlength="20"> 
                        <FONT 
                  color=#ff0000>*</FONT> </TD>
                    </TR>

                    <TR bgColor=#ffffff> 
                      <TD class=black align=right width=20%> <DIV align=right>����ȷ�ϣ�</DIV></TD>
                      <TD width=80%> <INPUT id=Password2 
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  type=password size=20 name=password2  value="<%=password%>"> 
                        <FONT 
                  color=#ff0000>*</FONT> </TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD class=black align=right width=20%> <DIV align=right>������ʾ���⣺</DIV></TD>
                      <TD width=80%> <SELECT style="width:160px;FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; HEIGHT: 21px; FONT-VARIANT: normal" size=1 name="password_prompt">
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
                      <TD class=black align=right width=20%> <DIV align=right>������ʾ�𰸣�</DIV></TD>
                      <TD width=80%> <INPUT id=Text4 
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  size=20 name=password_Answer  value="<%=password_Answer%>"> 
                        <FONT 
                  color=#ff0000>*</FONT> <font color="#666666">���������룬������������롱,�ô˴𰸼���ȡ�����롣</font></TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD class=black align=right>�����ʼ���</TD>
                      <TD><INPUT name="email" value="<%=email%>" id=email 
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  size=40 maxlength="50"></TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD align=right width=20%>��ʵ������</TD>
                      <TD width=80%> <INPUT id=Text2 
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  size=20 name=truename  value="<%=truename%>"> <FONT color=#ff0000>*</FONT> 
                        <font 
                  color=#666666>������������ʵ����������������������ϵ�Լ�����������</font></TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD class=black align=right width=20%> <DIV align=right>ʡ�ݣ�</DIV></TD>
                      <TD width=80%> <SELECT id=Select1 name=province style="width:132px;">
                          <OPTION value="">��ѡ��</OPTION>
                          <OPTION value="<%=province%>" selected><%=province%></OPTION>
                          <OPTION value="�㶫">�㶫</OPTION>
                          <OPTION value="����">����</OPTION>
                          <OPTION value="�Ϻ�">�Ϻ�</OPTION>
                          <OPTION value="���">���</OPTION>
                          <OPTION value="����">����</OPTION>
                          <OPTION value="����">����</OPTION>
                          <OPTION value="����">����</OPTION>
                          <OPTION value="����">����</OPTION>
                          <OPTION value="����">����</OPTION>
                          <OPTION value="����">����</OPTION>
                          <OPTION value="����">����</OPTION>
                          <OPTION value="�ӱ�">�ӱ�</OPTION>
                          <OPTION value="����">����</OPTION>
                          <OPTION value="������">������</OPTION>
                          <OPTION value="����">����</OPTION>
                          <OPTION value="����">����</OPTION>
                          <OPTION value="����">����</OPTION>
                          <OPTION value="����">����</OPTION>
                          <OPTION value="����">����</OPTION>
                          <OPTION value="����">����</OPTION>
                          <OPTION value="���ɹ�">���ɹ�</OPTION>
                          <OPTION value="����">����</OPTION>
                          <OPTION value="�ຣ">�ຣ</OPTION>
                          <OPTION value="ɽ��">ɽ��</OPTION>
                          <OPTION value="ɽ��">ɽ��</OPTION>
                          <OPTION value="����">����</OPTION>
                          <OPTION value="�Ĵ�">�Ĵ�</OPTION>
                          <OPTION value="����">����</OPTION>
                          <OPTION value="�½�">�½�</OPTION>
                          <OPTION value="����">����</OPTION>
                          <OPTION value="�㽭">�㽭</OPTION>
                          <OPTION value="���">���</OPTION>
                          <OPTION value="����">����</OPTION>
                          <OPTION value="̨��">̨��</OPTION>
                          <OPTION value="����">����</OPTION>
                        </SELECT> </TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD class=black align=right width=20%> <DIV align=right>���У�</DIV></TD>
                      <TD width=80%> <INPUT name=city value="<%=city%>" id=Text8 size="20" style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal"></TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD class=black align=right width=20%> <DIV align=right>��ϵ��ַ��</DIV></TD>
                      <TD class=black width=80%> <INPUT id=Text11 
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  size=40 name=address value="<%=address%>"> <FONT color=#ff0000>*</FONT><font color="#0066CC">����ַ���ܻ�������Ʒ�ͻ����Ż��ʼĵ�ַ</font></TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD class=black align=right width=20%> <DIV align=right>�������룺</DIV></TD>
                      <TD class=black width=80%> <INPUT name=postno value="<%=postno%>" id=Text13 
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  size=20 maxlength="15"> </TD>
                    </TR>
					
                    <TR bgColor=#ffffff> 
                      <TD class=black align=right width=20%> <DIV align=right>��ϵ�绰��</DIV></TD>
                      <TD width=80%> <INPUT id=Text9 
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  size=20 name=telphone1  value="<%=telphone1%>"> <FONT color=#ff0000>*</FONT> 
                        <FONT 
                  color=#666666>����д���Ĺ̶��绰�������ź͵绰����</FONT> </TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD class=black align=right width=20%> <DIV align=right>�ƶ��绰��</DIV></TD>
                      <TD class=black width=80%> <INPUT id='Text14' 
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  size=20 name='mobile'  value="<%=mobile%>"> </TD>
                    </TR>


                    <TR bgColor=#f5f5f5> 
                      <TD class=black align=right height=30>��Ա����</TD>
                      <TD> 
                        <SELECT name="customkind" size=1 style="FONT-WEIGHT: normal; FONT-SIZE: 9pt;width:132px; LINE-HEIGHT: normal; FONT-STYLE: normal; HEIGHT: 21px; FONT-VARIANT: normal">
                          <OPTION value="2" <%if customkind="2" then response.write "selected"%> >��ͨ��Ա</OPTION>
                          <OPTION value="3" <%if customkind="3" then response.write "selected"%> >ͭ����Ա</OPTION>
                          <OPTION value="4" <%if customkind="4" then response.write "selected"%> >������Ա</OPTION>
                          <OPTION value="5" <%if customkind="5" then response.write "selected"%> >�𼶻�Ա</OPTION>
                          <OPTION value="6" <%if customkind="6" then response.write "selected"%> >�꼶��Ա</OPTION>
                        </SELECT></TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD class=black align=right>�˻���</TD><TD>
					  <%
						sql6="SELECT id, username,(select sum(czmoney) from sh_chongzhi where sh_chongzhi.customid=a.id and confirmflag='��') AS sumcz, "&_
						"(select sum(total) from x_bill where x_bill.customid=a.id and paytype='�˻����') AS sumkj,  "&_
						"(IIf(IsNull(sumcz),0,sumcz)-IIf(IsNull(sumkj),0,sumkj)) AS leftye  "&_
						"FROM x_huiyuan AS a where username='"&username&"' "
						
						set rs6=server.createobject("adodb.recordset")
						rs6.open sql6,conn,1,1
						if rs6.bof or rs6.eof then
							response.write "��<input type='text' name='leftye' value='0' readonly style='width:85;border:0px;BACKGROUND-COLOR: #ffffff;FONT-WEIGHT: bold; FONT-SIZE: 17px; COLOR:#f00;FONT-FAMILY: Century Gothic'>"
						else
							response.write "��<input type='text' name='leftye' value='"&rs6("leftye")&"' readonly style='width:85;border:0px;BACKGROUND-COLOR: #ffffff;FONT-WEIGHT: bold; FONT-SIZE: 17px; COLOR:#f00;FONT-FAMILY: Century Gothic'>"
						end if
						rs6.close
						set rs6=nothing
					  %>
					  </TD>
                    </TR>
                    <TR bgColor=#ffffff> 
                      <TD class=black align=right>ʣ����֣�</TD><TD>
					  <%
						sql6="SELECT id, username,(select sum(billzhf) from x_view_bill where x_view_bill.username=a.username and sendornot='�ѷ���') AS sumzhf, "&_
						"(select sum(kjzhf) from x_huanlipin where x_huanlipin.username=a.username) AS sumkjzhf,  "&_
						"(IIf(IsNull(sumzhf),0,sumzhf)-IIf(IsNull(sumkjzhf),0,sumkjzhf)) AS leftzhf  "&_
						"FROM x_huiyuan AS a where username='"&username&"' "
						
						set rs6=server.createobject("adodb.recordset")
						rs6.open sql6,conn,1,1
						if rs6.bof or rs6.eof then
							response.write "<input type='text' name='leftzhf' value='0' readonly style='width:85;border:0px;BACKGROUND-COLOR: #ffffff;FONT-WEIGHT: bold; FONT-SIZE: 17px; COLOR:#f00;FONT-FAMILY: Century Gothic'>"
						else
							response.write "<input type='text' name='leftzhf' value='"&rs6("leftzhf")&"' readonly style='width:85;border:0px;BACKGROUND-COLOR: #ffffff;FONT-WEIGHT: bold; FONT-SIZE: 17px; COLOR:#f00;FONT-FAMILY: Century Gothic'>"
						end if
						rs6.close
						set rs6=nothing
					  %>
					  </TD>
                    </TR>
                    <TR bgColor=#f5f5f5> 
                      <TD class=black align=right height=30>ע��ʱ�䣺</TD>
                      <TD><%=addtime%>&nbsp;&nbsp;&nbsp;&nbsp;����½ʱ�䣺<%=lasttime%></TD>
                    </TR>
                    <TR vAlign=top bgColor=#ffffff> 
                      <TD align=right colSpan=2> <TABLE id=Table4 cellSpacing=0 cellPadding=0 width="100%" 
                  border=0>
                          <TBODY>
                            <TR bgColor=#ffffff> 
                              <TD align=right width="125">&nbsp;</TD>
                              <TD align=right width=20>&nbsp;</TD>
                              <TD align=right width="580">&nbsp;</TD>
                            </TR>
                            <TR bgColor=#ffffff> 
                              <TD align=right width="125"> 
<input type=hidden value=add name=eaction> <input name="id" type=hidden value="<%=request.QueryString("id")%>">                              </TD>
                              <TD width=20>&nbsp;</TD>
                              <TD width="580"> 
                                <input type="submit" name="Submit" value="���»�Ա����" style="width:130px;height:25px; color:#ff0000;FONT-SIZE: 10pt; FONT-WEIGHT: bold">&nbsp;&nbsp;
                                <%call history()%>                              </TD>
                            </TR>
                            <TR bgColor=#ffffff> 
                              <TD align=right colSpan=3 height=37></TD>
                            </TR>
                          </TBODY>
                        </TABLE></TD>
                    </TR>
                  </TBODY>
                </form>
              </TABLE></TD>
          </TR>
        </TBODY>
      </TABLE>

    </td>
  </tr>

<TR><TD>

</TD></TR>
</table>
<br><br>
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

</body>
</html>

