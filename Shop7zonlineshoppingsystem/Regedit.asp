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
	
	if (document.theForm.truename.value=="")
	{
		alert ("�������û���ʵ����")
		document.theForm.truename.focus();
		return false;
	}

  if (theForm.province.value == "")
  {
    alert("��ѡ��ʡ��!");
    document.theForm.province.focus();
    return false;
  }

  if (theForm.city.value == "")
  {
    alert("��ѡ�����!");
    document.theForm.city.focus();
    return false;
  }
  
  if (theForm.area.value == "��Ͻ��")
  {
    alert("��ѡ�����!");
    document.theForm.area.focus();
    return false;
  }


	if (document.theForm.address.value=="")
	{
		alert ("��������ϸ��ϵ��ַ")
		document.theForm.address.focus();
		return false;
	}

	if (document.theForm.telphone1.value=="")
	{
		alert ("��������ϵ�绰")
		document.theForm.telphone1.focus();
		return false;
	}
	




	//document.theForm.Naction.value="Change";
	//document.theForm.submit();
}
</SCRIPT>

<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	
	margin-bottom: 0px;
	margin-right: 0px;
}
.style1 {font-size: 14px}
.style11 {
	font-size: 14px;
	color: #990000;
	font-weight: bold;
}
.style12 {color: #990000}
.style13 {color: #333333}
.style15 {font-size: 14px; color: #669933; font-weight: bold; }

.register_submit {
	BACKGROUND: url(images/regist_sub.jpg) no-repeat; WIDTH: 111px; HEIGHT: 25px; CURSOR: hand; BORDER-BOTTOM-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px; TEXT-DECORATION: underline
}
-->
</style>
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
	<table width="99%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height=2></td>
      </tr>
    </table>
            <table width="50%" height="2"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td></td>
        </tr>
      </table>

            <TABLE width="99%" border=0 align="center" cellPadding=0 cellSpacing=0 >
              <FORM name="theForm" action="regeditadmin.asp" method="post" onSubmit="return Juge()">
                <TBODY>
				  <tr><TD height="30" style="padding-top:2px;font-size:11pt;font-weight:bold;color:#ff8800">&nbsp;&nbsp;���û�ע�᣺</TD></tr>
                  <TR> 
                    <TD>
                      <TABLE width="99%" border=0 align="center" cellPadding=3 cellSpacing=1 class=black-pix12 >


<TR bgColor=#ffffff> 
                            
                          <TD width="21%" align=right class=black><strong><font color="#FF0000">ע��������</font></strong></TD>
                            
                          <TD width="79%">
                            <textarea name="textarea" cols="68" rows="8" readonly>�������Ķ����ǵ�ע�����������ͬ�⣬������û�ע�ᡣ 
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
					</table>
				
					  <TABLE width="99%" border=0 align="center" cellPadding=3 cellSpacing=1 class=black-pix12 >
                        <TBODY>
                          <TR bgColor=#ffffff> 
                            <TD height=28>&nbsp;</TD>
                            <TD height=28><strong>����ȷ��д<%=application("sitename")%>��Աע����Ϣ��</strong></TD>
                          </TR>
                          <TR bgColor=#ffffff> 
                            <TD width=21% height="35" align=right> <DIV class=black align=right>�û�����</DIV></TD>
                            <TD width=79%>
							<table cellSpacing=0 cellPadding=0 width="510" border=0><tr><td>
							<INPUT type="text" name="username" value="" style="FONT-WEIGHT: normal; FONT-SIZE: 9pt;height:22px; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" size=22 maxlength="20" onBlur="window.checkmem.location.href='check_member.asp?username='+document.theForm.username.value"> 
							<FONT color=#ff0000>* </FONT><FONT color=#666666>4-20���ַ�(a-z��A-Z��0-9)</FONT>
							</td><td>
							<iframe id=checkmem name=checkmem src="check_member.asp" width=180 height=23 marginheight="2" marginwidth="0" frameSpacing="0" frameborder="0" scrolling=no></iframe>
							</td></tr></table>
							</TD>
                          </TR>
                          <TR bgColor=#ffffff> 
                            <TD width=21% height="35" align=right> <P class=black align=right>��¼���룺</P></TD>
                            <TD width=79%> <INPUT type="password" name="password" value=""  size=22 maxlength="20" 
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt;height:22px; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" onFocus="window.checkmem.location.href='check_member.asp?username='+document.theForm.username.value"> 
                              <FONT 
                  color=#ff0000>*</FONT> </TD>
                          </TR>
                          <TR bgColor=#ffffff> 
                            <TD width=21% height="35" align=right></TD>
                            <TD width=79%><FONT color=#666666>6-20���ַ���0-9��a-z��A-Z���»��ߣ� 
                              �������ִ�Сд���������û�����ͬ������������һ�����ڼ����Ҳ��ױ����˲µ������롣���μ����롣</FONT></TD>
                          </TR>
                          <TR bgColor=#ffffff> 
                            <TD width=21% height="35" align=right class=black> 
                              <DIV align=right>����ȷ�ϣ�</DIV></TD>
                            <TD width=79%> <INPUT type="password" name="password2" value=""  size=22  
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt;height:22px; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal"> <FONT 
                  color=#ff0000>*</FONT> </TD>
                          </TR>
                          <TR bgColor=#ffffff> 
                            <TD height="35" align=right class=black>�����ʼ���</TD>
                            <TD><INPUT name="email"  
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt;height:22px; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  size=45 maxlength="50"> 
                            *<FONT color=#666666>����ȷ��д�����õĵ����ʼ���ַ��</font></TD>
                          </TR>
                          <TR bgColor=#ffffff> 
                            <TD width=21% height="35" align=right class=black> 
                              <DIV align=right>������ʾ���⣺</DIV></TD>
                            <TD width=79%> <SELECT style="width:160px;FONT-WEIGHT: normal; FONT-SIZE: 9pt; LINE-HEIGHT: normal; FONT-STYLE: normal; HEIGHT: 21px; FONT-VARIANT: normal" size=1 name="password_prompt">
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
                              </SELECT> <FONT 
                  color=#ff0000>*</FONT> <font color="#666666">����ȡ�����루�磺���ĳ��а������ǣ���</font></TD>
                          </TR>
                          <TR bgColor=#ffffff> 
                            <TD width=21% height="35" align=right class=black> 
                              <DIV align=right>������ʾ�𰸣�</DIV></TD>
                            <TD width=79%> <INPUT  
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt;height:22px; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  size=22 name=password_Answer> <FONT 
                  color=#ff0000>*</FONT> <font color="#666666">����������󣬵�����������롱��ȷ�ش�˴𰸿�ȡ������</font></TD>
                          </TR>

                          <TR bgColor=#ffffff> 
                            <TD width=21% height="35" align=right>��ʵ������</TD>
                            <TD width=79%> <INPUT  
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt;height:22px; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  size=22 name=truename> <FONT color=#ff0000>*</FONT> <font 
                  color=#666666>������������ʵ����������������������ϵ��</font></TD>
                          </TR>
                          <TR bgColor=#ffffff> 
                            <TD width=21% height="35" align=right class=black> 
                              <DIV align=right>ʡ��/����/������</DIV></TD>
                            <TD width=79%>
							<script language="javascript" src="pcasunzip.js"></script>
							<select name="province"  style="WIDTH: 130px"></select> <select name="city"  style="WIDTH: 140px"></select> <select name="area"  style="WIDTH: 140px"></select>
							<script language="javascript" defer>
							new PCAS("province","city","area");
							</script>
							</TD>
                          </TR>

                          <TR bgColor=#ffffff> 
                            <TD width=21% height="47" align=right class=black> 
                            <DIV align=right>��ϸ��ַ��</DIV></TD>
                            <TD class=black width=79%> <INPUT   
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt;height:22px; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  size=45 name=address> <FONT color=#ff0000>*</FONT><font color="#0066CC">����ַ����������Ʒ�ͻ����Ż��ʼĵ�ַ��</font> 
                              <br>
                            <font color="#666666">���磺��������·2���³ǻ�԰E��2203��</font></TD>
                          </TR>
                          <TR bgColor=#ffffff> 
                            <TD width=21% height="35" align=right class=black> 
                              <DIV align=right>�������룺</DIV></TD>
                            <TD class=black width=79%> <INPUT name=postno  
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt;height:22px; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  size=22 maxlength="15"> </TD>
                          </TR>
                          <TR bgColor=#ffffff> 
                            <TD width=21% height="35" align=right class=black> 
                              <DIV align=right>�̶��绰��</DIV></TD>
                            <TD width=79%> <INPUT  
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt;height:22px; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  size=22 name=telphone1> <FONT color=#ff0000>*</FONT> <FONT 
                  color=#666666>�����ź͵绰���룬��ֻ��� ��:020-83219880��020-85698890-21</FONT></TD>
                          </TR>
                          <TR bgColor=#ffffff> 
                            <TD width=21% height="35" align=right class=black> 
                              <DIV align=right>�ƶ��绰��</DIV></TD>
                            <TD class=black width=79%> <INPUT  
                  style="FONT-WEIGHT: normal; FONT-SIZE: 9pt;height:22px; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal" 
                  size=22 name='mobile'> </TD>
                          </TR>



                          <TR vAlign=top bgColor=#ffffff> 
                            <TD align=right colSpan=2> <TABLE   cellSpacing=0 cellPadding=0 width="100%" 
                  border=0>
                                <TBODY>
                                  <TR bgColor=#ffffff> 
                                    <TD align=right width="91">&nbsp;</TD>
                                    <TD align=right width=62>&nbsp;</TD>
                                    <TD align=right width="575">&nbsp;</TD>
                                  </TR>
                                  <TR bgColor=#ffffff> 
                                    <TD align=right width="91">&nbsp;                                    </TD>
                                    <TD width=62>&nbsp;</TD>
                                    <TD width="575"><input class=register_submit type=submit value=" " name=Register_Button>
                                      <input   type=hidden value=add name=eaction></TD>
                                  </TR>
                                  <TR bgColor=#ffffff> 
                                    <TD align=right colSpan=3 height=15></TD>
                                  </TR>
                                </TBODY>
                              </TABLE></TD>
                          </TR>
                        </TBODY>
                      </TABLE>
					  <br>
					   </TD>
                  </TR>
                </TBODY>
              </FORM>
            </TABLE>
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



