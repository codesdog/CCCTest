<!--#include file="conn.asp"-->
<!--#include file="check4.asp"-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>�����б�</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style>
<!--
td{font-size:9pt}
body {
	margin-top: 5px;
	margin-left: 4px;
	margin-right: 4px;
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
	line-height: 21px;
	padding-left: 3px;
	padding-right: 2px;
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
td{LINE-HEIGHT: 130%}
-->
</style>
<script>
function ChangDate(formyear,formmonth,formday,isBlank){
	var i;
	var j;
	var year,month,day;
	year=formyear.value;
	month=formmonth.value;
	if (month=="2"){
		if (((year%400)==0) || (((year%100)!=0) && ((year%4)==0))){
			j=29;
		}else{
			j=28;
		}
	}else{
		if (month=="4" || month=="6" || month=="9" || month=="11"){
			j=30;
		}else{
			j=31;
		}
	}
	var k=formday.length;
	for (i=0;i<k;i++){
		formday.remove(formday.i);
	}
	if (isBlank){
		var oOption = document.createElement("OPTION");
		oOption.text="��ѡ��";
		oOption.value="";
		formday.add(oOption);
	}
	for (i=0;i<j;i++){
		var oOption = document.createElement("OPTION");
		oOption.text=i+1;
		oOption.value=i+1;
		formday.add(oOption);
	}
}
</script>
<%
sub CreateSelect(pSelName,pStart,pEnd,pSelected,pOption)
		dim intStart,intEnd,intSelected,i
		intStart=int(pStart)
		intEnd=int(pEnd)
		response.write "<select name=" & pSelName & " style='width=55;BACKGROUND-COLOR: #ddeeff;'>"
		if pOption="" then
			if not isnumeric(pSelected) then 
				response.write "<option value='' selected>"+ pSelected +"</option> "
				intSelected=""
			else
				intSelected=cint(pSelected)
			end if
		end if
		for i=intStart to intEnd
			if intSelected="" and isnumeric(pOption) then
				if i=cint(pOption) then
					response.write "<option value='' selected>"+ pSelected +"</option> "
				end if
			end if
			if i=intSelected and intSelected<>"" then
				response.write "<option value=" & trim(i) & " selected>" & trim(i) & "</option> "
			else
				response.write "<option value=" & trim(i) & ">" & trim(i) & "</option> "
			end if
		next 
		response.write "</select>"
end sub
%>


<script language="JavaScript" type="text/JavaScript">
<!--
//v2.0
function MM_openBrWindow(theURL) { 
	var k
	k=window.open(theURL,"bill","top=55,left=155,Toolbar=yes,scrollbars=yes,width=760,height=600,resizable=yes,menubar=yes,resizable=yes");
	k.focus();
}
//-->
</script>

</head>

<body bgcolor="#fcfcfc">

<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" id="tabcss">
    <tr bgcolor="#BFDFFF"> 
    <form name="form1" method="post" action="dingdan.asp">
      <td height=35 colspan=13> <font color=#0000ff><strong></strong></font>
<%
response.write "�µ�����: ��"
CreateSelect "SelYear onChange='ChangDate(SendSample.SelYear,SendSample.SelMonth,SendSample.SelDay,false);'",year(now())-30,year(now())+1,year(now()),""
response.write "��"
CreateSelect "SelMonth onChange='ChangDate(SendSample.SelYear,SendSample.SelMonth,SendSample.SelDay,false);'",1,12,month(now()),""
response.write "��"
if month(now())=2 then
	if cint(year(now())) mod 400 =0 or (cint(year(now())) mod 100 <>0 and cint(year(now())) mod 4 =0) then
		strEndDay=29
	else
		strEndDay=28
	end if
else
	if month(now())=4 or month(now())=6 or month(now())=9 or month(now())=11 then
		strEndDay=30
	else
		strEndDay=31
	end if
end if 
CreateSelect "SelDay",1,strEndDay,day(now()),""
response.write "��"
response.write "&nbsp;&nbsp;��"

CreateSelect "SelYear2 onChange='ChangDate(SendSample.SelYear2,SendSample.SelMonth2,SendSample.SelDay2,false);'",year(now())-30,year(now())+1,year(now()),""
response.write "��"
CreateSelect "SelMonth2 onChange='ChangDate(SendSample.SelYear2,SendSample.SelMonth2,SendSample.SelDay2,false);'",1,12,month(now()),""
response.write "��"
if month(now())=2 then
	if cint(year(now())) mod 400 =0 or (cint(year(now())) mod 100 <>0 and cint(year(now())) mod 4 =0) then
		strEndDay=29
	else
		strEndDay=28
	end if
else
	if month(now())=4 or month(now())=6 or month(now())=9 or month(now())=11 then
		strEndDay=30
	else
		strEndDay=31
	end if
end if 
CreateSelect "SelDay2",1,strEndDay,day(now()),""
response.write "��"
%>
        <select name="selectkind" style="width:100px;">
		  <option value="billno">�������</option>
		  <option value="billdate">��������</option>
          <option value="username">�û���</option> 
          <option value="vipno">��Ա���</option>  
          <option value="truename">��ʵ����</option>
          <option value="telphone1">��ϵ�绰1</option>
          <option value="telphone2">��ϵ�绰2</option>
          <option value="fax">����</option>
          <option value="mobile">�ƶ��绰</option>
          <option value="address">��ϵ��ַ</option>
          <option value="email">�����ʼ�</option>
		  <option value="sendtype">�ͻ���ʽ</option>
		  <option value="paytype">���ʽ</option>
		  <option value="paystat">����״̬</option>
		  <option value="sendornot">����״̬</option>
		  <option value="memo">�ر�˵��</option>
        </select> <input name="keyword" type="text" size="15" maxlength="15"> 
        <input type="submit" name="Submit" value="�� ��">&nbsp;&nbsp;&nbsp;&nbsp;<br> 
		<div style="padding-top:5px;padding-bottom:1px;"></div>

	  </td>
    </form>
  </tr>

<%
if trim(request("comefrom"))="1" then
	response.write (request.Cookies("username9")&"�Ķ���:")
end if
%>

              <tr bgcolor="#5C9153"> 
                <td height="23" > 
<div align="center"><font color="#FFFFFF"><strong>���</strong></font></div></td>
                <td> 
                  <div align="center"><font color="#FFFFFF"><strong>������</strong></font></div></td>
                <td> 
                  <div align="center"><font color="#FFFFFF"><strong>�µ�ʱ��</strong></font></div></td>
                <td> 
                  <div align="center"><font color="#FFFFFF"><strong>�ܽ��</strong></font></div></td>
				<!--
                <td> 
                  <div align="center"><font color="#FFFFFF"><strong>�ֿ۽��</strong></font></div></td>
				  -->
                <td> 
                  <div align="center"><font color="#FFFFFF"><strong>�踶���</strong></font></div></td>	
				  			  
                <td> 
                  <div align="center"><font color="#FFFFFF"><strong>�û���</strong></font></div></td>
                <td> 
                  <div align="center"><font color="#FFFFFF"><strong>�û���</strong></font></div></td>

                <td> 
                  <div align="center"><font color="#FFFFFF"><strong>�ͻ���ʽ</strong></font></div></td>
                <td> 
                  <div align="center"><font color="#FFFFFF"><strong>���ʽ</strong></font></div></td>
                <td> 
                  <div align="center"><font color="#FFFFFF"><strong>����״̬</strong></font></div></td>
                <td> 
                  <div align="center"><font color="#FFFFFF"><strong>����״̬</strong></font></div></td>
                <td>
                  <div align="center"><font color="#FFFFFF"><strong>������ӡ</strong></font></div></td>
              </tr>
              <%
		dim sql4,rs4,id,num,pkid
		dim sql5,rs5,model,productname,price2,price,money
		
		kind=request("kind")
		nowpage=request("page")
		selectkind=trim(request("selectkind"))
		keyword=trim(request("keyword"))
		comefrom=trim(request("comefrom"))

		'----------begin----------
		fromyear=request("selyear")
		frommonth=request("selmonth")
		fromday=request("selday")
		toyear=request("selyear2")
		tomonth=request("selmonth2")
		today=request("selday2")
		
		if request("fromdate")="" and fromyear<>"" then
			fromdate1=fromyear&"-"&frommonth&"-"&fromday
			todate1=toyear&"-"&tomonth&"-"&today
			fromdate=cdate(fromdate1)
			todate=cdate(todate1)+1
		elseif request("fromdate")<>"" then
			fromdate=request("fromdate")
			todate=request("todate")		
		else
		end if

		'----------end----------
		sql_condition=" where id>0 "
		
		if fromdate<>"" then
			sql_condition=sql_condition & " and billdate between #"&fromdate&"# and #"&todate&"# "
		end if
		if comefrom="1" then
			sql_condition=sql_condition & " and customid="&request.Cookies("customid")
		end if
		if keyword<>"" then
			sql_condition=sql_condition & " and "&selectkind&" like '%"&keyword&"%'"
		end if
		
		sql4="select * from x_view_bill "&sql_condition&" order by id desc"
		
		set rs4=server.createobject("adodb.recordset")
		rs4.open sql4,conn,1,1
		if rs4.bof or rs4.eof then
			response.write "<tr><td colspan=19>û�з�������������¼��</td></tr></table>"
		else
		i=1
		rs4.pagesize=15
		rs4.absolutepage=1
		if request("page")<>"" then rs4.absolutepage=request("page")
		rowcount=rs4.pagesize
		
			do while not rs4.eof and rowcount>0
				id=rs4("id")
				billno=rs4("billno")
				billdate=rs4("billdate")
				vipno=rs4("vipno")
				username=rs4("username")
				truename=rs4("truename")
				telphone1=rs4("telphone1")
				telphone2=rs4("telphone2")
				mobile=rs4("mobile")
				sendtype=rs4("sendtype")
				sendornot=rs4("sendornot")
				backop=rs4("backop")
				
				allmoney=rs4("total")
				'youhjmoney=rs4("youhjmoney")
				lastneedpay=rs4("lastneedpay")
				paytype=rs4("paytype")
				paystat=rs4("paystat")
				if paytype="֧����" or paytype="��������" or paytype="�Ƹ�ͨ" then paytype="<font color='#ff0000'>"&paytype&"</font>"
				
				billzhf=rs4("billzhf")
				if sendornot="�ѷ���" then
				else
				billzhf="&nbsp;"
				end if

				if sendornot="δ����" then
					bgcolor="#ffffff"
				elseif sendornot="��Ա����ȡ��" then
					bgcolor="#eeeeee"
				elseif sendornot="��Ч������ȡ��" then
					bgcolor="#FFE8E1"
				elseif sendornot="���ڱ���" then
					bgcolor="#66CCFF"
				elseif sendornot="�ѷ���" then
					bgcolor="#B1F7AA"
				else
					bgcolor="#ffffff"
				end if

				response.write "<tr bgcolor='"&bgcolor&"' onMouseOver=""this.style.background='#FFeF0F';"" onMouseOut=""this.style.background='"&bgcolor&"';"">"
				response.write "<td height='26' align='center'>"&i&"</td>"
				'response.write "<td><a href='dingdan_detail.asp?id="&id&"&billno="&billno&"' target='_blank'><font color=#0033FF>"&billno&"</font></a></td>"
				response.write "<td>"&billno&"</td>"
				response.write "<td>"&billdate&"</td>"
				response.write "<td align=right>"&formatnumber(allmoney,2)&"</td>"
				'response.write "<td align=right>"&youhjmoney&"</td>"
				response.write "<td align=right>"&formatnumber(lastneedpay,2)&"</td>"
				response.write "<td align=right>"&billzhf&"</td>"
				if backop<>"" and username="�ǻ�Ա" then
				response.write "<td width='40'><font color='#ff0000'><b style='width:70px;LINE-HEIGHT: 130%'>��̨��Ա<br>"&backop&"</b></font></td>"
				else
				response.write "<td>"&username&"</td>"
				end if
				
				'response.write "<td align=center>"&truename&"</td>"
				'response.write "<td>"&telphone1&" "&telphone2&"</td>"
				'response.write "<td>"&mobile&"</td>"
				response.write "<td align=center style='width:70px;LINE-HEIGHT: 130%'>"&sendtype&"</td>"
				response.write "<td align=center style='width:70px;LINE-HEIGHT: 130%'>"&paytype&"</td>"
				response.write "<td align=center style='width:100px;LINE-HEIGHT: 130%'>"&paystat&"</td>"
				'if sendornot="�ѷ���" then
				'response.write "<td align=center><a style='CURSOR:hand;' onclick=""window.open('dingdan_detail.asp?id="&id&"&billno="&billno&"','','top=55,left=130,Toolbar=yes,scrollbars=yes,width=680,height=500,resizable=yes,menubar=yes,resizable=yes')""><font color=#0033FF>�ѷ���</font></a></td>"
				'else
				response.write "<td align=center style='width:60px;LINE-HEIGHT: 130%'>"&sendornot&"</td>"
				'end if
				'if sendornot="�ѷ���" or sendornot="���ڱ���" or instr(paystat,"����ɹ�")>0 or paystat="�Ѹ���" then
				'response.write "<td>&nbsp;</td>"
				'else
				response.write "<td align=center>"
				
				response.write "<a HREF='javascript:void(0)' onclick=""MM_openBrWindow('dingdan_detail.asp?id="&id&"&billno="&billno&"')""><font color=#0033FF>����</font></a> "

				response.write "&nbsp; <a href='dingdan_del.asp?id="&id&"' onClick=""return confirm('�Ƿ�ɾ������ ��"&billno&"�� ��')"" >ɾ��</a>"
				response.write "</td>"
				'end if
				response.write "</tr>"&vbcrlf
				rs4.movenext
				i=i+1
				rowcount=rowcount-1
			loop
		end if
			  %>
            </table>
<%
response.write "<table border=0 width='95%' align=center><tr><td align=right height=30>"
		backnexturl="fromdate="&fromdate&"&todate="&todate&"&keyword="&keyword&"&selectkind="&selectkind&"&comefrom="&comefrom&"&none=&"
		if nowpage="" then nowpage="1"
		lastpage=rs4.pagecount
		nowpath=request.ServerVariables("SCRIPT_NAME")
		response.write "��"&rs4.recordcount&"�� ÿҳ15�� ���ڵ�"&nowpage&"/"&rs4.pagecount&"ҳ&nbsp; "
		response.write "&nbsp;<input type='button' name='Button1' value='��ҳ' onclick=window.location.href='"&nowpath&"?"&backnexturl&"page=1'>&nbsp;"
		if nowpage>1 then
			response.write"<input type='button' name='Button2' value=��ҳ onclick=window.location.href='"&nowpath&"?"&backnexturl&"page="&nowpage-1&"'>&nbsp;"
		else
			response.write"<input type='button' name='Button3' value=��ҳ>&nbsp;"
		end if
		if clng(nowpage) < clng(lastpage) then
			response.write"<input type='button' name='Button4' value=��ҳ onclick=window.location.href='"&nowpath&"?"&backnexturl&"page="&nowpage+1&"'>&nbsp;"
		else
			response.write"<input type='button' name='Button5' value=��ҳ>&nbsp;"
		end if
		response.write"<input type='button' name='Button6' value=βҳ onclick=window.location.href='"&nowpath&"?"&backnexturl&"page="&clng(lastpage)&"'>&nbsp;"
		response.write "</td><form name='form1' method='post' action="&nowpath&"?"&backnexturl&"><td>ת����<input type=text name='page'size=4>ҳ <input type='submit' name='Submit' value='ȷ��'>"
		response.write "&nbsp;&nbsp;<a href='javascript:window.scroll(0,0)'>TOP��</a>"
response.write "</td></form></tr></table>"

response.cookies("ddpage")=nowpath&"?"&backnexturl&"page="&nowpage
%><br><br>

</body>
</html>
<%
rs4.close
set rs4=nothing
call connclose
%>

