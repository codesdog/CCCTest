<!--#include file="conn.asp"-->
<%
    Set rs=server.createobject("adodb.recordset")
	rs.open "select  * from sh_pay1 where id=1",conn,1,1
	
	
	show_url        =rs("self1")     	'�̻���վ����ַ�� 
	seller_email	=rs("myaccount")	'����дǩԼ֧�����˺ţ� 
	partner			=rs("myparentid") 	 	'��дǩԼ֧�����˺Ŷ�Ӧ��partnerID��
	key			    =rs("mykey") 	 		'��дǩԼ�˺Ŷ�Ӧ�İ�ȫУ����

    notify_url		="http://"&rs("self2")&"/pay/Alipay_Notify.asp"  	' 	"./Alipay_Notify.asp"	        '���׹����з�����֪ͨ��ҳ�� Ҫ�� http://��ʽ������·��������http://www.alipay.com/alipay/Alipay_Notify.asp  ע���ļ�λ������д��ȷ��
	return_url		="http://"&rs("self2")&"/pay/return_Alipay_Notify.asp"  	' 	"./return_Alipay_Notify.asp"	'��������ת��ҳ�� Ҫ�� http://��ʽ������·��, ����http://www.alipay.com/alipay/return_Alipay_Notify.asp  ע���ļ�λ������д��ȷ��
	'���ʹ����Alipay_Notify.asp����return_Alipay_Notify.asp�������������ļ��������Ӧ�ĺ��������ID�Ͱ�ȫУ����
	
	logistics_fee	   = "0.00"			'�������ͷ���
	logistics_payment  = "BUYER_PAY"	'�������ͷ��ø��ʽ��SELLER_PAY(����֧��)��BUYER_PAY(���֧��)��BUYER_PAY_AFTER_RECEIVE(��������)
	logistics_type	   = "EXPRESS"		'�������ͷ�ʽ��POST(ƽ��)��EMS(EMS)��EXPRESS(�������)
	'�������������Ϣ����������logistics_fee_1,logistics_payment_1,logistics_type_1,logistics_fee_2,logistics_payment_2,logistics_type_2
	'���⻹����alipayto/alipayto.asp��Ӧλ����ӡ�
	 	 
'��½ www.alipay.com ��, ���̼ҷ���,���Կ���֧������ȫУ����ͺ���id,������������ 
%>
