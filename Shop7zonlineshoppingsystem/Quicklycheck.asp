<!--#include file="conn.asp"-->
<%session("reg")="1"%>
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
.btn_sub {
	FONT-WEIGHT: 700; FONT-SIZE: 14px; COLOR: #fff; BACKGROUND: url(images/btn_bg.gif) no-repeat; WIDTH: 111px; HEIGHT: 25px;  CURSOR: hand; BORDER-LEFT-WIDTH: 0px;BORDER-TOP-WIDTH: 0px;   BORDER-BOTTOM-WIDTH: 0px;  BORDER-RIGHT-WIDTH: 0px
}
.register_submit {
	BACKGROUND: url(images/regist_sub.jpg) no-repeat; WIDTH: 111px; HEIGHT: 25px; CURSOR: hand; BORDER-BOTTOM-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px; TEXT-DECORATION: underline
}
-->
</style>
<SCRIPT language=javascript>
function Juge()
{
	if (document.theForm.username.value=="")
	{
		alert ("�������û�����")
		document.theForm.username.focus();
		return false;
	}

	if (document.theForm.username.value.length<4||document.theForm.username.value.length>20)
	{
		alert ("���û������ַ���̫�̻�̫��")
		document.theForm.username.focus();
		return false;
	}

	if (document.theForm.password.value=="")
	{
		alert ("�������û���½���롣")
		document.theForm.password.focus();
		return false;
	}
	if (document.theForm.password.value.length<6||document.theForm.password.value.length>20)
	{
		alert ("�û���½�����ַ���̫�̻�̫��������д6-20λ�ַ������롣")
		document.theForm.password.focus();
		return false;
	}
	if (document.theForm.password.value!=document.theForm.password2.value)
	{
		alert ("��½����ȷ�ϴ���")
		document.theForm.password2.focus();
		return false;
	}
	
	if (document.theForm.email.value=="")
	{
		alert ("����������ʼ�")
		document.theForm.email.focus();
		return false;
	}
	var checkOK = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_@.";
	var checkStr = theForm.email.value;
	var allValid = true;
	for (i = 0;  i < checkStr.length;  i++)
	{
		ch = checkStr.charAt(i);
		for (j = 0;  j < checkOK.length;  j++)
		if (ch == checkOK.charAt(j))
			break;
		if (j == checkOK.length)
		{
			allValid = false;
			break;
		}
	}

	if (theForm.email.value.length < 6)
	{
			allValid = false;
	}

	if (!allValid)
	{
		alert("������� \"�����ʼ���ַ\" ��Ч!");
		theForm.email.focus();
		return (false);
	}

	address=theForm.email.value;
   	if(address.length>0)
	 {
          i=address.indexOf("@");
          if(i==-1)
		{
			window.alert("�Բ���������ĵ����ʼ���ַ�Ǵ���ģ�")
			theForm.email.focus();
			return false
                }
       ii=address.indexOf(".")
        if(ii==-1)
		{
			window.alert("�Բ���������ĵ����ʼ���ַ�Ǵ���ģ�")
			theForm.email.focus();
			return false
                }

        }

	if (document.theForm.password_prompt.value=="")
	{
		alert ("������������ʾ����")
		document.theForm.password_prompt.focus();
		return false;
	}
	if (document.theForm.password_Answer.value=="")
	{
		alert ("������������ʾ�����")
		document.theForm.password_Answer.focus();
		return false;
	}
	



}
</SCRIPT>
</head>

<body>
<!-- #include file="head.asp" -->
<TABLE width="960" border=0 align="center" cellPadding=0 cellSpacing=0 bgcolor="#FFFFFF">
  <tr>
    <td><TABLE cellSpacing=0 cellPadding=0 width=960 align=center bgColor=#ffffff border=0>
        <TBODY>
          <TR> 
            <TD vAlign=top width="20">&nbsp;</TD>
            <TD width=940 valign="top" bgColor=#ffffff >
              
              <TABLE id=tbRegister style="MARGIN: 8px auto 15px" cellSpacing=0 cellPadding=0 width=930 border=0>
                <TBODY>
                  <TR>
                    <TD vAlign=top align=left width=336><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                        <TBODY>
                          <TR>
                            <TD><TABLE cellSpacing=0 cellPadding=0 border=0>
                                <TBODY>
                                  <TR>
                                    <TD vAlign=top align=left colSpan=2><IMG height=29 src="images/login_title.gif" width=167></TD>
                                  </TR>
                                  <TR>
                                    <TD style="PADDING-LEFT: 13px" align=left colSpan=2 height=30>������Ѿ��Ǳ�վ��Ա�����¼</TD>
                                  </TR>
                                  <TR>
                                    <TD vAlign=top align=left><TABLE cellSpacing=0 cellPadding=0 width=316 border=0>
                                        <TBODY>
                                          <TR>
                                            <TD vAlign=top align=left><IMG height=3 src="images/login_topline.jpg" width=316></TD>
                                          </TR>
                                          <TR>
                                            <TD vAlign=top align=left><TABLE class=border_lr2 cellSpacing=0 cellPadding=0 width=316 border=0>
                                                <TBODY>
                                                  <TR>
                                                    <TD class=pad_10 vAlign=top align=left>
													<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 style="border-right:1px solid #CCCCCC;border-left:1px solid #CCCCCC;">
														<%session("sure")="1"%>	
														<FORM id=formlogin name="formlogin" action="check.asp?jieshun=<%=request.QueryString("jieshun")%>" method="post" onSubmit="return Echeck()">
                                                        <TBODY>
															<TR> 
															<TD width="31%" height="43"> <DIV align=right>�û�����</DIV></TD><TD width="69%"> <INPUT style="WIDTH: 150px;height:22px; background-color:#FaFaFa; font-weight:bold;" maxLength=30 name="username"></TD>
															</TR>
															<TR> 
															<TD height=30> <DIV align=right>�ܡ��룺</DIV></TD><TD height=27> <INPUT style="WIDTH: 150px;height:22px; background-color:#FaFaFa;font-size:12px;" maxLength="11" name="password" type="password"></TD>
															</TR>
															<TR> 
															<TD height="40" colSpan=2 align="center"><INPUT class=btn_sub type=submit value=������¼ name=Login_Button></TD></TR>
															<TR> 
															<TD height="28" colSpan=2> <div style="padding-left:53px;"><span style="FONT-SIZE: 12px"><a href='getpassword.asp'>���ǵ�¼�����ˣ��������ȡ�����롣</a></span><br><br>
															  <font color="#666666"><strong>��Ϊ��Ա:</strong></font><br>
																������һ���������½��۴�����Ϣ��<br>
																��׬ȡ���ϻ��֣������Ķ���Ʒ����ȯ��<br>
																<br>
																</div></TD></TR>
                                                        </TBODY>
														</FORM>
                                                    </TABLE></TD>
                                                  </TR>
                                                </TBODY>
                                            </TABLE></TD>
                                          </TR>
                                          <TR>
                                            <TD vAlign=top align=left><IMG height=4 src="images/login_bottomline.jpg" width=316></TD>
                                          </TR>
                                        </TBODY>
                                    </TABLE></TD>
                                  </TR>
                                </TBODY>
                            </TABLE></TD>
                          </TR>
                          <TR>
                            <TD class=color_red14b height=8></TD>
                          </TR>
                          <TR>
                            <TD>					
							<%if must_login="0" and request.QueryString("jieshun")="1" then%>
							<table width="98%" border="0" cellpadding="0" cellspacing="0">
							<tr>
							<td><a href="orderjs.asp?action=quickly"><img src="images/zjgm_btn.gif" border="0"></a></td>
							</tr>
							</table>
							<%end if%>
				  			</TD>
                          </TR>

                        </TBODY>
                    </TABLE></TD>
                    <TD vAlign=top align=left><TABLE cellSpacing=0 cellPadding=0 width="99%" border=0>
                        <TBODY>
                          <TR>
                            <TD style="padding-top:17px;font-size:11pt;font-weight:bold;color:#ff8800">���û�����ע�᣺</TD>
                          </TR>
                          <TR>
                            <TD height="22">�����δע���Ϊ��վ��Ա��������ע�᣺</TD>
                          </TR>
                          <TR>
                            <TD>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 style="BORDER: #cccccc 1px solid;">
								<FORM name="theForm" action="regeditadmin.asp" method="post" onSubmit="return Juge()">
                                  <TBODY>
								  <TR bgColor=#ffffff> 
									<TD width="18%" height="31" align=right> <DIV class=black align=right>�û�����</DIV></TD>
									<TD width="82%">
									<table cellSpacing=0 cellPadding=0 width="100%" border=0><tr><td>
									<INPUT type="text" name="username" value="" style="FONT-WEIGHT: normal; FONT-SIZE: 9pt;height:22px; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" size=22 maxlength="20" onBlur="window.checkmem.location.href='check_member.asp?username='+document.theForm.username.value"> 
									<FONT color=#ff0000>* </FONT><FONT color=#666666>4-20���ַ�(a-z,A-Z,0-9)</FONT>
									</td><td>
									<iframe id=checkmem name=checkmem src="check_member.asp" width=170 height=23 marginheight="2" marginwidth="0" frameSpacing="0" frameborder="0" scrolling=no></iframe>
									</td></tr></table>
									</TD>
								  </TR>
								  <TR bgColor=#ffffff> 
									<TD height="31" align=right> <P class=black align=right>���룺</P></TD>
									<TD> <INPUT type="password" name="password" value=""  size=22 maxlength="20" style="FONT-WEIGHT: normal; FONT-SIZE: 9pt;height:22px; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" onFocus="window.checkmem.location.href='check_member.asp?username='+document.theForm.username.value"> 
									  <FONT color=#ff0000>*</FONT> <FONT color=#666666>���볤����6-20���ַ�֮��</font></TD>
								  </TR>
								  <TR bgColor=#ffffff> 
									<TD height="31" align=right class=black> 
									  <DIV align=right>����ȷ�ϣ�</DIV></TD>
									<TD> <INPUT type="password" name="password2" value=""  size=22 style="FONT-WEIGHT: normal; FONT-SIZE: 9pt;height:22px; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal"> 
									<FONT color=#ff0000>*</FONT> <FONT color=#666666>���ٴ���������</font></TD>
								  </TR>
								  <TR bgColor=#ffffff> 
									<TD height="31" align=right class=black>�����ʼ���</TD>
									<TD><INPUT name="email" style="FONT-WEIGHT: normal; FONT-SIZE: 9pt;height:22px; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" size=40 maxlength="50"> 
									*<FONT color=#666666>����ȷ��д�����õĵ����ʼ���ַ</font></TD>
								  </TR>
								  <TR bgColor=#ffffff> 
									<TD height="31" align=right class=black> 
									  <DIV align=right>������ʾ���⣺</DIV></TD>
									<TD> <SELECT style="width:143px;FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; HEIGHT: 21px; FONT-VARIANT: normal" size=1 name="password_prompt">
										<OPTION value="" selected>��ѡ������</OPTION>
										<OPTION value="���ĳ��а������ǣ�">���ĳ��а������ǣ�</OPTION>
										<OPTION value="���ĸ��а������ǣ�">���ĸ��а������ǣ�</OPTION>
										<OPTION value="������ż�������ǣ�">������ż�������ǣ�</OPTION>
										<OPTION value="������ż��ְҵ�ǣ�">������ż��ְҵ�ǣ�</OPTION>
										<OPTION value="������ż�������ǣ�">������ż�������ǣ�</OPTION>
										<OPTION value="���ĸ��׵������ǣ�">���ĸ��׵������ǣ�</OPTION>
										<OPTION value="���ĸ��׵�ְҵ�ǣ�">���ĸ��׵�ְҵ�ǣ�</OPTION>
										<OPTION value="����ĸ�׵������ǣ�">����ĸ�׵������ǣ�</OPTION>
										<OPTION value="����ĸ�׵������ǣ�">����ĸ�׵������ǣ�</OPTION>
										<OPTION value="����ϲ���ĸ������ǣ�">����ϲ���ĸ������ǣ�</OPTION>
										<OPTION value="����ϲ���ĵ�Ӱ���ǣ�">����ϲ���ĵ�Ӱ���ǣ�</OPTION>
									  </SELECT> <FONT color=#ff0000>*</FONT> <font color="#666666">����ȡ�����루�磺���ĳ��а������ǣ���</font></TD>
								  </TR>
								  <TR bgColor=#ffffff> 
									<TD height="31" align=right class=black> 
									  <DIV align=right>������ʾ�𰸣�</DIV></TD>
									<TD> <INPUT  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt;height:22px; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" size=22 name=password_Answer> 
									<FONT color=#ff0000>*</FONT> <font color="#666666">���������������ȡ������</font></TD>
								  </TR>
					<TR bgColor=#ffffff> 
                            
                          <TD align=right class=black><strong><font color="#FF0000">ע��������</font></strong></TD>
                            
                          <TD>
                            <textarea name="textarea" cols="60" rows="4" readonly>�������Ķ����ǵ�ע�����������ͬ�⣬������û�ע�ᡣ 
1��<%=application("sitename")%>��վ���������ȷ�Ϻͽ���
<%=application("sitename")%>��վ������������Ȩ������Ȩ��<%=application("sitename")%>ӵ�С�
2���û����룺
(1)�����䱸�����������豸�� �������˵��ԡ����ƽ�����������ر�����װ�á�
���� (2)���и�������������֧������˷����йصĵ绰���á� ������á�
3�� �йظ�������
�û�ͬ�⣺
(1) �ṩ��ʱ���꾡��׼ȷ�ĸ������ϡ�
(2) ���ϸ���ע�����ϣ����ϼ�ʱ���꾡׼ȷ��Ҫ������ԭʼ��������Ͻ�����Ϊע�����ϡ�
���� <%=application("sitename")%>��վ�������û�����������ַ����������ͱ���������������⣺
���� (1)�û���Ȩ<%=application("sitename")%>��վ͸¶��Щ��Ϣ��
���� (2)��Ӧ�ķ��ɼ�����Ҫ��<%=application("sitename")%>��վ�ṩ�û��ĸ������ϡ�����û��ṩ�����ϰ����в���ȷ����Ϣ��<%=application("sitename")%>��վ���������û�ʹ��<%=application("sitename")%>��վ��Ϣ�����ʸ��Ȩ����
4�� ����������޸�
���� <%=application("sitename")%>��վ��Ȩ�ڱ�Ҫʱ�޸ķ������<%=application("sitename")%>��վ��������һ�������䶯����������Ҫҳ������ʾ�޸����ݡ������ͬ�����Ķ������ݣ��û���������ȡ����õı���վ��Ϣ���� ����û���������<%=application("sitename")%>��վ��Ϣ��������Ϊ���ܷ�������ı䶯��<%=application("sitename")%>��վ������ʱ�޸Ļ��жϷ��������֪ͨ�û���Ȩ����<%=application("sitename")%>��վ��ʹ�޸Ļ��жϷ����Ȩ����������û������������
5�� �û���˽�ƶ�
���� �����û�������˽��<%=application("sitename")%>��վ��һ��������ߡ����ԣ���Ϊ�����ϵڶ������ע�����Ϸ����Ĳ��䣬<%=application("sitename")%>��վһ��������δ���Ϸ��û���Ȩʱ�������༭��͸¶��ע�����ϼ�������<%=application("sitename")%>��վ�еķǹ������� �������з������Ҫ���<%=application("sitename")%>��վ�ڳ��ŵĻ�������Ϊ͸¶��Щ��Ϣ��������������Ǳ�Ҫ�ģ�
(1) �����йط��ɹ涨�����<%=application("sitename")%>��վ�Ϸ��������
(2) ����ά��<%=application("sitename")%>��վ���̱�����Ȩ��
(3) �ڽ�������½���ά���û����˺������ڵ���˽��ȫ��
(4)����������ص�Ҫ��
<%=application("sitename")%>��վ����������Ա�˿ڷ�����ѯ��Ȩ����
6���û����ʺš�����Ͱ�ȫ��
���� ��һ��ע��ɹ���Ϊ�û����㽫�õ�һ��������ʺš�����㲻���ܺ��Լ����ʺź����밲ȫ������ȫ�����Ρ����⣬ÿ���û���Ҫ�����ʻ��е����л���¼���ȫ�������ʱ����ָʾ�ı�������룬 Ҳ���Խ����ɵ��ʻ��ؿ�һ�����ʻ����û�ͬ���������κηǷ�ʹ���û��ʺŻ�ȫ©���������������ͨ��<%=application("sitename")%>��վ��
7�� �ܾ��ṩ����
���� �û���ȷͬ����Ϣ�����ʹ�����û����˳е����ա� <%=application("sitename")%>��վ���������񲻻����жϣ��Է���ļ�ʱ�ԣ���ȫ�ԣ�������������������������������Χ�ڣ��������
8����������
���� <%=application("sitename")%>��վ���κ�ֱ�ӡ���ӡ�żȻ�����⼰������𺦲������Σ���Щ�����ԣ�������ʹ��<%=application("sitename")%>��վ���񣬻��û����͵���Ϣ�����Ϲ涨�ȡ���Щ��Ϊ���п��ܵ���<%=application("sitename")%>��վ�������� ����<%=application("sitename")%>��վ������������𺦵Ŀ����ԣ�ͬʱ�ᾡ�����������𺦵ķ�����
9����Ϣ�Ĵ��漰����
���� <%=application("sitename")%>��վ���ж��û�����Ϊ�Ƿ����<%=application("sitename")%>��վ���������Ҫ��;����Ȩ��������û�Υ��<%=application("sitename")%>��վ��������Ĺ涨��<%=application("sitename")%>��վ��Ȩ�ж��������ʺš�����û�������360��ʱ����û�е�¼���鿴��ʹ�ã�<%=application("sitename")%>��վ����Ϊ�û����з������ʺŵ�ʹ��Ȩ��<%=application("sitename")%>��վ�������ж϶����ṩ�����Ȩ����
10���û�����
���� �û�������ѭ��
(1) ���й��������⴫�似��������ʱ��������й��йط��档
(2) ʹ����Ϣ�������Ƿ���;��
(3) �����Ż�����������
(4) ��������ʹ�÷��������Э�顢�涨������͹������û�����Ϊ׼���������������棬���ߡ�����͹���Ϊ���ݵġ�
11������
���� �û�ͬ�Ᵽ�Ϻ�ά��<%=application("sitename")%>��վȫ���Ա�����棬����֧�����û�ʹ�ó�������Χ�������ʦ���ã�Υ������������𺦲������ã�������ʹ���û��ĵ��ԡ��ʺź�����֪ʶ��Ȩ��׷���ѡ�
12����������
�û���<%=application("sitename")%>��վ����ʱ����ʵ������ж�һ���������<%=application("sitename")%>��վ������κθ��˻�������������ʱ�жϷ����û��������κη�������Ľ����Ժ����������޸������飬���<%=application("sitename")%>��վ���������û�������ʹ����Ȩ����
(1) ����ʹ��<%=application("sitename")%>��վ��Ϣ����
(2) ֪ͨ<%=application("sitename")%>��վֹͣ�Ը��û��ķ���
���������û�������û�ʹ��<%=application("sitename")%>��վ�����Ȩ��������ֹ������ʱ���û�û��Ȩ����<%=application("sitename")%>��վҲû���������κ�δ�������Ϣ��δ��ɵķ�����û���������� 
13��ͨ��
�������з����û���ͨ�涼��ͨ����Ҫҳ��Ĺ��������ʼ��򳣹���ż����͡�����������޸ġ�����������������Ҫ�¼���ͨ�涼���Դ���ʽ���С� 
14����Ϣ���ݵ�����Ȩ
����<%=application("sitename")%>��վ�������Ϣ���ݰ��������֡��������������Ƭ��¼��ͼ���ڹ����ȫ�����ݣ�<%=application("sitename")%>��վΪ�û��ṩ��������Ϣ��������Щ�����ܰ�Ȩ���̱ꡢ��ǩ�������Ʋ�����Ȩ���ɵı��������ԣ��û�ֻ����<%=application("sitename")%>��վ�͹������Ȩ�²���ʹ����Щ���ݣ����������Ը��ơ�������Щ���ݡ������������йص�������Ʒ�� 
15������
����<%=application("sitename")%>��վ��Ϣ��������Ҫ���л����񹲺͹��ķ��ɽ���һ�¡��û���<%=application("sitename")%>��վһ��ͬ�����ڵ��й�ϽȨ�ķ�Ժ��Ͻ���緢������վ�����������л����񹲺͹�������ִ�ʱ������Щ�����ȫ�����ɹ涨���½��ͣ����������������ɱ��ֶ��û���Լ������ </textarea></TD>
                          </TR>
                                    <TR height="35">
                                      <TD>&nbsp;</TD>
                                      <TD><input id=login_chkAgree type=checkbox checked name=login$chkAgree>
                                        <label for=login_chkAgree>�������Ķ�����Ⲣͬ�Ȿվ��</label><span >��Աע������Э��</span></TD>
                                    </TR>
                                    <TR height="42">
                                      <TD>&nbsp;</TD>
                                      <TD><INPUT class=register_submit type=submit value=" " name=Register_Button> <input type="hidden" name="kuai_reg" value="1"></TD>
                                    </TR>
                                  </TBODY>
								  </form>
                                </TABLE>
                            
							</TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                  </TR>
                </TBODY>
              </TABLE>
              <p>&nbsp;</p>
              



		    </TD>
          </TR>
        </TBODY>
      </TABLE>

    </td>
  </tr>

<TR><TD>

</TD></TR>
</table>

<SCRIPT language=javascript>
function Echeck()
{
	if (document.formlogin.username.value=="")
	{
		alert ("�������û���½����")
		document.formlogin.username.focus();
		return false;
	}
	
	if (document.formlogin.password.value=="")
	{
		alert ("�������û���½����")
		document.formlogin.password.focus();
		return false;
	}
}
</SCRIPT>
<script>
document.formlogin.username.focus()
</script>
<!-- #include file="foot.asp" -->
<%
conn.close
set conn=nothing
%>
</body>
</html>

