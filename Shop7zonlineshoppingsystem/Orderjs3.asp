<%
Response.Buffer = True 
Response.ExpiresAbsolute = Now() - 1 
Response.Expires = 0 
Response.CacheControl = "no-cache" 
%>
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
.style13 {color: #333333}
.style15 {font-size: 14px; color: #669933; font-weight: bold; }
-->
</style></head>

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
	<table width="99%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height=2></td>
      </tr>
    </table>
            <TABLE width="700" border=0 align="center" cellPadding=0 cellSpacing=2 class=a1>
              <TBODY>
                <TR> 
                  <TD height=30 colSpan=3><TABLE width="100%" border=0 cellPadding=0 cellSpacing=0>
                      <TBODY>
                        <TR> 
                          <TD width="539" 
                            height=30 background="images/buystep.jpg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr> 
                                <td width="35%" height="22">&nbsp;</td>
                                <td width="23%"> 
                                  <div align="center">��д������Ϣ</div></td>
                                <td width="19%"> 
                                  <div align="center"><strong><font color="#FFFFFF">���ɶ���</font></strong></div></td>
                                <td width="23%"> <div align="center">����֧������</div></td>
                              </tr>
                            </table></TD>
                          <TD width=157 height="50">&nbsp;</TD>
                        </TR>
                      </TBODY>
                    </TABLE></TD>
                </TR>
              </tbody>
            </table>
            <table width="680" border="0" align="center" cellpadding="0" cellspacing="0">

              <tr> 
                <td height="40" style="font-size:14px;font-weight:bold;"> <%
				billno=trim(request.QueryString("billno"))
				sql="select * from x_bill where billno='"&billno&"'"
				set rs=server.createobject("adodb.recordset")
				rs.open sql,conn,1,1
				if rs.bof or rs.eof then
				else
					billno=rs("billno")
					billdate=rs("billdate")
					sendtype=rs("sendtype")
					paytype=rs("paytype")
					allmoney=rs("allmoney")
					sendmoney=rs("sendmoney")
					total=rs("total")
					
					youhjmoney=rs("youhjmoney")
					lastneedpay=rs("lastneedpay")
					'-----------------------
					truename=rs("truename")
					address=rs("address")
					telphone1=rs("telphone1")
					telphone2=rs("telphone2")
					postno=rs("postno")
					email=rs("email")
					mobile=rs("mobile")
					memo=rs("memo")
				end if
				rs.close
				set rs=nothing
				%> 
                  <table width="100%" height="263" border="0" cellpadding="0" cellspacing="0" background="images/success.gif">
<tr> 				<tr>
                      <td height="76"><font style="font-size:14px;font-weight:bold;">&nbsp;</font></td>
                      <td height="76" colspan="2"><font style="font-size:14px;font-weight:bold;">
					  <%if request.QueryString("nowpay")<>"1" then%>��ϲ�����Ķ����ѳɹ��ύ��<%end if%>������Ϊ��<font face="Arial, Helvetica, sans-serif" color=red style="font-size:14pt;font-weight:bold;"><%=request.QueryString("billno")%></font></font></td>
                    </tr>
                    <tr> 
                      <td width="10%" height="25"><div align="left"></div></td>
                      <td width="45%"> 
                        <div align="left">�µ�����ʱ�䣺<%=billdate%></div></td>
                      <td width="45%" rowspan="6">&nbsp;</td>
                    </tr>
                    <tr> 
                      <td height="25"><div align="left"></div></td>
                      <td>��ѡ�����ͻ���ʽ��<%=sendtype%></td>
                    </tr>
                    <tr> 
                      <td height="25"><div align="left"></div></td>
                      <td>��ѡ����֧����ʽ��<%=paytype%></td>
                    </tr>
                    <tr> 
                      <td height="25"><div align="left"></div></td>
                      <td>�������<b><%=formatnumber(allmoney,2)%></b></td>
                    </tr>
                    <tr> 
                      <td height="25"><div align="left"></div></td>
                      <td>�ͻ����ã���<b><%=formatnumber(sendmoney,2)%></b></td>
                    </tr>
                    <tr> 
                      <td height="25"><div align="left"></div></td>
                      <td>�Ż�ȯ�ֿ۽���<b><%=formatnumber(youhjmoney,2)%></b></td>
                    </tr>
                    <tr> 
                      <td height="35"><div align="left"></div></td>
                      <td><div align="left"><font color="#FF0000" style="font-size:14px;font-weight:bold;">�ö���������֧����</font><font face="Arial, Helvetica, sans-serif" color=red style="font-size:14pt;font-weight:bold;">��<%=formatnumber(lastneedpay,2)%></font></div></td>
                    </tr>
                  </table></td>
              </tr>
              <%
			  if paytype="֧����" then
                  if request.QueryString("nowpay")<>"1" then 
					sql4="select * from sh_pay1 where paykind='֧����'"
					set rs4=server.createobject("adodb.recordset")
					rs4.open sql4,conn,1,1
					if rs4.bof or rs4.eof then				
					else
						myaccount=rs4("myaccount")
						mykey=rs4("mykey")
						myparentid=rs4("myparentid")
						response.Cookies("paybillno")=billno  		'����alipay_notify.asp��д�����ݿ� '2010-11-19���޸�.alipay_notify.asp��request.Cookies("paybillno")��Ϊout_trade_no
						response.Cookies("subject")=billno					'subject		=	"���Զ�����"		'��Ʒ���ƣ�����ͻ��߹��ﳵ���̿�����Ϊ  "�����ţ�"&request("�ͻ���վ����")
						response.Cookies("body")=application("sitename")&"����"&billno 				'body			=	"��Ʒ����"		'��Ʒ����
																			'out_trade_no   =   dingdan         '��ʱ���ȡ�Ķ����ţ������޸ĳ��Լ���վ�Ķ����ţ���֤ÿ���ύ�Ķ���Ψһ����
						response.Cookies("price")=lastneedpay '��Ϊ���Ż�ȯ,����֧���ֿۺ�Ľ��  total						'price		    =	"0.01"			'��Ʒ����			0.01��100000000.00  ��ע����Ҫ����3,000.00���۸�֧��","��
																			'quantity       =   "1"             '��Ʒ����,����߹��ﳵĬ��Ϊ1
																			'discount       =   "0"             '��Ʒ�ۿ�
																			
																			
						response.Cookies("seller_email")=myaccount		    'seller_email    =    seller_email   '���ҵ�֧�����ʺţ�c2c�ͻ������Ը��Ĵ˲�����
						
						
						response.Cookies("show_url")="http://"&request.ServerVariables("HTTP_HOST") 	'show_url       = ""     '�̻���վ����ַ�� 
																										'seller_email	= ""	 '����дǩԼ֧�����˺ţ�
						response.Cookies("partner")=myparentid											'partner		= ""	 '��дǩԼ֧�����˺Ŷ�Ӧ��partnerID��
						response.Cookies("key")=mykey													'key			= ""	 '��дǩԼ�˺Ŷ�Ӧ�İ�ȫУ����	
						
						thisurl=request.ServerVariables("url")
						thisurl=replace(thisurl,"/orderjs3.asp","")
						response.Cookies("notify_url")="http://"&request.ServerVariables("HTTP_HOST")&thisurl&"/pay/Alipay_Notify.asp"    		  'notify_url		= "./Alipay_Notify.asp"	        '���׹����з�����֪ͨ��ҳ�� Ҫ�� http://��ʽ������·��������http://www.alipay.com/alipay/Alipay_Notify.asp  ע���ļ�λ������д��ȷ��
						response.Cookies("return_url")="http://"&request.ServerVariables("HTTP_HOST")&thisurl&"/pay/return_Alipay_Notify.asp"     'return_url		= "./return_Alipay_Notify.asp"	'��������ת��ҳ��			

			  %>
              <form name="payform" method="post" action="pay/index.asp">
                <tr> 
                  <td height="40" style="font-size:14px;line-height:180%;">&nbsp;&nbsp; 
                    <input type="button" name="Submit" value="���ͨ����֧�������������֧��" class="input2" style="width:240px;height:24px;" onClick="pay()"> 
                  </td>
                </tr>
              </form>
              <SCRIPT language=JavaScript>
						<!--
						function pay()
						{
						payform.Submit.disabled=true;
						document.payform.target = '_blank';
						document.payform.submit();   
						}
						-->
						</script>
              <%
					end if 
					else	
			%>
<form name="payform" method="post" action="pay/index.asp">
                <tr> 
                  <td height="40" style="font-size:14px;line-height:180%;">&nbsp;&nbsp; 
                    <input type="button" name="Submit" value="���ͨ����֧�������������֧��" class="input2" style="width:240px;height:24px;"  onclick="javascript:alert('��Ѱ����֧�ֶ�������֧������(��֧�����궩��������֧��)����ʽ�汾�����ƣ�������Http://www.Shop7z.com')" > 
                  </td>
                </tr>
              </form>			<%
					end if 			
			  elseif paytype="��������" then
					sql4="select * from sh_pay1 where paykind='��������'"
					set rs4=server.createobject("adodb.recordset")
					rs4.open sql4,conn,1,1
					if rs4.bof or rs4.eof then
					
					else
						myaccount=rs4("myaccount")
						mykey=rs4("mykey")
						response.Cookies("paybillno")=billno
						
						response.Cookies("v_mid")=myaccount
						response.Cookies("key")=mykey
						thisurl=request.ServerVariables("url")
						thisurl=replace(thisurl,"/orderjs3.asp","")
						response.Cookies("v_url")="http://"&request.ServerVariables("HTTP_HOST")&thisurl&"/chinabank/Receive.asp"
			  %>
              <FORM name="payform2" action="chinabank/Send.asp" method="post">
                <TR>
                  <TD height="40" style="font-size:14px;line-height:180%;"> <input name="v_oid" type="hidden" maxlength="64" value="<%=billno%>"> 
                    <input name="v_rcvname" type="hidden" value="<%=truename%>"> 
                    <input name="v_rcvaddr" type="hidden" id="v_rcvaddr"  value="<%=address%>"> 
                    <input name="v_rcvtel" type="hidden" id="v_rcvtel"  value="<%=telphone1&" "&telphone2%>"> 
                    <input name="v_rcvpost" type="hidden" id="v_rcvpost"  value="<%=postno%>"> 
                    <input type="hidden" name="v_rcvemail" value="<%=email%>"> 
                    <input type="hidden" name="v_rcvmobile" value="<%=mobile%>"> 
                    <input name="remark1" type=hidden id="remark1" value="<%=memo%>"> 
                    <input name="v_ordername" type="hidden" id="v_ordername" value="<%=truename%>"> 
                    <input name="v_orderaddr" type="hidden" id="v_orderaddr"  value="<%=address%>"> 
                    <input name="v_ordertel" type="hidden" id="v_ordertel"  value="<%=telphone1&" "&telphone2%>"> 
                    <input name="v_orderpost" type="hidden" id="v_orderpost"  value="<%=postno%>"> 
                    <input name="v_orderemail" type="hidden" id="v_orderemail" value="<%=email%>"> 
                    <input name="v_ordermobile" type="hidden" id="v_ordermobile" value="<%=mobile%>"> 
                    <input name="remark2" type=hidden id="remark2" value="<%=memo%>"> 
                    <input name="v_amount" type=hidden value="<%=round(lastneedpay,2)%>"> 
                    &nbsp;&nbsp;
                    <input type="button" name="Submit2" value="���ͨ�����������ߡ��������֧��"  class="input2" style="width:240px;height:24px;" onClick="pay2()"> 
                  </TD>
                </TR>
              </form>
              <SCRIPT language=JavaScript>
					<!--
					function pay2()
					{
					payform2.Submit2.disabled=true;
					document.payform2.target = '_blank';
					document.payform2.submit();   
					}
					-->
					</script>
              <%
			  		end if
					rs4.close 
					set rs4=nothing
					
			   
			  elseif paytype="��������" then
			  %>
              <tr> 
                <td height=50><b><font color='#E10000'>�����ѳɹ������ǻᾡ��������ϵ��������Ʒ�͸��ջ��ˣ�����ȡ������ӽ�</font></b></td>
              </tr>
              <tr> 
                <td height=35><a href='order_list.asp'><font color='#0000ff'>�������鿴���Ķ���&gt;&gt;</font></a></td>
              </tr>
			  <%elseif paytype="�˻����" then%>
              <tr> 
                <td height=50><b><font color='#E10000'>�����ɹ����棬���ɹ�֧�������ǻᾡ��������ϵ��������Ʒ�͸��ջ��ˡ���ӭ�´ι��١�</font></b></td>
              </tr>
              <tr> 
                <td height=35><a href='order_list.asp'><font color='#0000ff'>�������鿴���Ķ���&gt;&gt;</font></a></td>
              </tr>
              <%end if%>
              <tr> 
                <td height=85 style="line-height:180%;"> <b><font color='#E10000'>���ѡ�������л��ʾֻ�������֧�����ɹ������Ե�������Ӧ�����л��ʾֻ�<br>
				������绰��֪�������ġ������š�������������������С���<br>
				</font></b><font color='#333333'>�������ĵ�㵥�����ɡ�һ����ע�����������������š� �����յ����Ļ��֮�󣬽��������ŷ�����</font></td>
              </tr>
              <tr> 
                <td height=61>
				<table width="99%" align="center" style='BORDER-LEFT: #cccccc 1px solid;BORDER-RIGHT: #cccccc 1px solid;BORDER-TOP: #cccccc 1px solid;  BORDER-BOTTOM: #cccccc 1px solid;'>
					<%
					sql4="select * from sh_pay2 where len(bankno)>5 "
					set rs4=server.createobject("adodb.recordset")
					rs4.open sql4,conn,1,1
					if rs4.bof or rs4.eof then
					else
					%>
					<TR bgColor=#EEEEEE> 
					   <TD height=28><strong><font color="#FF9900">���Ի��������ʺţ�</font></strong></TD>
					</TR>				
					<%
						do while not rs4.eof
						id=rs4("id")
						bankname=rs4("bankname")
						bankno=rs4("bankno")
						bankren=rs4("bankren")
						bankaddr=rs4("bankaddr")
						bankmemo=rs4("bankmemo")
					%>
					<TR bgColor=#ffffff onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';"> 
					  <TD height=25><b><%=bankname%></b>&nbsp;&nbsp;�ʺţ�<%=bankno%>&nbsp;&nbsp;������<%=bankren%>&nbsp;&nbsp;�������У�<%=bankaddr%></TD>
					</TR>
					<%
						rs4.movenext
						loop
					end if
					rs4.close
					set rs4=nothing
					%>


				<%
				sql4="select * from sh_pay4 where youstat='1' "
				set rs4=server.createobject("adodb.recordset")
				rs4.open sql4,conn,1,1
				if rs4.bof or rs4.eof then
				else
				%>
                <TR bgColor=#eeeeee>
				   <TD height=28><strong><font color="#FF9900">�ʾֻ��</font></strong></TD>
                </TR>				
				<%
					youpaykind=rs4("youpaykind")
					memo1=rs4("memo")&"&nbsp;"
					memo1 = replace(memo1,vbcrlf,"<br>")
					memo1 = replace(memo1," ","&nbsp;")
				%>
                <TR bgColor=#ffffff > 
                  <TD height=80 style="line-height:180%;"><%=memo1%></TD>
                </TR>
				<%
				end if
				rs4.close
				set rs4=nothing
				%>
				</table>
				</td>
              </tr>
              <tr> 
                <td height=40><a href='order_list.asp'><font color='#0000ff'> 
                  �������鿴���Ķ���&gt;&gt;</font></a></td>
              </tr>
              <%					  		
			  'end if
			  %>
              <tr> 
                <td><br>
                  �������� �ҵĶ��� �в鿴��ȡ�������� 
                  <p>��7�������ǻᱣ��δ֧���Ķ������뼰ʱ֧����<br>
                    <br>
                    <br>
                    <br>
                  </p></td>
              </tr>
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



