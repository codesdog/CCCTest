<%
Response.Buffer = True 
Response.ExpiresAbsolute = Now() - 1 
Response.Expires = 0 
Response.CacheControl = "no-cache" 
%>
<!--#include file="conn.asp"-->
<%
if session("username")="" then
	conn.close
	set conn=nothing
	response.Redirect("hyzq.asp")
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
</style></head>

<body>
<!-- #include file="head.asp" -->
<TABLE width="960" border=0 align="center" cellPadding=0 cellSpacing=0 bgcolor="#FFFFFF">
  <tr>
    <td> 


<table width="960" height="352" border="0" align="center" cellpadding="0" cellspacing="0">
<tr> 
          <td height="184" valign="top" bgcolor="#F7F7F7"> 
<table width="958"  border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td height=1></td>
              </tr>
            </table>
            <TABLE width="958" border=0 align="center" cellPadding=0 cellSpacing=2 class=a1>
              <TBODY>
                <TR> 
                  <TD height=30 colSpan=3>
				  <TABLE width="100%" border=0 cellPadding=0 cellSpacing=0 background="images/bg4.gif">
<TBODY>
                        <TR> 
                          <TD width="621" height=30> <strong>�ҵĶ�����</strong></TD>
                          <TD width="137"><a href="javascript:window.history.back()">&lt;&lt; 
                            ����</a></TD>
                        </TR>
                      </TBODY>
                    </TABLE></TD>
                </TR>
              </tbody>
            </table>
            <table width="958" border="0" align="center" cellpadding="2" cellspacing="1">
              <tr bgcolor="#5C9153"> 
                <td width="32" height="25" > 
					<div align="center"><font color="#FFFFFF"><strong>���</strong></font></div></td>
                <td width="115"> 
                  <div align="center"><font color="#FFFFFF"><strong>������</strong></font></div></td>
                <td width="105"> 
                  <div align="center"><font color="#FFFFFF"><strong>����ʱ��</strong></font></div></td>
                <td width="53"> 
                  <div align="center"><font color="#FFFFFF"><strong>�ܽ��</strong></font></div></td>
                <td width="53"> 
                  <div align="center"><font color="#FFFFFF"><strong>�û���</strong></font></div></td>
                <td width="53"> 
                  <div align="center"><font color="#FFFFFF"><strong>�û���</strong></font></div></td>
                <td width="57"> 
                  <div align="center"><font color="#FFFFFF"><strong>�ջ���</strong></font></div></td>
                <!--
				<td width="90"> 
                  <div align="center"><font color="#FFFFFF"><strong>�绰</strong></font></div></td>
				-->
                <td width="65"> 
                  <div align="center"><font color="#FFFFFF"><strong>�ͻ���ʽ</strong></font></div></td>
                <td width="65"> 
                  <div align="center"><font color="#FFFFFF"><strong>���ʽ</strong></font></div></td>
                <td width="70"> 
                  <div align="center"><font color="#FFFFFF"><strong>����״̬</strong></font></div></td>
				  
                <td width="65"> 
                  <div align="center"><font color="#FFFFFF"><strong>����״̬</strong></font></div></td>
                <td width="50">
                  <div align="center"><font color="#FFFFFF"><strong>�༭</strong></font></div></td>
              </tr>
              <%
		dim sql4,rs4,id,num,pkid
		dim sql5,rs5,model,productname,price2,price,money
		
		kind=request("kind")
		nowpage=request("page")

		sql4="select * from x_view_bill where username='"&session("username")&"' order by id desc"
		set rs4=server.createobject("adodb.recordset")
		rs4.open sql4,conn,1,1
		if rs4.bof or rs4.eof then
			response.write "û����Ʒ��¼��"
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
				username=rs4("username")
				truename=rs4("truename")
				'telphone1=rs4("telphone1")
				sendornot=rs4("sendornot")
				
				lastneedpay=rs4("lastneedpay")
				sendtype=rs4("sendtype")
				paytype=rs4("paytype")
				paystat=rs4("paystat")
				billzhf=rs4("billzhf")
				if sendornot="�ѷ���" then
				else
				billzhf="&nbsp;"
				end if
		
				response.write "<tr bgcolor='#Ffffff' onMouseOver=""this.style.background='#f1f1f1';"" onMouseOut=""this.style.background='#ffffff';"">"
				response.write "<td height='26' align='center'>"&i&"</td>"
				response.write "<td><a style='CURSOR:hand;' onclick=""window.open('order_print.asp?id="&id&"&billno="&billno&"','','top=55,left=130,scrollbars=yes,width=680,height=500,resizable=yes,menubar=yes,resizable=yes')""><font color=#0033FF>"&billno&"</font></a></td>"
				response.write "<td>"&billdate&"</td>"
				response.write "<td align=right>"&formatnumber(lastneedpay,2)&"</td>"
				response.write "<td align=right>"&billzhf&"</td>"
				if session("m_gold")>"1" then
				response.write "<td><font color='#ff0000'><b>"&username&"</b></font></td>"
				else
				response.write "<td>"&username&"</td>"
				end if
				response.write "<td>"&truename&"</td>"
				'response.write "<td>"&telphone1&"</td>"
				response.write "<td>"&sendtype&"</td>"
				response.write "<td>"&paytype&"</td>"
				
				if (paytype="֧����" or paytype="��������" or paytype="�Ƹ�ͨ" or paytype="PayPal����") and (paystat="" or isnull(paystat)) and (sendornot<>"��Ա����ȡ��" and sendornot<>"��Ч������ȡ��") then
				response.write "<td style='width:100px'><a href='orderjs3.asp?billno="&billno&"&nowpay=1' target='_blank'><font color='#0000ff'>����ȥ����</font></a></td>"
				else
				response.write "<td style='width:100px'>"&paystat&"</td>"
				end if
				
				if sendornot="�ѷ���" then
				response.write "<td align=center><a title='����鿴������Ϣ' style='CURSOR:hand;' onclick=""window.open('order_print.asp?id="&id&"&billno="&billno&"','','top=55,left=130,scrollbars=yes,width=680,height=500,resizable=yes,menubar=yes,resizable=yes')""><font color=#0033FF>�ѷ���</font></a></td>"
				else
				response.write "<td align=center>"&sendornot&"</td>"
				end if
				if paystat="�Ѹ���" then
				response.write "<td>&nbsp;</td>"
				elseif sendornot="δ����" and (not instr(paystat,"����ɹ�")>0 or paystat="" or isnull(paystat)) then
				response.write "<td align=center><a onclick=""return confirm('�Ƿ�ȡ������"&billno&"?')"" href=""order_listdel.asp?id="&id&""">ȡ��</a></td>" 
				else
				response.write "<td>&nbsp;</td>"
				end if
				
				response.write "</tr>"&vbcrlf
				rs4.movenext
				i=i+1
				rowcount=rowcount-1
			loop
		end if
			  %>
            </table>
            <table width="956" border="0" align="center" cellpadding="0" cellspacing="0">
              <TR bgColor=#ffffff> 
                <TD  height="32" align=middle colSpan=6>
<%
if nowpage="" then nowpage=1
nowpath=request.servervariables("script_name")
kind=server.URLEncode(kind)
response.write "<table width='550' align='center'>"
  response.write "<tr> "
   response.write " <td height='22' align=right style='font-size:9pt;'> "
		response.write "��"&rs4.recordcount&"����¼&nbsp;ÿҳ15��&nbsp;���� "&nowpage&"/"&rs4.pagecount &" ҳ&nbsp;"	
        response.write "<input type='button' name='Button3' value='��ҳ' onclick=window.location.href='"&nowpath&"?kind="&kind&"&none='>&nbsp;"
        if clng(nowpage)>1 then
        response.write "<input type='button' name='Button4' value='��ҳ' onclick=window.location.href='"&nowpath&"?page="&nowpage-1&"&kind="&kind&"&none='>&nbsp;"
        else
        response.write "<input type='button' name='Button4' value='��ҳ'>&nbsp;"
        end if
		if clng(nowpage)<>clng(rs4.pagecount) then
        response.write "<input type='button' name='Button5' value='��ҳ' onclick=window.location.href='"&nowpath&"?page="&nowpage+1&"&kind="&kind&"&none='>&nbsp;"
        else
        response.write "<input type='button' name='Button5' value='��ҳ'>&nbsp;"
		end if
		response.write "<input type='button' name='Button6' value='ĩҳ' onclick=window.location.href='"&nowpath&"?page="&rs4.pagecount&"&kind="&kind&"&none='>"
    response.write "</td>"
  response.write "</tr>"
response.write "<tr><td height=60>&nbsp;</td></tr></table>"
%>
				</TD>
              </TR>
			  
            </table>
          </td>
        </tr>
      </table>


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

