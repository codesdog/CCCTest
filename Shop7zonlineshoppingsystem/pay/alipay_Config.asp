<!--#include file="conn.asp"-->
<%
    Set rs=server.createobject("adodb.recordset")
	rs.open "select  * from sh_pay1 where id=1",conn,1,1
	
	
	show_url        =rs("self1")     	'商户网站的网址。 
	seller_email	=rs("myaccount")	'请填写签约支付宝账号， 
	partner			=rs("myparentid") 	 	'填写签约支付宝账号对应的partnerID，
	key			    =rs("mykey") 	 		'填写签约账号对应的安全校验码

    notify_url		="http://"&rs("self2")&"/pay/Alipay_Notify.asp"  	' 	"./Alipay_Notify.asp"	        '交易过程中服务器通知的页面 要用 http://格式的完整路径，例如http://www.alipay.com/alipay/Alipay_Notify.asp  注意文件位置请填写正确。
	return_url		="http://"&rs("self2")&"/pay/return_Alipay_Notify.asp"  	' 	"./return_Alipay_Notify.asp"	'付完款后跳转的页面 要用 http://格式的完整路径, 例如http://www.alipay.com/alipay/return_Alipay_Notify.asp  注意文件位置请填写正确。
	'如果使用了Alipay_Notify.asp或者return_Alipay_Notify.asp，请在这两个文件中添加相应的合作身份者ID和安全校验码
	
	logistics_fee	   = "0.00"			'物流配送费用
	logistics_payment  = "BUYER_PAY"	'物流配送费用付款方式：SELLER_PAY(卖家支付)、BUYER_PAY(买家支付)、BUYER_PAY_AFTER_RECEIVE(货到付款)
	logistics_type	   = "EXPRESS"		'物流配送方式：POST(平邮)、EMS(EMS)、EXPRESS(其他快递)
	'如需添加物流信息，可以增加logistics_fee_1,logistics_payment_1,logistics_type_1,logistics_fee_2,logistics_payment_2,logistics_type_2
	'另外还需在alipayto/alipayto.asp对应位置添加。
	 	 
'登陆 www.alipay.com 后, 点商家服务,可以看到支付宝安全校验码和合作id,导航栏的下面 
%>
