<!--#include file="conn.asp"-->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>������ϸ</title>
<link href="i.css" type=text/css rel=stylesheet>

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
<script language="javascript" >
function dialog(url,name,w,h)
{
	var lookups=window.showModalDialog(url, name, "dialogHeight:" + h + "px; dialogWidth:" + w + "px; center: Yes; help: No; resizable: No; status: No;");
	if(lookups!=null)
	{
		return lookups;
	}
	else
	{
		return null;
	}
}
function getDayDay(inputname)
{
inputname.value = dialog('date.html','mydate','195','225');
}
</script>
</head>

<body bgcolor="#fcfcfc">
              <%
dim sql7,rs7,vipno,truename,province,city,telphone1,telphone2,fax,mobile,address,postno,email
	sql7="select * from x_view_bill where id="&request.QueryString("id")&""
	set rs7=conn.execute(sql7)
	if rs7.bof or rs7.eof then
	else
		id=rs7("id")
		vipno=rs7("vipno") 
		truename=rs7("truename") 
		province=rs7("province") 
		city=rs7("city") 
		telphone1=rs7("telphone1") 
		telphone2=rs7("telphone2") 
		fax=rs7("fax") 
		mobile=rs7("mobile") 
		address=rs7("address") 
		postno=rs7("postno") 
		email=rs7("email")
		billdate=rs7("billdate")
		billno=rs7("billno")
		sendtype=rs7("sendtype")
		paytype=rs7("paytype")
		paystat=rs7("paystat")
		memo=rs7("memo")
		sendornot=rs7("sendornot")
		customid=rs7("customid")
		username1=rs7("username")
		
		sendmoney=rs7("sendmoney")
		total=rs7("total")
		
		youhjmoney=rs7("youhjmoney")  		'�Ż�ȯ�ֿ۽��
		lastneedpay=rs7("lastneedpay")		'������踶���
		
		senddate=rs7("senddate")
		sendcom=rs7("sendcom")
		sendno=rs7("sendno")
		sendmemo=rs7("sendmemo")
		
	end if
	rs7.close
	set rs7=nothing

%>
<TABLE width="622" border=0 align="center" cellPadding=0 cellSpacing=0 bgcolor="#FFFFFF">
  <tr>
    <td> 
<table width="622" height="352" border="0" cellpadding="0" cellspacing="0">
        <tr> 
          
          <td width="557" height="184" valign="top"><table width="622" border=0 align="center" cellPadding=3 cellSpacing=1 bgColor=#cccccc class=black-pix12 id=Table3>

              <tr> 
                <td width="110" height="26"><strong><font color="#CC0000">�˿����ϣ�</font></strong></td>
                <td colspan="3">&nbsp;</td>
              </tr>
              <TR bgColor=#ffffff> 
                <TD class=black align=right width=110> <DIV align=right>�û�����</DIV></TD>
                <TD width=221> <input type="hidden" name="customid" value="<%=customid%>"> 
                  <b><%=username1%></b> </TD>
                <TD width=90> <div align="right">�ջ���������</div></TD>
                <TD width=172> <input id=Text2 style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" size=15 name=truename value="<%=truename%>"></TD>
              </TR>
              <TR bgColor=#ffffff> 
                <TD class=black align=right width=110> <DIV align=right>ʡ�ݣ�</DIV></TD>
                <TD width=221> <SELECT id=Select1 name=province>
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
                <TD width=90> <div align="right">���У�</div></TD>
                <TD width=172> <input name=city value="<%=city%>" id=city size="13" ></TD>
              </TR>
              <TR bgColor=#ffffff> 
                <TD class=black align=right width=110> <DIV align=right>��ϵ�绰1��</DIV></TD>
                <TD width=221> <INPUT id=Text9 style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" size=15 name="telphone1" value="<%=telphone1%>"> 
                </TD>
                <TD width=90> <div align="right">��ϵ�绰2��</div></TD>
                <TD width=172> <input id=telphone2 style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" size=15 name="telphone2" value="<%=telphone2%>"></TD>
              </TR>
              <TR bgColor=#ffffff> 
                <TD class=black align=right width=110> <DIV align=right>�ƶ��绰��</DIV></TD>
                <TD width=221> <input id='mobile' style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  size=15 name='mobile' value="<%=mobile%>"> </TD>
                <TD width=90> <div align="right">���棺</div></TD>
                <TD width=172> <input name=fax value="<%=fax%>" id=fax style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  size=15 maxlength="15"></TD>
              </TR>
              <TR bgColor=#ffffff> 
                <TD class=black align=right width=110> <DIV align=right>�ͻ���ַ��</DIV></TD>
                <TD colspan="3" class=black> <INPUT id=Text11 style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  size=40 name=address value="<%=address%>">
                  �ʱࣺ 
                  <input name=postno value="<%=postno%>" id=postno style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  size=15 maxlength="15"> </TD>
              </TR>
              <TR bgColor=#ffffff> 
                <TD class=black align=right width=110> <DIV align=right>�����ʼ���</DIV></TD>
                <TD class=black> <input name="email" value="<%=email%>" id=email2 
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  size=30 maxlength="50"> </TD>
                <TD class=black><div align="right"></div></TD>
                <TD class=black>&nbsp;</TD>
              </TR>
              <tr> 
                <td width="108" height="23"><font color="#CC0000"><strong>������Ϣ��</strong></font></td>
                <td colspan="3">&nbsp;</td>
              </tr>
              <TR bgColor=#ffffff> 
                <TD height="23" align=middle> <div align="right">������ţ�</div></TD>
                <TD><b><%=billno%></b></TD>
                <TD><div align="right">�µ�ʱ�䣺</div></TD>
                <TD><%=billdate%></TD>
              </TR>
              <TR bgColor=#ffffff> 
                <TD align=middle width=108> <div align="right">�ͻ���ʽ��</div></TD>
                <TD width=194><%=sendtype%></TD>
                <TD align="right">���ʽ��</TD>
                <TD width=207><%=paytype%></TD>
              </TR>
              <TR bgColor=#ffffff>
                <TD align=middle> <div align="right">�ͻ����ã�</div></TD>
                <TD>��<b><%=formatnumber(sendmoney,2)%></b></TD>
                <TD align="right">&nbsp;</TD>
                <TD>&nbsp;</TD>
              </TR>
              <!--
                <TR bgColor=#ffffff> 
                  <TD align=middle width=115> 
<div align="right">�Ƿ���Ҫ��Ʊ��</div></TD>
                  <TD width=401> 
                    <SELECT name=fapiao>
                      <OPTION value="��" selected>��</OPTION>
                      <OPTION value="��">��</OPTION> ***
                    </SELECT></TD>
                </TR>
-->
              <TR bgColor=#ffffff> 
                <TD align=middle width=108> <div align="right">�ر�˵����</div></TD>
                <TD colspan="3"> <TEXTAREA name=memo rows=4 cols=45><%=memo%></TEXTAREA></TD>
              </TR>
            </table>
              <table border="0" cellpadding="0" cellspacing="0">
                <tr> 
                  <td height="3" width=100></td>
                </tr>
              </table>
              <table width="622" border=0 align="center" cellPadding=4 cellSpacing=1 bgColor=#cccccc class=black-pix12 id=Table3>
                <tr > 
                  <td width="35" height="23" > <div align="center"><strong>���</strong></div></td>
                  <td width="66"> <div align="center"><strong>��Ʒ��</strong></div></td>
                  <td width="164"> <div align="center"><strong>��Ʒ��</strong></div></td>
				  <td width="66"> <div align="center"><strong>Ʒ��</strong></div></td>
                  <td width="51"> <div align="center"><strong>����</strong></div></td>
                  <td width="50"> <div align="center"><strong>����</strong></div></td>
                  <td width="85"> <div align="center"><strong>���</strong></div></td>
                </tr>
                <%
		dim sql4,rs4,id,num,pkid
		dim sql5,rs5,model,productname,price2,price,money,a,q,allmoney,allnum
		allmoney=0
		allnum=0
		
		sql4="select * from x_view_bill_product where billid="&request.QueryString("id")&""
		set rs4=conn.execute(sql4)
		if rs4.bof or rs4.eof then
		else
		i=1
			do while not rs4.eof
			id=rs4("id")
			billid=rs4("billid")
			productpkid=rs4("productpkid")
			model=rs4("model")
			productname=rs4("productname")
			pipai=rs4("pipai")
			num=rs4("num")
			price=rs4("price")
			money=rs4("money")
			colorsize=rs4("colorsize")
			allnum = allnum + num
			allmoney = allmoney + money
					response.write "<tr bgcolor='#F1F1F1'>" 
					response.write "<td height='23' align='center'>"&i&"</td>"
					response.write "<td><a href='../show.asp?pkid="&productpkid&"' target='_blank'>"&model&"</a></td>"
					response.write "<td>"&productname&" "&colorsize&"</td>"
					response.write "<td>"&pipai&"</td>"
					response.write "<td align=right>"&formatnumber(price,2)&"</td>"
					response.write "<td align=right>"&formatnumber(num,2)&"</td>"
					response.write "<td align=right>��"&formatnumber(money,2)&"</td>"
					response.write "</tr>"
			  m=m+1
			  rs4.movenext
			  i=i+1
			  loop
		end if
		rs4.close
		set rs4=nothing
			  %>
                <INPUT type=hidden value="<%=i-1%>" name=maxi>
                <tr> 
                  <td height=25 colspan=5 align=right><strong>�ϼƣ�</strong></td>
                  <td align=right><strong><%=formatnumber(allnum,2)%></strong></td>
                  <td align=right><strong>��<%=formatnumber(allmoney,2)%></strong></td>
                </tr>
              </table>

		    <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <tr> 
                <td colspan="2" height="28" width="65%"><b>
				�ϼƽ���<%=formatnumber(total,2)%>&nbsp;&nbsp;
				�Ż�ȯ�ֿ۽���<%=formatnumber(youhjmoney,2)%>&nbsp;&nbsp;
				��֧������<%=formatnumber(lastneedpay,2)%>
				</b></td>
              </tr>
            </table>

            <table width="622" border=0 align="center" cellPadding=4 cellSpacing=1 bgColor=#cccccc class=black-pix12 id=Table3>
              <FORM id=theForm name="theForm" action="dingdan_sendnot.asp" method="post" onSubmit="return Juge()">
                <tr bgcolor='#BFDFFF'> 
                  <td height="40"> ����״̬��<select name="paystat" size="1" style="width:200px;">
                      <OPTION value="<%=paystat%>" selected><%=paystat%></OPTION>
                      <option value="�Ѹ���">�Ѹ���</option>
                    </select> &nbsp; 
					����״̬��<select name="sendornot" size="1" style="width:130px;">
                      <OPTION value="<%=sendornot%>" selected><%=sendornot%></OPTION>
                      <option value="δ����">δ����</option>
                      <option value="��Ա����ȡ��">��Ա����ȡ��</option>
                      <option value="��Ч������ȡ��">��Ч������ȡ��</option>
                      <option value="���ڱ���">���ڱ���</option>
                      <option value="�ѷ���">�ѷ���</option>
                    </select> &nbsp;
                    <input type="submit" name="Submit" value="�޸�״̬" class="input2"> 
					<input type=hidden name='id' value="<%=request.QueryString("id")%>"> 
					<input type=hidden name='username' value="<%=username1%>"> 
					<input type=hidden name='allmoney' value="<%=allmoney%>">                  </td>
                </tr>
                <tr bgcolor='#EeEAEA'> 
                  <td height="27">
			    �������ڣ�<input name="senddate" type="text" value="<%=senddate%>"> <input type="button"  name="Submit" value="��" onClick="getDayDay(document.all.senddate)"  onBlur="if(document.all.senddate.value=='null')document.all.senddate.value='<%=senddate%>';">                </tr>
                <tr bgcolor='#EeEAEA'> 
                  <td height="30"><br>
					<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="submit" name="Submitwl" value="����" class="input2">				  </td>
                </tr>
              </form>
            </table>
          </td>
        </tr>
      </table>


    </td>
  </tr>

<TR><TD height=50>

</TD></TR>
</table>
<br>
<script language="JavaScript">
<!--
function Juge()
{

	if (theForm.sendornot.value == "�ѷ���")
	{
	  
		  if (theForm.senddate.value == "")
		  {
			alert("������д��������!");
			document.theForm.senddate.focus();
			return false;
		  }
		
		  if (theForm.sendcom.value == "")
		  {
			alert("������д������˾!");
			document.theForm.sendcom.focus();
			return false;
		  }
		  
		  if (theForm.sendno.value == "")
		  {
			alert("������д������������!");
			document.theForm.sendno.focus();
			return false;
		  }

		
		   if(confirm("������Ҫ������?"))
			  return true
		   else
			  return false;
	}
}
//-->
</script>
</body>
</html>

