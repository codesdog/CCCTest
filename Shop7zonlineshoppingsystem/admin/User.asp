<!--#include file="conn.asp"-->
<!--#include file="check8.asp"-->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html><head>
<title>�û���</title>
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
<%
dim sql4,rs4,id,num,pkid
action=request("action")
if action="del" then

id=request("id")
 	StrSQL="delete from admin where id="&id
	conn.Execute StrSQL    

	Response.Redirect"user.asp" 

end if


Submit2=trim(request.form("Submit2"))

if Submit2="����" then

	for j=1 to request.form("maxi")
		id = request.form("id"&j)
		s_user = request.form("s_user"&j)
		s_pwd = request.form("s_pwd"&j)
		self = request.form("self"&j)
		memo = request.form("memo"&j)
		
		if isnumeric(id) and s_user<>"" and s_pwd<>"" then
			sql2="update [Admin] set s_user='"&s_user&"',s_pwd='"&md5(s_pwd)&"',self1='"&self&"',memo='"&memo&"' where id="&id
			conn.execute(sql2)
		elseif id="" and s_user<>"" then
			sql2="insert into [Admin] (s_user,s_pwd,self1,memo) values('"&s_user&"','"&md5(s_pwd)&"',"&self&",'"&memo&"')"
			conn.execute(sql2)
		elseif isnumeric(id) and s_user="" then
				sql2="update [Admin] set s_user='"&s_user&"',self1='"&self&"',memo='"&memo&"' where id="&id
			conn.execute(sql2)
		else
		end if
	next

	response.write "<script language=JavaScript>" & "alert('����ɹ�!');"& "window.location.href='user.asp';" & "</script>"
end if

%>
</head>

<body bgcolor="#fcfcfc">          
<table width="97%" border="0" align="center" cellpadding="0" cellspacing="0" id="tabcss">
  <tr bgcolor="#E1EFFF"> 
    <td height=30 colspan=7>&nbsp;<b>��̨�û���</b></td>
  </tr>
  <tr bgcolor='#F5F5F5'> 
    <td width="10%" height='23' align='right'> <div align="center"></div></td>
    <td width="20%" align='right'> <div align="center">�û���</div></td>
    <td width="19%"> <div align="center">����(Ϊ�������벻��)</div></td>
    <td width="17%"> <div align="center">����</div></td>
    <td width="11%"> <div align="center">˵��</div></td>
    <td width="5%"><div align="center">ɾ��</div></td>
  </tr>
  <form name="form1" method="post" action="user.asp">
    <%
		
	sql4="select * from [Admin] order by id "
	set rs4=server.createobject("adodb.recordset")
	rs4.open sql4,conn,1,1
	if rs4.bof or rs4.eof then
		response.write "û�з���������¼��"
	else
		i=1
		do while not rs4.eof
			id=rs4("id")
			s_user=rs4("s_user")
			s_pwd=rs4("s_pwd")
			self=rs4("self1")
			memo=rs4("memo")
%>
    <%
	  if cstr(id)="1" then
	  %>
    <tr bgcolor='#Ffffff' onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';"> 
      <td height='23' align='right'><div align="center"><%=i%></div></td>
      <td height='23' align='right'><div align="center"> 
          <input name="id<%=i%>" type="hidden" value="<%=id%>">
          <input name="s_user<%=i%>" type="text" value="<%=s_user%>">
        </div></td>
      <td><div align="center"> 
          <input name="s_pwd<%=i%>" type="password">
        </div></td>
      <td><div align="center"> 
          <input name="backop" type="text" value="��������Ա"  readonly style="BACKGROUND-COLOR: #eeeeee;width:90px">
          <input name="self<%=i%>" type="hidden" value="8">
        </div></td>
      <td><div align="center"> 
          <input name="memo<%=i%>" type="text" value="<%=memo%>">
        </div></td>
      <td>&nbsp;</td>
    </tr>
    <%else%>
    <tr bgcolor='#Ffffff' onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';"> 
      <td height='23' align='right'><div align="center"><%=i%></div></td>
      <td height='23' align='right'><div align="center"> 
          <input name="id<%=i%>" type="hidden" value="<%=id%>">
          <input name="s_user<%=i%>" type="text" value="<%=s_user%>" >
        </div></td>
      <td><div align="center"> 
          <input name="s_pwd<%=i%>" type="password">
        </div></td>
      <td><div align="center"> 
          <select name="self<%=i%>" size="1" value="<%=self%>">
            <option value=""></option>
            <option value="2" <%if self="2" then response.write " selected"%> >��Ϣ����Ա</option>
            <option value="4" <%if self="4" then response.write " selected"%> >��������Ա</option>
            <option value="8" <%if self="8" then response.write " selected"%> >��������Ա</option>
          </select>
        </div></td>
      <td><div align="center"> 
          <input name="memo<%=i%>" type="text" value="<%=memo%>">
        </div></td>
      <td><div align="center"><a href="?action=del&id=<%=id%>" onClick="return test();">ɾ��</a></div></td>
    </tr>
    <%end if%>
    <%
		i=i+1
		rs4.movenext
		loop			
	end if
	rs4.close
	set rs4=nothing		
%>
    <tr bgcolor='#Ffffff' onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';"> 
      <td height='23' align='right'><div align="center"><%=i%></div></td>
      <td height='23' align='right'><div align="center"> 
          <input name="id<%=i%>" type="hidden" value="">
          <input name="s_user<%=i%>" type="text" value="">
        </div></td>
      <td><div align="center"> 
          <input name="s_pwd<%=i%>" type="password" value="">
        </div></td>
      <td><div align="center"> 
          <select name="self<%=i%>" size="1" value="">
           
            <option value="2">��Ϣ����Ա</option>
            <option value="4">��������Ա</option>
            <option value="8">��������Ա</option>
          </select>
        </div></td>
      <td><div align="center"> 
          <input name="memo<%=i%>" type="text" value="<%=memo%>">
        </div></td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor='#Ffffff' onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';"> 
      <td height='35' colspan="2" align='right'>&nbsp;</td>
      <input type="hidden" name="maxi" value="<%=i%>">
      <td colspan="5"><input type="submit" name="Submit2" value=" ���� "> &nbsp;&nbsp;&nbsp;&nbsp; 
        <input type="reset" name="Submit3" value=" ���� "> </td>
    </tr>
    <tr bgcolor='#Ffffff' onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';">
      <td height='35' colspan="2" align='right'><div align="left">ע��<strong>��������޸����룬�뱣��Ϊ�ռ���</strong>��<br>
        ���Ҫ���Ӳ���Ա���������һ����д�������档ÿ�α���󣬶����Զ� 
          ���������һ�����У����������������µĲ���Ա�ġ�</div></td>
      <td colspan="5">1 ��������Ա-ӵ��ȫ�����ܹ���Ȩ��<br>
        2 ��Ϣ����Ա-ӵ�г���Ա��������Ĺ���ԱȨ������վ������Ϣ����Ŀ������Ʒ����֧�������ǰ̨���ܿ�������Ϣ��<br>
        3 ��������Ա-ӵ�л�Ա����������Ȩ��</td>
    </tr>
  </form>
</table>
<br><br><br>

</body>
</html>
<%
call connclose
%>
<script>
function test()
{
  if(!confirm('ȷ��ɾ����')) return false;
}
</script>
