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
.style11 {
	font-size: 14px;
	color: #990000;
	font-weight: bold;
}
.style12 {color: #990000}
-->
</style>

<script language="javascript">
<!--
function SetBgColor(Menu)
{
		Menu.style.background="#F5F5F4";
}
function RestoreBgColor(Menu)
{
		Menu.style.background="#ffffff";
}
-->
</script>

</head>

<body>
<!-- #include file="head.asp" -->
<TABLE width="960" border=0 align="center" cellPadding=0 cellSpacing=0 bgcolor="#FFFFFF">
  <tr>
    <td> 
<table width="960" height="352" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
    <td width="210" height="184" valign="top">
		<!-- #include file="inc_left_all.asp" -->
      </td>
    <td width="750" valign="top">
      <TABLE width="100%" 
                  border=0 align="center" cellPadding=0 cellSpacing=2 class=a1>
        <TBODY>
          <TR>
            <TD width="100%" height=30 colSpan=1><TABLE width="100%" 
border=0 cellPadding=0 cellSpacing=0 background="images/bg4.gif">
              <TBODY>
                <TR>
                          <TD width=135 
                            height=30 background=images/hotnewpro.gif>������<span class="style11">��������</span></TD>
                          <TD width="554">&nbsp;</TD>
                          <TD width=57>&nbsp;</TD>
                </TR>
              </TBODY>
            </TABLE>
                    <TABLE width="100%" 
border=0 cellPadding=0 cellSpacing=0>
                      <TBODY>
                        <TR> 
                          <TD width=539 
                            height=50 background=images/buystep0.jpg><table width="538" border="0" cellspacing="0" cellpadding="0">
                              <tr> 
                                <td width="193" height="22">&nbsp;</td>
                                <td width="113"> <div align="center"><strong><font color="#FFFFFF">�����Ʒ</font></strong></div></td>
                                <td width="112"> <div align="center">���ﳵ</div></td>
                                <td width="120"> <div align="center">����</div></td>
                              </tr>
                            </table></TD>
                          <TD width="150">&nbsp;</TD>
                          <TD width=57>&nbsp;</TD>
                        </TR>
                      </TBODY>
                    </TABLE></TD>
          </TR>
		  </tbody>
		  </table>
<%
dim kind,nowpage
dim pkid,model,productname,smallpicpath,price1,price2,pipai

kind=request("kind")
nowpage=request("page")
if kind<>"" then
	sql="select pkid,model,productname,smallpicpath,price1,price"&session("customkind")&",kindname,pipai,addtime from view_product where kind like '"&kind&"%' and updown='1' order by pkid desc"
else
	sql="select pkid,model,productname,smallpicpath,price1,price"&session("customkind")&",kindname,pipai,addtime from view_product where updown='1' order by pkid desc"
end if

set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
if rs.bof or rs.eof then
	response.write "û����Ʒ��¼��"
else


i=1
%>
                          <TABLE align=center border=1 cellPadding=2 cellSpacing=0 width="99%"  bordercolorlight=#e1e1e1 bordercolordark=#ffffff>
                            <TBODY>
							<tr height=30 bgcolor=#e1e1e1>
							  <td>&nbsp;</td>
							  <td align="center">��Ʒ��</td>
							  <td align="center">Ʒ����</td>
							  <td align="center">��Ʒ��</td>
							  <td align="center">�г���</td>
							  <td align="center">��Ա��</td>
							  <td align="center">����ʱ��</td>
							  <td>&nbsp;</td>
							</tr>
                              
                                
<%
	rs.pagesize=20
	rs.absolutepage=1
	if request("page")<>"" then rs.absolutepage=request("page")
	rowcount=rs.pagesize
	if not rs.eof then
		do while not rs.eof and rowcount>0
		pkid=rs("pkid")
		model=rs("model")
		productname=rs("productname")
		smallpicpath=rs("smallpicpath")
		price1=rs("price1")
		price2=rs("price"&session("customkind"))
		pipai=rs("pipai")
		kindname=rs("kindname")
		addtime=rs("addtime")
	'if len(productname)>20 then
	'productname=left(productname,20)&"<br>"&mid(productname,11)
	'else
	'productname=productname&"<br>&nbsp;"
	'end if
%>
						<TR height='30' Onmouseover='return SetBgColor(this);' Onmouseout='return RestoreBgColor(this);'> 
							  <td><div align="center"><A href="show.asp?pkid=<%=pkid%>"> <IMG src="product/<%=smallpicpath%>" width='40' border="0" class=img1></A></div></td>
							  <td><%=model%>&nbsp;</td>
							  <td><%=pipai%>&nbsp;</td>
							  <td style=' WIDTH: 230px;'><A class=font_link href="show.asp?pkid=<%=pkid%>" target=_blank><%=productname%></A></td>
							  <td><FONT class='oldprice'><del>��<%=price1%></del></FONT></td>
							  <td><font class='nowprice'>��<%=price2%></font></td>
							  <td width=65><%=addtime%></td>
							  <td align="center"><%if s_colorsize="��" then%>
								<a href="show.asp?pkid=<%=pkid%>"><img src="images/icon_car.gif" border=0></a>
								<%else%>
								<a href="show.asp?pkid=<%=pkid%>&num=1&tk=shop7z"><img src="images/goumai.gif" border=0></a>
								<%end if%>
							  </td>

						</TR>
                            <%

		rs.movenext
		rowcount=rowcount-1
		loop
	end if

%>
							   

                            </TBODY>
                          </TABLE>
						       <table><TR> 
                                <TD height="1"></TD>
                              </TR></table>

<%
if nowpage="" then nowpage=1
nowpath=request.servervariables("script_name")
kind=server.URLEncode(kind)
response.write "<table width='550' align='center'>"
  response.write "<tr> "
   response.write " <td width='440' height='22' align=right style='font-size:9pt;'> "
		response.write "��"&rs.recordcount&"����¼&nbsp;ÿҳ20��&nbsp;���� "&nowpage&"/"&rs.pagecount &" ҳ&nbsp;"	
        response.write "<input type='button' name='Button3' value='��ҳ' onclick=window.location.href='"&nowpath&"?kind="&kind&"&none='>&nbsp;"
        if clng(nowpage)>1 then
        response.write "<input type='button' name='Button4' value='��ҳ' onclick=window.location.href='"&nowpath&"?page="&nowpage-1&"&kind="&kind&"&none='>&nbsp;"
        else
        response.write "<input type='button' name='Button4' value='��ҳ'>&nbsp;"
        end if
		if clng(nowpage)<>clng(rs.pagecount) then
        response.write "<input type='button' name='Button5' value='��ҳ' onclick=window.location.href='"&nowpath&"?page="&nowpage+1&"&kind="&kind&"&none='>&nbsp;"
        else
        response.write "<input type='button' name='Button5' value='��ҳ'>&nbsp;"
		end if
		response.write "<input type='button' name='Button6' value='ĩҳ' onclick=window.location.href='"&nowpath&"?page="&rs.pagecount&"&kind="&kind&"&none='>"
    response.write "</td><form name='form29' method='post' action='"&nowpath&"?kind="&kind&"&none='><td width='110'>&nbsp;ת��<input type='text' name='page' size=3>ҳ<input type='submit' name='Submitpage' value='GO'></td></form>"
  response.write "</tr>"
response.write "</table>"

end if
rs.close
set rs=nothing

%> 

<br>
     </td>
  </tr>
</table>

    </td>
  </tr>

</table>
<!-- #include file="foot.asp" -->
<%
conn.close
set conn=nothing
%>
</body>
</html>

