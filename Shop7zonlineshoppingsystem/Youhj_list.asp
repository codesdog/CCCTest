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
.style12 {color: #990000}
-->
</style>

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
	response.Redirect("QuicklyCheck.asp")
%>	

              <%else%>
					<br>
					<table width="98%" border="0" align="center" cellpadding="1" cellspacing="0"><tr>
                  <td><b><font color="#330099">�Ż�ȯ���ʣ�</font></b></td>
</tr></table>
					<table width="98%" border="1" align="center" cellpadding="1" cellspacing="0" bordercolorlight=#cccccc bordercolordark=#ffffff>
					<form name="theForm" method="post" action="chongzhidel.asp?menuid=<%=menuid%>">
					  <tr bgcolor="#cccccc"> 
						<td><div align="center">�������</div></td>
						<td><div align="center">��ض�����</div></td>
						<td><div align="center">�û���</div></td>
						<td><div align="center">�Ż�ȯ����</div></td>
						<td><div align="center">�Ż�ȯ���</div></td>
						<td><div align="center">ʹ�ÿ�ʼ����</div></td>
						<td><div align="center">ʹ�ý�������</div></td>
						<td><div align="center">��ʹ��</div></td>
						<td><div align="center">ʹ�õ�����</div></td>
					  </tr>
					  <%
					function mydot(shu)	'��ʾ0
						if isnumeric(shu) then
							shu=cdbl(shu)
							if shu<0 and abs(shu)<1 then
								mydot="-0"&formatnumber(abs(shu),2)
							elseif shu>0 and shu<1 then
								mydot="0"&formatnumber(abs(shu),2)
							elseif shu=0 then
								mydot="0"&formatnumber(shu,2)
							else
								mydot=formatnumber(shu,2)
							end if
						else
							mydot="-"
						end if
					end function
					

					sql="select * from view_bill_youhj where username='"&session("username")&"' order by youhj_getdate desc "
					
					sum_sql="select sum(yhj_dk_jine) as sumyhj_dk_jine from view_bill_youhj where username='"&session("username")&"'"
					
					set rs=server.createobject("adodb.recordset")
					rs.open sql,conn,1,1
					if rs.bof or rs.eof then
						response.write "<tr><td colspan='9'><div align=center>��ǰû�з���������¼��"
						response.write "</div></td></tr>"
					else
						session("righturl")="1" 
					   rs.pagesize=20
					   rs.absolutepage=1
					   if request("page")<>"" then rs.absolutepage=request("page")
					   rowcount =rs.pagesize
					   if not rs.eof then
							do while not rs.eof and rowcount>0 
								
							youhj_getdate=rs("youhj_getdate")
							id=rs("id")   '��õĶ�����
							billno=rs("billno")
							username=rs("username")
							yhj_name=rs("yhj_name")
							yhj_memo=rs("yhj_memo")
							yhj_mz_jine=rs("yhj_mz_jine")
							yhj_dk_jine=rs("yhj_dk_jine")
							yhj_sy_time=rs("yhj_sy_time")
							yhj_zs_time=rs("yhj_zs_time")
							youhj_used=rs("youhj_used")
							youhj_useddate=rs("youhj_useddate")
							youhj_used_billid=rs("youhj_used_billid")
				
				
							response.write "<tr Onmouseover='return SetBgColor(this);' Onmouseout='return RestoreBgColor(this);'>"
							response.write "<td height=24>"&youhj_getdate&"</td>"
							response.write "<td><a style='CURSOR:hand;' onclick=""window.open('order_print.asp?id="&id&"&billno="&billno&"','','top=55,left=130,Toolbar=yes,scrollbars=yes,width=680,height=500,resizable=yes,menubar=yes,resizable=yes')""><font color=#0033FF>"&billno&"</font></a></td>"
							response.write "<td >"&username&"</td>"
							response.write "<td >"&yhj_name&"</td>"
							response.write "<td align=right>"&mydot(yhj_dk_jine)&"</td>"
							response.write "<td >"&yhj_sy_time&"</td>"
							response.write "<td >"&yhj_zs_time&"</td>"
							response.write "<td >"&youhj_used&"&nbsp;</td>"
							response.write "<td ><a style='CURSOR:hand;' onclick=""window.open('order_print.asp?id="&youhj_used_billid&"&billno=','','top=55,left=130,Toolbar=yes,scrollbars=yes,width=680,height=500,resizable=yes,menubar=yes,resizable=yes')""><font color=#0033FF>"&youhj_useddate&"</font></a>&nbsp;</td>"		
							response.write "</tr>"&vbcrlf
				
			
								rs.movenext
							m = m + 1
							rowcount=rowcount-1
							loop
							end if
					end if
					
					if nowpage="" then nowpage=1
					if cint(nowpage)=cint(rs.pagecount) then
						set sumrs=conn.execute(sum_sql)
								response.write "<tr height=24 bgcolor='#FFCCCC'>"
								response.write "<td align=right colspan=4>�ϼƣ�</td>"
								response.write "<td align=right>"&mydot(sumrs("sumyhj_dk_jine"))&"</td>"
								response.write "<td align=right colspan=4>&nbsp;</td>"
						sumrs.close
					end if
					
					%>
					</form>
					</table>
					<%
					response.write "<table border=0 width='98%' align=center><tr><td align=right height=30>"
							backnexturl="inputsearch="&inputsearch&"&inputkind="&inputkind&"&none=&"
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
							response.write "</td><form name='form1' method='post' action='chzhdetail.asp?"&backnexturl&"'><td>ת����<input type=text name='page'size=3>ҳ <input type='submit' name='Submit' value='ȷ��'>"
							response.write "&nbsp;&nbsp;<a href='javascript:window.scroll(0,0)'>TOP��</a>"
					response.write "</td></form></tr></table>"
					
					response.cookies("hypage")=nowpath&"?"&backnexturl&"page="&nowpage
					
					
					rs.close
					set rs=nothing
					
					%>
					<br><br>
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

<!-- #include file="foot.asp" -->
<%
conn.close
set conn=nothing
%>
</body>
</html>

