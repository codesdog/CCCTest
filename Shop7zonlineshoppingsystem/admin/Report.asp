<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="i.css" type=text/css rel=stylesheet>
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
</head>

<body bgcolor="#fcfcfc">
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

response.write "<form name='SendSample' method='post' action='reportadmin.asp?menuid="&request("MenuID")&"'>"
response.write "<table align=center><tr><td align=center><br><br><h3>������-��-�걨��</h3></td></tr></table>"
response.write "<table align=center><tr><td height=25>�µ����ڣ� ��"
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

response.write "</td></tr>"

response.write "<tr><td height=28>��Ʒ�ţ�<input type=text size=15 name='model'></td></tr>"
response.write "<tr><td height=28>��Ʒ����<input type=text size=15 name='productname'></td></tr>"
response.write "<tr><td height=28>��Ա�û�����<input type=text size=15 name='username'></td></tr>"
response.write "<tr><td height=33>����״̬��"
response.write "<select name='sendornot' size='1' style='width:127px;'>"
	response.write "<option value=''>-ȫ��-</option>"
	response.write "<option value='δ����'>δ����</option>"
	response.write "<option value='��Ա����ȡ��'>��Ա����ȡ��</option>"
	response.write "<option value='��Ч������ȡ��'>��Ч������ȡ��</option>"
	response.write "<option value='���ڱ���'>���ڱ���</option>"
	response.write "<option value='�ѷ���'>�ѷ���</option>"
response.write "</select>"
response.write "</td></tr>"
response.write "<tr><td height=38 align=center><input type='submit' name='submit' value='  ��  ѯ  '></td></tr>"
response.write "</table>"
response.write "</form>"
%>
</body>
</html>

