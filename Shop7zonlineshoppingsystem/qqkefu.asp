<%
Set rssetup=conn.execute("select * from kefu") 
qqonline=rssetup("qqonline")
adm_qq= rssetup("adm_qq")
adm_qq_name= rssetup("adm_qq_name")
whereqq=rssetup("whereqq")
kefuskin=rssetup("kefuskin")
qqskin=rssetup("qqskin")
qqmsg_on=rssetup("qqmsg_on")
qqmsg_off=rssetup("qqmsg_off")
set rssetup=nothing
%>
<%
'此文件不需要作任何修改
if adm_qq<>"" and qqonline=1 then
adm_qq=replace(adm_qq,"，",",")
if isnull(adm_qq_name) or adm_qq_name="" then adm_qq_name=adm_qq
adm_qq_name=replace(adm_qq_name,"，",",")
QQ_NAME=split(adm_qq_name,",")
QQ=split(adm_qq,",")
for N=0 to UBound(QQ)
MyQQ=MyQQ+QQ(N)+":"
next
%>
<script language="javascript">
var online= new Array();
</script>
<script src="http://webpresence.qq.com/getonline?Type=1&<%=Myqq%>"></script>
<link rel="stylesheet" type="text/css" href="images/service.css"/>
<style type="text/css">
.custom_style_02 .content_box { width:130px; _width:129px; background:none; }
.custom_style_02 .content_title { height:45px; background:url(images/service/custom_style_02.gif) no-repeat 0 -100px; }
.custom_style_02 .content_list { background:url(images/service/custom_style_02.gif) repeat-y -266px 0; padding:5px 8px; }
.custom_style_02 .content_list .qqserver p span { display:none;}
.custom_style_02 .content_bottom { height:15px; background:url(images/service/custom_style_02.gif) no-repeat 0 -147px; }
.custom_style_02 .close_btn { right:6px; top:5px;}
.custom_style_02 .close_btn, .custom_style_02 .close_btn a { width:18px; height:18; background:url(images/service/custom_style_02.gif) no-repeat -122px -52px; }
.custom_style_02 .close_btn a:hover { background-position:-122px -52px; }
.custom_style_02 .show_btn { width:23px; height:80px; background:url(images/service/custom_style_02.gif) no-repeat 0 0;  }
</style>

<script type="text/javascript" src="images/jquery.fixed.1.5.1.js"></script>
<script language="javascript">
//must window loading,don't use the document loading
$(window).load(function(){
		
	//悬浮客服
	$("#fixedBox").fix({
		position 		: "right",	//悬浮位置 - left或right
		//horizontal  	: 50,		//水平方向的位置 - 默认为数字
		//vertical    	: 100,      //垂直方向的位置 - 默认为null
		halfTop     	: true,	    //是否垂直居中位置
		//minStatue     : false,	//是否最小化
		//hideCloseBtn 	: false,	//是否隐藏关闭按钮
		//skin 			: "blue",	//皮肤
		showBtnWidth 	: 23,       //show_btn_width
		contentBoxWidth : 130		//side_content_width
	});

});
</script>
<div class="fixed_box custom_style_02" id="fixedBox">
    <div class="content_box">
        <div class="content_inner">
        	<div class="close_btn"><a title="关闭"><span>关闭</span></a></div>
            <div class="content_title"><span>客服中心</span></div>
            <div class="content_list">            	
                <div class="qqserver">
				<table width=108 border=0 bgcolor=#FFFFFF >

				<%qname=split(adm_qq_name,",")
qq=split(adm_qq,",")
 for i=0 to Ubound(QQ)
 %>
 
				 <script>
if (online[<%=i%>]==0)
document.write("<tr><td align=left><a  target=blank href='tencent://message/?uin=<%=qq(i)%>&Site=<%=weburl%>&Menu=yes'><img alt='<%=qqmsg_off%>' src=images/QQoff<%=qqskin%>.gif border=0 align=middle></a></td><td><a class='c'  href='tencent://message/?uin=<%=qq(i)%>&Site=<%=weburl%>&Menu=yes' alt='<%=qqmsg_off%>'><%=qname(i)%></a></td></tr>");
else
document.write("<tr><td align=left><a target=blank href='tencent://message/?uin=<%=qq(i)%>&Site=<%=weburl%>&Menu=yes'><img alt='<%=qqmsg_on%>' src=images/QQon<%=qqskin%>.gif border=0 align=middle></a></td><td><a class='b'href='tencent://message/?uin=<%=qq(i)%>&Site=<%=weburl%>&Menu=yes' alt='<%=qqmsg_on%>'><%=qname(i)%></a></td></tr>");
</script >       
                 <%next%>
				 </TR></TBODY></TABLE></TD></TR>
                    </table>
                </div>               
               
                   <img  src="mobile.png">
                 <div class="msgserver">
                    <p><a href="Message.asp">给我们留言</a></p>
                </div>
            </div>
            <div class="content_bottom"></div>
        </div>
    </div>
    <div class="show_btn"><span>展开客服</span></div>
</div>
<%end if %>
