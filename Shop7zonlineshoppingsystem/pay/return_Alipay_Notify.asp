<%
	'名称：付完款后跳转的页面
	'功能：同服务器返回功能，但容易出现掉单。
	'版本：2.0
	'日期：2008-10-24
	'作者：支付宝公司销售部技术支持团队
	'联系：0571-26888888
	'版权：支付宝公司
%>
<!--#include file="conn.asp"-->
<!--#include file="alipayto/alipay_payto.asp"-->
<%
	out_trade_no	=Request("out_trade_no")        '获取定单号
    total_fee		=Request("total_fee")           '获取支付的总价格
	receive_name    = Request("receive_name")       '获取收货人姓名
	receive_address = Request("receive_address")    '获取收货人地址
	receive_zip     = Request("receive_zip")        '获取收货人邮编
	receive_phone   = Request("receive_phone")      '获取收货人电话
	receive_mobile  = Request("receive_mobile")     '获取收货人手机
	trade_status    = Request("trade_status")       '获取交易状态
	'如需获取其它参数，可填写 参数 =DelStr(Request.Form("获取参数名"))

'*********************判断消息是不是支付宝发出*************************
alipayNotifyURL = "http://notify.alipay.com/trade/notify_query.do?"
alipayNotifyURL = alipayNotifyURL &"partner=" & partner & "&notify_id=" & request("notify_id")
	Set Retrieval = Server.CreateObject("Msxml2.ServerXMLHTTP.3.0")
    Retrieval.setOption 2, 13056 
    Retrieval.open "GET", alipayNotifyURL, False, "", "" 
    Retrieval.send()
    ResponseTxt = Retrieval.ResponseText
	Set Retrieval = Nothing
'**********************************************************************

'************获取支付宝GET过来通知消息,判断消息是不是被修改过**********
For Each varItem in Request.QueryString
	mystr=varItem&"="&Request(varItem)&"^"&mystr
Next 
If mystr<>"" Then 
	mystr=Left(mystr,Len(mystr)-1)
End If 
mystr = SPLIT(mystr, "^")
Count=ubound(mystr)
'对参数排序
For i = Count TO 0 Step -1
	minmax = mystr( 0 )
	minmaxSlot = 0
	For j = 1 To i
		mark = (mystr( j ) > minmax)
		If mark Then 
			minmax = mystr( j )
			minmaxSlot = j
		End If 
	Next
	If minmaxSlot <> i Then 
		temp = mystr( minmaxSlot )
		mystr( minmaxSlot ) = mystr( i )
		mystr( i ) = temp
	End If
Next
'构造md5摘要字符串
For j = 0 To Count Step 1
	value = SPLIT(mystr( j ), "=")
	If  value(1)<>"" And value(0)<>"sign" And value(0)<>"sign_type"  Then
		If j=Count Then
			md5str= md5str&mystr( j )
		Else 
			md5str= md5str&mystr( j )&"&"
		End If 
	End If 
Next
md5str=md5str&key
mysign=md5(md5str)
'*********************************************************************


'************************可在此添加数据库操作*************************

If mysign=Request("sign") and ResponseTxt="true"   Then 
	pay_sql="update x_bill set paystat='买家付款成功,等待卖家发货' where billno='"&out_trade_no&"' "
	conn.execute(pay_sql)	
	response.write "<br><div align=center>通过 支付宝 付款成功。我们将尽快与您联系及发货。谢谢！如果您已注册成本站会员，<a href='../order_list.asp'>点击这里查看订单</a></div>"      '这里可以指定你需要显示的内容
Else
	response.write "跳转失败。<a href='../orderjs3.asp?billno="&out_trade_no&"'>请点击这里重新进行支付。</a>"          '这里可以指定你需要显示的内容
End If 
	
'*********************************************************************


Function DelStr(Str)
	If IsNull(Str) Or IsEmpty(Str) Then
		Str	= ""
	End If
	DelStr	= Replace(Str,";","")
	DelStr	= Replace(DelStr,"'","")
	DelStr	= Replace(DelStr,"&","")
	DelStr	= Replace(DelStr," ","")
	DelStr	= Replace(DelStr,"　","")
	DelStr	= Replace(DelStr,"%20","")
	DelStr	= Replace(DelStr,"--","")
	DelStr	= Replace(DelStr,"==","")
	DelStr	= Replace(DelStr,"<","")
	DelStr	= Replace(DelStr,">","")
	DelStr	= Replace(DelStr,"%","")
End Function
%>