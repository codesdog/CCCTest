<!--#include file="conn.asp"-->
<!--#include file="check4.asp"-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>��Ա�б�</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style>
<!--
td{font-size:9pt;line-height:140%;}
body {
	margin-top: 5px;
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

<table width="99%" border="0" align="center" cellpadding="0" cellspacing="0" id="tabcss">
  <tr bgcolor="#BFDFFF">
    <form name="form1" method="post" action="huiyuan.asp">
      <td height=35 colspan=11> <font color=#0000ff><strong></strong></font>��Ա���ң� 
        <select name="selectkind">
          <option value="username">�û���</option> 
          <option value="id">��Ա���</option>  
          <option value="truename">��ʵ����</option>
          <option value="province">ʡ��</option>
          <option value="city">����</option>
          <option value="telphone1">��ϵ�绰1</option>
          <option value="telphone2">��ϵ�绰2</option>
          <option value="fax">����</option>
          <option value="mobile">�ƶ��绰</option>
          <option value="address">��ϵ��ַ</option>
          <option value="postno">��������</option>
          <option value="email">�����ʼ�</option>
          <option value="addtime">ע��ʱ��</option>
        </select> <input name="keyword" type="text" size="15" maxlength="15"> 
        <input type="submit" name="Submit" value="�� ��">&nbsp;&nbsp;&nbsp;&nbsp;<a href=huiyuan.asp>ȫ����Ա</a></td>
    </form>
  </tr>
  <tr bgcolor="#E1E1E1"> 
    <td> 
<div align="center">���</div></td>
    <td height="24"> 
<div align="center">�û���</div></td>
    <td> 
<div align="center">��ʵ����</div></td>
    <td> 
<div align="center">��ϵ�绰</div></td>

    <td > 
<div align="center">�ƶ��绰</div></td>
    <td > 
<div align="center">��Ա�ȼ�</div></td>	 
    <td > 
<div align="center">�˻����</div></td>
    <td > 
<div align="center">��Ա����</div></td>
    <td > 
      <div align="center">ע��ʱ��</div></td>
    <td > 
      <div align="center">����½ʱ��</div></td> 
    <td> </td>
  </tr>
  <%
i=0
nowpage=request("page")
selectkind=trim(request("selectkind"))
keyword=trim(request("keyword"))

sql0="select *,(select sum(czmoney) from sh_chongzhi where sh_chongzhi.customid=a.id and confirmflag='��') AS sumcz, (select sum(total) from x_bill where x_bill.customid=a.id and paytype='�˻����') AS sumkj, (IIf(IsNull(sumcz),0,sumcz)-IIf(IsNull(sumkj),0,sumkj)) AS leftye, "&_
	"(select sum(billzhf) from x_view_bill where x_view_bill.username=a.username and sendornot='�ѷ���') AS sumzhf, (select sum(kjzhf) from x_huanlipin where x_huanlipin.username=a.username) AS sumkjzhf, (IIf(IsNull(sumzhf),0,sumzhf)-IIf(IsNull(sumkjzhf),0,sumkjzhf)) AS leftzhf  from x_huiyuan as a "     

if keyword="" then
	
	sql=sql0 & " where id>2 order by id desc"
else
	if selectkind="id" then
		sql=sql0 & " where id>2 and id = "&keyword&" order by id desc"
	else
		sql=sql0 & " where id>2 and "&selectkind&" like '%"&keyword&"%' order by id desc"
	end if
end if


set rs=server.CreateObject("adodb.recordset")
rs.open sql,conn,1,1
if rs.bof or rs.eof then
	response.write "<div align=center><br>û�л�Ա��¼!</div>"
else
rs.pagesize=20
rs.absolutepage=1
if request("page")<>"" then rs.absolutepage=request("page")
rowcount=rs.pagesize
	do while not rs.eof and rowcount>0
		id=rs("id")
		username=rs("username")
		vipno=addspace(rs("vipno"))
		truename=rs("truename") 
		telphone1=rs("telphone1") 
		telphone2=addspace(rs("telphone2"))
		mobile=addspace(rs("mobile")) 
		address=rs("address") 
		addtime=rs("addtime") 
		customkind=rs("customkind")
	  if customkind="2" then 
		customkind="��ͨ��Ա"
	  elseif customkind="3" then 
		customkind="ͭ����Ա"
	  elseif customkind="4" then 
		customkind="������Ա"
	  elseif customkind="5" then 
		customkind="�𼶻�Ա"
	  elseif customkind="6" then 
		customkind="�꼶��Ա"
	  else
	    customkind="&nbsp;"
	  end if
	  lasttime=rs("lasttime")
	  leftye=rs("leftye")
	  leftzhf=rs("leftzhf")
	  
%>
  <tr onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';"> 
    <td align="center"><%=id%></td>
    <td height="21" align="center"><a href="huiyuandetail.asp?id=<%=id%>"><%=username%></a></td>
    
    <td><%=truename%></td>
    <td><%=telphone1%></td>
    
    <td><%=mobile%></td>
	<td align=center><%=customkind%></td>
    <td align=right><%=leftye%>&nbsp;</td>
	<td align=right><%=leftzhf%>&nbsp;</td>
    <td style="WIDTH: 125; WORD-WRAP: break-word;line-height:140%;"><%=addtime%></td>
	<td style="WIDTH: 125; WORD-WRAP: break-word;line-height:140%;"><%=lasttime%></td>
	
    <td align="center" width="4%"><a href="huiyuandel.asp?id=<%=id%>" onClick="return confirm('�Ƿ�ɾ����Ա��<%=username%>��?')">ɾ��</a></td>
  </tr>
  <%
	rs.movenext
	rowcount=rowcount-1
	i=i+1
	loop
end if
%>
</table>
<%
response.write "<table border=0 width='95%' align=center><tr><td align=right height=30>"
		backnexturl="keyword="&keyword&"&selectkind="&selectkind&"&none=&"
		if nowpage="" then nowpage="1"
		lastpage=rs.pagecount
		nowpath=request.ServerVariables("SCRIPT_NAME")
		response.write "��"&rs.recordcount&"�� ÿҳ20�� ���ڵ�"&nowpage&"/"&rs.pagecount&"ҳ&nbsp; "
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
		response.write "</td><form name='form1' method='post' action="&nowpath&"?"&backnexturl&"><td>ת����<input type=text name='page'size=5>ҳ <input type='submit' name='Submit' value='ȷ��'>"
		response.write "&nbsp;&nbsp;<a href='javascript:window.scroll(0,0)'>TOP��</a>"
response.write "</td></form></tr></table>"

response.cookies("hypage")=nowpath&"?"&backnexturl&"page="&nowpage
%><br><br>

</body>
</html>
<%
rs.close
set rs=nothing
call connclose
%>


