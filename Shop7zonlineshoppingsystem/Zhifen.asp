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
                  <td><b><font color="#330099">���ֶ��ʣ�</font></b></td>
</tr></table>
					<table width="98%" border="1" align="center" cellpadding="1" cellspacing="0" bordercolorlight=#cccccc bordercolordark=#ffffff>
					<form name="theForm" method="post" action="chongzhidel.asp?menuid=<%=menuid%>">
					  <tr bgcolor="#cccccc" height=23> 
						<td width="9%"><div align="center">����</div></td>
						<td width="8%"><div align="center">�û���</div></td>
						<td width="6%"><div align="center">����</div></td>
						<td width="7%"><div align="center">����</div></td>
						<td width="19%"><div align="center">��ע</div></td>
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
					

					sql="select * from view_zhifen_union where username='"&session("username")&"' order by billdate"
					
					sum_sql="select sum(billzhf) as sumczmoney from view_zhifen_union where username='"&session("username")&"'"
					
					set rs=server.createobject("adodb.recordset")
					rs.open sql,conn,1,1
					if rs.bof or rs.eof then
						response.write "<tr><td colspan='8'><div align=center>��ǰû�з���������¼��"
						response.write "</div></td></tr>"
					else
						session("righturl")="1" 
					   rs.pagesize=20
					   rs.absolutepage=1
					   if request("page")<>"" then rs.absolutepage=request("page")
					   rowcount =rs.pagesize
					   if not rs.eof then
							do while not rs.eof and rowcount>0 
								
							kind=rs("kind")
							id=rs("id")
							billdate=rs("billdate")
							username=rs("username")
							billzhf=rs("billzhf")
							memo=rs("memo")
				
							response.write "<tr Onmouseover='return SetBgColor(this);' Onmouseout='return RestoreBgColor(this);'>"
							if kind="�һ�" then
							response.write "<td height=24>"&billdate&"</td>"
							else
								response.write "<td height=24><a style='CURSOR:hand;' onclick=""window.open('order_print.asp?id="&id&"&billno="&billno&"','','top=55,left=130,scrollbars=yes,width=680,height=500,resizable=yes,menubar=yes,resizable=yes')""><font color=#0033FF>"&billdate&"</font></a>&nbsp;</td>"
							end if
							response.write "<td >"&username&"</td>"
							response.write "<td >"&kind&"</td>"
							response.write "<td align=right>"&billzhf&"&nbsp;</td>"
							response.write "<td>"&memo&"</td>"			
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
								response.write "<td align=right colspan=3>�ϼƣ�</td>"
								response.write "<td align=right>"&sumrs("sumczmoney")&"&nbsp;</td>"
								response.write "<td>&nbsp;</td></tr>"
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

