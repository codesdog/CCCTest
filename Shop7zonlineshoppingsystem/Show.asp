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
<link href="i.css" type=text/css rel=stylesheet>
<style type="text/css">
<!--

.style1 {font-size: 14px}
.style12 {color: #990000}
.style11 {
	font-size: 14px;
	color: #666666;
	font-weight: bold;
}

.colorcss{
BORDER: #666666 1px solid; BACKGROUND-COLOR: #eeeee1;width:45px; height:23px; padding:0px; margin-bottom: 5px; FONT-SIZE: 10pt;
}

.psizecss{
BORDER: #666666 1px solid; BACKGROUND-COLOR: #eeeee1;width:45px; height:23px; padding:0px; margin-bottom: 5px; FONT-SIZE: 10pt;
}
-->
</style>
<style type="text/css">
 .Numinput{padding:0 20px 0 0;position:relative;height:20px;}
 .Numinput input{font-size:12px;width:24px;height:15px;line-height:15px;}
 
 .Numinput .numadjust{position:absolute;width:18px;height:9px;right:1px;overflow:hidden;background-image:url(images/numadjust.gif);background-repeat:no-repeat;cursor:pointer;}
 
 
 .Numinput .numadjust.increase{background-position:0 0;top:0;}
 .Numinput .numadjust.increase.active{background-position:0 -20px;}
 .Numinput .numadjust.decrease{background-position:0 -10px;bottom:0;}
 .Numinput .numadjust.decrease.active{background-position:0 -30px;}

</style>

<%
sub subsel(inname,invalue)
	if invalue<>"" then
		arr=split(invalue,"��")
		if Ubound(arr)=1 then one="selected"
		for i=0 to Ubound(arr)
			if arr(i)<>"" then
				if inname="color" then
					response.write "<input type='button' id='colorbott"&i&"'  value='"&arr(i)&"' class='colorcss' onclick=""colorchoose('colorbott"&i&"')"">&nbsp;"
				elseif inname="psize" then
					response.write "<input type='button' id='psizebott"&i&"'  value='"&arr(i)&"' class='psizecss' onclick=""psizechoose('psizebott"&i&"')"">&nbsp;"
				else
				end if
			end if
		next
	end if
end sub
%>
<SCRIPT LANGUAGE="JavaScript">
var previousTr = ""; 
function colorchoose(eleName) 
{  
  if(previousTr  != "" && document.getElementById(previousTr) != null){ 
        document.getElementById(previousTr).style.background = "#eeeee1"; 
    } 
  document.getElementById(eleName).style.background = "#ff6600"; 
  previousTr  = eleName; 
  document.all.color.value = document.getElementById(eleName).value; 
} 

var previousTr2 = ""; 
function psizechoose(eleName) 
{  
  if(previousTr2  != "" && document.getElementById(previousTr2) != null){ 
        document.getElementById(previousTr2).style.background = "#eeeee1"; 
    } 
  document.getElementById(eleName).style.background = "#ff6600"; 
  previousTr2  = eleName; 
  document.all.psize.value = document.getElementById(eleName).value+"��"; 
} 

</SCRIPT>


<script src="CJL.0.1.min.js"></script>
<script src="ImageZoom.js"></script>
<script>
ImageZoom._MODE = {
	//����
	"follow": {
		methods: {
			init: function() {
				this._stylesFollow = null;//������ʽ
				this._repairFollowLeft = 0;//��������left
				this._repairFollowTop = 0;//��������top
			},
			load: function() {
				var viewer = this._viewer, style = viewer.style, styles;
				this._stylesFollow = {
					left: style.left, top: style.top, position: style.position
				};
				viewer.style.position = "absolute";
				//��ȡ��������
				if ( !viewer.offsetWidth ) {//����
					styles = { display: style.display, visibility: style.visibility };
					$$D.setStyle( viewer, { display: "block", visibility: "hidden" });
				}
				//��������λ��
				this._repairFollowLeft = viewer.offsetWidth / 2;
				this._repairFollowTop = viewer.offsetHeight / 2;
				//����offsetParentλ��
				if ( !/BODY|HTML/.test( viewer.offsetParent.nodeName ) ) {
					var parent = viewer.offsetParent, rect = $$D.rect( parent );
					this._repairFollowLeft += rect.left + parent.clientLeft;
					this._repairFollowTop += rect.top + parent.clientTop;
				}
				if ( styles ) { $$D.setStyle( viewer, styles ); }
			},
			repair: function(e, pos) {
				var zoom = this._zoom,
					viewerWidth = this._viewerWidth,
					viewerHeight = this._viewerHeight;
				pos.left = ( viewerWidth / 2 - pos.left ) * ( viewerWidth / zoom.width - 1 );
				pos.top = ( viewerHeight / 2 - pos.top ) * ( viewerHeight / zoom.height - 1 );
			},
			move: function(e) {
				var style = this._viewer.style;
				style.left = e.pageX - this._repairFollowLeft + "px";
				style.top = e.pageY - this._repairFollowTop + "px";
			},
			dispose: function() {
				$$D.setStyle( this._viewer, this._stylesFollow );
			}
		}
	},
	//�ϱ�
	"handle": {
		options: {//Ĭ��ֵ
			handle:		""//�ϱ�����
    	},
		methods: {
			init: function() {
				var handle = $$( this.options.handle );
				if ( !handle ) {//û�ж���Ļ��ø�����ʾ�����
					var body = document.body;
					handle = body.insertBefore(this._viewer.cloneNode(false), body.childNodes[0]);
					handle.id = "";
					handle["_createbyhandle"] = true;//���ɱ�ʶ�����Ƴ�
				} else {
					var style = handle.style;
					this._stylesHandle = {
						left: style.left, top: style.top, position: style.position,
						display: style.display, visibility: style.visibility,
						padding: style.padding, margin: style.margin,
						width: style.width, height: style.height
					};
				}
				$$D.setStyle( handle, { padding: 0, margin: 0, display: "none" } );
				
				this._handle = handle;
				this._repairHandleLeft = 0;//��������left
				this._repairHandleTop = 0;//��������top
			},
			load: function() {
				var handle = this._handle, rect = this._rect;
				$$D.setStyle( handle, {
					position: "absolute",
					width: this._rangeWidth + "px",
					height: this._rangeHeight + "px",
					display: "block",
					visibility: "hidden"
				});
				//��ȡ��������
				this._repairHandleLeft = rect.left + this._repairLeft - handle.clientLeft;
				this._repairHandleTop = rect.top + this._repairTop - handle.clientTop;
				//����offsetParentλ��
				if ( !/BODY|HTML/.test( handle.offsetParent.nodeName ) ) {
					var parent = handle.offsetParent, rect = $$D.rect( parent );
					this._repairHandleLeft -= rect.left + parent.clientLeft;
					this._repairHandleTop -= rect.top + parent.clientTop;
				}
				//����
				$$D.setStyle( handle, { display: "none", visibility: "visible" });
			},
			start: function() {
				this._handle.style.display = "block";
			},
			move: function(e, x, y) {
				var style = this._handle.style, scale = this._scale;
				style.left = Math.ceil( this._repairHandleLeft - x / scale ) + "px";
				style.top = Math.ceil( this._repairHandleTop - y / scale )  + "px";
			},
			end: function() {
				this._handle.style.display = "none";
			},
			dispose: function() {
				if( "_createbyhandle" in this._handle ){
					document.body.removeChild( this._handle );
				} else {
					$$D.setStyle( this._handle, this._stylesHandle );
				}
				this._handle = null;
			}
		}
	},
	//�и�
	"cropper": {
		options: {//Ĭ��ֵ
			opacity:	.5//͸����
    	},
		methods: {
			init: function() {
				var body = document.body,
					cropper = body.insertBefore(document.createElement("img"), body.childNodes[0]);
				cropper.style.display = "none";
				
				this._cropper = cropper;
				this.opacity = this.options.opacity;
			},
			load: function() {
				var cropper = this._cropper, image = this._image, rect = this._rect;
				cropper.src = image.src;
				cropper.width = image.width;
				cropper.height = image.height;
				$$D.setStyle( cropper, {
					position: "absolute",
					left: rect.left + this._repairLeft + "px",
					top: rect.top + this._repairTop + "px"
				});
			},
			start: function() {
				this._cropper.style.display = "block";
				$$D.setStyle( this._image, "opacity", this.opacity );
			},
			move: function(e, x, y) {
				var w = this._rangeWidth, h = this._rangeHeight, scale = this._scale;
				x = Math.ceil( -x / scale ); y = Math.ceil( -y / scale );
				this._cropper.style.clip = "rect(" + y + "px " + (x + w) + "px " + (y + h) + "px " + x + "px)";
			},
			end: function() {
				$$D.setStyle( this._image, "opacity", 1 );
				this._cropper.style.display = "none";
			},
			dispose: function() {
				$$D.setStyle( this._image, "opacity", 1 );
				document.body.removeChild( this._cropper );
				this._cropper = null;
			}
		}
	}
}

ImageZoom.prototype._initialize = (function(){
	var init = ImageZoom.prototype._initialize,
		mode = ImageZoom._MODE,
		modes = {
			"follow": [ mode.follow ],
			"handle": [ mode.handle ],
			"cropper": [ mode.cropper ],
			"handle-cropper": [ mode.handle, mode.cropper ]
		};
	return function(){
		var options = arguments[2];
		if ( options && options.mode && modes[ options.mode ] ) {
			$$A.forEach( modes[ options.mode ], function( mode ){
				//��չoptions
				$$.extend( options, mode.options, false );
				//��չ����
				$$A.forEach( mode.methods, function( method, name ){
					$$CE.addEvent( this, name, method );
				}, this );
			}, this );
		}
		init.apply( this, arguments );
	}
})();

</script>
<style type="text/css">
.list{ padding-right:4px;}
.list img{width:60px; cursor:pointer; padding:1px; border:1px solid #cdcdcd; margin-bottom:10px; display:block;}
.list img.onzoom, .list img.on{padding:1px; border:1px solid #336699;}

.container{ position:relative;}

.izImage2{ width:350px; border:1px solid #cccccc; z-index:80;}
.izViewer2{width:300px;height:280px;position:absolute;left:360px;top:0; display:none; border:1px solid #999;} /* �Ŵ�Ŀ� */

.handle2{display:none;opacity:0.6;filter:alpha(opacity=60);background:#E6EAF3; cursor:crosshair;}
</style>	

</head>

<body>
<!-- #include file="head.asp" -->
<TABLE width="960" border=0 align="center" cellPadding=0 cellSpacing=0 bgcolor="#FFFFFF">
  <tr>
    <td> 



<table width="960" height="352" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
    <td width="212" height="150" valign="top">
		<!-- #include file="inc_left_all.asp" -->
      </td>
    <td width="748" valign="top">
	<table width="99%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height=2></td>
      </tr>
    </table>
            <TABLE width="740" border=0 align="center" cellPadding=0 cellSpacing=2 class=a1>
              <TBODY>
          <TR>
            <TD height=30 colSpan=3><TABLE width="100%" border=0 cellPadding=0 cellSpacing=0 background="images/bg4.gif">
<TBODY>
                <TR>
                  <TD width=36 
                            height=30 background=images/hotnewpro.gif>������</TD>
                  <TD width="629"><span ><a href="index.asp">��ҳ</a> - <a href="productlist.asp">��Ʒ�б�</a> - ��Ʒ��ϸ��</span></TD>
                  <TD width=71><a href="javascript:window.history.back()">&lt;&lt; ����</a></TD>
                </TR>
              </TBODY>
            </TABLE></TD>
          </TR>
		  </tbody>
		  </table>
            <TABLE width="740" 
border=0 align="center" cellPadding=0 cellSpacing=0>
              <TBODY>
                <TR> 
                  <TD width=547 
                            height=50 background=images/buystep0.jpg> 
<table width="538" border="0" cellspacing="0" cellpadding="0">
<tr> 
                        <td width="193" height="22">&nbsp;</td>
                        <td width="113"> 
                          <div align="center"><strong><font color="#FFFFFF">�����Ʒ</font></strong></div></td>
                        <td width="112"> 
                          <div align="center">���ﳵ</div></td>
                        <td width="120"> 
                          <div align="center">����</div></td>
                      </tr>
                  </table></TD>
                  <TD width="134">&nbsp;</TD>
                  <TD width=59>&nbsp;</TD>
                </TR>
              </TBODY>
            </TABLE>
            <%
dim pkid,model,productname,smallpicpath,price1,price2,pipai

pkid=request("pkid")
sql="select  * from view_product where pkid = "&pkid

set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
if rs.bof or rs.eof then
	response.write "û����Ʒ��¼��"
else

		pkid=rs("pkid")
		model=rs("model")
		productname=rs("productname")
		smallpicpath=rs("smallpicpath")
		bigpicpath=rs("bigpicpath")
	
		price1=rs("price1")
		price2=rs("price"&session("customkind"))
		pipai=rs("pipai")
		kindname=rs("kindname")
		disc=rs("disc")
		color=rs("color")
		psize=rs("psize")
		hit=rs("hit")
		saleshu=rs("saleshu")
		addtime=rs("addtime")
		kuchushu=rs("kuchushu")
		oneweight=rs("oneweight")
		punit=rs("punit")
		selt1=rs("selt1")
		
		allpic=bigpicpath&"|"&bigpicpath2&"|"&bigpicpath3&"|"&bigpicpath4&"|"&bigpicpath5
		
		if disc<>"" then
			'disc = replace(disc,vbcrlf,"<br>")
			'disc = replace(disc,"shop/","")    '���������ù����ļ���
			'disc = replace(disc," ","&nbsp;")
			'disc = replace(disc,"IMG&nbsp;src=","IMG src=")
			'disc = replace(disc,"&nbsp;border="," border=")
		end if
		'---------���µ������begin---------
		conn.execute("update e_product set hit=hit+1 where pkid="&pkid)
		'---------���µ������end-----------
		
		'---------��¼���������Ʒbegin-----
		haveshow=request.cookies("haveshow")
		haveshow="," & haveshow & ","
		haveshow = replace(haveshow,","& pkid &",","")
		haveshow = pkid &","& haveshow
		haveshow = replace(haveshow,",,",",")
		haveshow = replace(haveshow,",,",",")
		response.cookies("haveshow")=left(haveshow,150)
		response.cookies("haveshow").Expires="2020-12-31"
		'response.write haveshow
		'---------��¼���������Ʒend--------
%>

		    <TABLE width=740 border=0 align="center" cellPadding=2 cellSpacing=0><TBODY>
              <TR> 
                <TD colSpan=2 height="8"></TD>
              </TR>
              <TR> 
                <TD width=420 align=left vAlign=top> 
<div style="color:#808080; font-size:14px;padding-top:1px;padding-bottom:6px; font-weight:bold"><%=productname%></div>

		  
<table>
	<tr>
		<td valign="top"><div id="idList" class="list"> </div></td>
		<td valign="top">
			<div class="container" style="z-index:6"> 
		        <img id="idImage2" class="izImage2" />
				<div id="idViewer2" class="izViewer2"></div> <!-- �Ŵ�Ŀ� -->
			</div>
		</td>
	</tr>
</table>
<div id="idHandle3" class="handle2"  style="z-index:99"></div> <!-- �Ŵ��ͼ -->




				  
				  </TD>
                <TD width="320" align=left vAlign=top style="padding-top:5px;padding-left:3px;"> 
				<TABLE width=315 border=0 cellPadding=0 cellSpacing=0 style="BORDER-RIGHT: #cccccc 0px solid; BORDER-TOP: #cccccc 0px solid; BORDER-LEFT: #cccccc 0px solid; BORDER-BOTTOM: #cccccc 0px solid">
					<TBODY>
                      <TR align=left> 
                        <TD height="95" valign="top" style="PADDING-LEFT: 8px;PADDING-top: 22px; line-height:180%;"> 
                          ��Ʒ���<B><%=kindname%></B><br>
						  ��Ʒ���ƣ�<font style="font-size:14px;color:#CC6600"><%=productname%></font><br>
                          ��Ʒ��ţ�<b><%=model%></b> <br>

						  ��Ʒ��λ��<b><%=punit%></b><BR>
						  <%if cstr(oneweight)>"0" then%>
                          ��Ʒ������<B><%=oneweight%></B> ��<BR>
						  <%end if%>
						  <%if s_kuchu="��" then%>
                          ���������<B><%=kuchushu%></B><BR>
						  <%end if%>
						  ���������<B><%=hit%></B><BR>
						  ����������<B><%=saleshu%></B><BR>
						  ����ʱ�䣺<%=addtime%><BR>
                          </TD>
                      </TR>
                      <TR align=middle> 
                        <TD height="13"><HR 
                  style="BORDER-RIGHT: #999999 1px dotted; BORDER-TOP: #999999 1px dotted; BORDER-LEFT: #999999 1px dotted; BORDER-BOTTOM: #999999 1px dotted" width=300 noShade SIZE=1> 
                        </TD>
                      </TR>
                      <TR align=left> 
                        <TD height="50" vAlign=center style="PADDING-LEFT: 8px; COLOR: #666666; "> 
                          <font style="width:80px;">�г��ۣ�</font><FONT class='oldprice'><del>��<%=price1%></del></FONT> <BR>
						  <FONT color=#ff0000 style="width:80px;"><%=session("customkindname")%>�ۣ�</font><font class='nowprice'>��<%=price2%></font></TD>
                      </TR>
                     
					  </TBODY>
				    </table>
				<TABLE width=315 border=0 cellPadding=0 cellSpacing=0 style="padding:4px;BORDER-RIGHT: #dddddd 1px solid; BORDER-TOP: #dddddd 1px solid; BORDER-LEFT: #dddddd 1px solid; BORDER-BOTTOM: #dddddd 1px solid;BACKGROUND-COLOR: #fcfcfc;">
					<TBODY>
                    <form name="formshow" action="?tk=shop7z" method="post" onSubmit="return Juge()">
					<%
					if s_colorsize="��" then
						if color<>"" then
					%>
					<%
					  	end if
						if psize<>"" then
					%>
					<%
						end if
						if color<>"" or  psize<>"" then
					%>
					<%
						end if
					end if
					%>
                      <TR align=left> 
                        <TD width="100%" height="41" vAlign=center style="PADDING-LEFT: 8px; COLOR: #666666">
						<table border=0 cellPadding=0 cellSpacing=0><tr><td>
                        <div class="Numinput" style="z-index:3">
						����������
						<input type="text" name="num" id=num size="7" value=1 style="WIDTH: 40px;height:21px;font-weight:bold; font-size:12pt; padding-top:2px;padding-left:3px;background-color:#FFFFFF;FONT-FAMILY: 'Century Gothic';"/>
						<span  class="numadjust increase" onClick="document.all.num.value=parseFloat(document.all.num.value)+1"></span>
						<span  class="numadjust decrease" onClick="if(parseFloat(document.all.num.value)>1){document.all.num.value=parseFloat(document.all.num.value)-1}"></span>						</div>
						</td>
						<td>&nbsp;&nbsp;
						<INPUT type="hidden" value="<%=request("pkid")%>" name="pkid"> 
                        <input type="image" name="Submit" value="Submit" src="images/gouwu.gif" style="height:27px;width:108x;BORDER:0px; vertical-align:top;; ">						</td></tr></table>                        </TD>
                      </TR>
                    </form>
				    </table><!-- Baidu Button BEGIN -->
<div id="bdshare" class="bdshare_t bds_tools_32 get-codes-bdshare">
<a class="bds_qzone"></a>
<a class="bds_tsina"></a>
<a class="bds_tqq"></a>
<a class="bds_renren"></a>
<a class="bds_t163"></a>
<span class="bds_more"></span>
<a class="shareCount"></a>
</div>
<script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=0" ></script>
<script type="text/javascript" id="bdshell_js"></script>
<script type="text/javascript">
document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)
</script>
<!-- Baidu Button END -->
				<TABLE width=315 border=0 cellPadding=0 cellSpacing=0 style="BORDER-RIGHT: #cccccc 0px solid; BORDER-TOP: #cccccc 0px solid; BORDER-LEFT: #cccccc 0px solid; BORDER-BOTTOM: #cccccc 0px solid">
					<div style="width:310px;text-align:left;"><a href='zoom.asp?pkid=<%=pkid%>&allpic=<%=Server.URLEncode(allpic)%>&productname=<%=Server.URLEncode(productname)%>' target='_blank'><IMG src="images/zoom.gif" border=0 align="absmiddle"></a>&nbsp;&nbsp <a href="javascript:window.external.AddFavorite('http://#<%=request.ServerVariables("SCRIPT_NAME")%>?<%=request.serverVariables("Query_string")%>', '<%=application("sitename")%>-<%=productname%>')"><img src="images/button-shoucang.gif" border="0"></a></div>
                  </TABLE></TD>
              </TR>
              <TR> 
                <TD colSpan=2 height="3"></TD>
              </TR>
              <TR> 
                <TD style="BACKGROUND-REPEAT: repeat-x" background=images/talbe_2_back.jpg colSpan=2 height=1></TD>
              </TR>
			  </TBODY>
			  </table>

<script language="JavaScript">
<!--
function Juge()
{
<%if s_colorsize="��" and color<>"" then%>
	if (formshow.color.value == "")
	{
		alert("��ѡ����ɫ!");
		document.formshow.color.focus();
		return false;
	}
<%end if
if s_colorsize="��" and psize<>"" then%>
	if (formshow.psize.value == "")
	{
		alert("��ѡ�����!");
		document.formshow.psize.focus();
		return false;
	}
<%end if%>
}
//-->
</script>
<%  action=request("tk")
if action="shop7z" then 
pkid=request("pkid")
num=request("num")
if isnumeric(num) and not isnull(num) then
	num=abs(num) 
else
	num="1"
end if
if request.Cookies("notemp")="" then
	mytime=now()
	myyear=right(year(mytime),2)
	mymonth=month(mytime)
	myday=day(mytime)
	myhour=hour(mytime)
	myminute=minute(mytime)
	mysec=second(mytime)
	if cint(mymonth)<10 then
		mymonth="0"&mymonth
	end if
	if cint(myday)<10 then
		myday="0"&myday
	end if
	dim num1
	dim rndnum
	Randomize
	Do While Len(rndnum)<4
		num1=CStr(Chr((57-48)*rnd+48))
		rndnum=rndnum&num1
	loop
	billno=myyear&mymonth&myday&myhour&myminute&mysec&"-"&rndnum
	response.Cookies("notemp")=billno
end if
if pkid<>"" then
	sql="insert into x_order(notemp,pkid,num) values('"&request.Cookies("notemp")&"','"&pkid&"','"&num&"')"
	conn.execute(sql)
end if
conn.close
set conn=nothing
response.Redirect("order_all.asp")
End if 
%>
	
<!--������ϸ��Ϣ������-->
			<br>
		    <TABLE width=740 border=0 align="center" cellPadding=1 cellSpacing=0>
              <TR> 
                <TD colSpan=2 height="5"></TD>
              </TR>
              <TR> 
                <TD colSpan=2 height=20> 
				
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 style="BORDER: #cccccc 1px solid;">
                      <TR> 
                        <TD  valign="top">
							 <TABLE cellSpacing=0 cellPadding=0 width="740" border=0 bgcolor="#eeeeee">
								  <TR style="text-align:center;"> 
									<TD height=27 width=100 bgcolor="#ffffff" id=but1  style="border-right:1px solid #cccccc"><A HREF="javascript:void(0)" onClick="OnClickColor('1');"><b>��Ʒ��ϸ</b></a></TD>
									<TD width=100 id=but2><A HREF="javascript:void(0)" onClick="OnClickColor('2');"><b>��Ʒ����</b></a></TD>
									<TD width=100 id=but3><A HREF="javascript:void(0)" onClick="OnClickColor('3');"><b>��������</b></a></TD>
									<TD width=440>&nbsp;</TD>
								  </TR>
							  </TABLE>
								<SCRIPT LANGUAGE="JavaScript">
								var previous = "1"; 
								
								function OnClickColor(eleName) 
								{  
								  if(previous  != "" && document.getElementById("but"+previous) != null){  
										document.getElementById("but"+previous).style.background = "#eeeeee";  
										document.getElementById("tab"+previous).style.display="none"; 
									} 
								  document.getElementById("but"+eleName).style.background = "#ffffff"; 
								  document.getElementById("but"+eleName).style.borderRight="1px solid #cccccc";
								  document.getElementById("tab"+eleName).style.display="block";
								  
								  previous  = eleName; 
								} 
								
								</SCRIPT>


							 <!-- ��ϸbegin -->
							 <TABLE cellSpacing=0 cellPadding=10 width="740" height="240" border=0 align="center"  id=tab1>
								  <TR> 
									<TD align=left style="WIDTH: 700; WORD-WRAP:break-word;" valign="top"><%=disc%> <p>&nbsp;</p></TD>
								  </TR>
							  </TABLE>
							<!-- ��ϸend -->


							<!-- ����begin -->
							<table width="100%" border="0" cellpadding="4" cellspacing="1"  id=tab2 style='display:none'>
								<tr>
									<td height="230" bgcolor="#FFFFFF"  valign="top"> 
									<table width="100%" border="0" cellspacing="0" cellpadding="1">
									<tr>
											<td><strong>��Ʒ���ۣ�</strong></td>
									</tr>
									</table>
									<%
									dim mr
										sql="select * from z_pijia where productid="&request.querystring("pkid")&" and check='1' order by id desc"
										set rsp=server.CreateObject("adodb.recordset")
										rsp.open sql,conn,1,1
										if rsp.bof or rsp.eof then
											response.write "<div align=left>��ʱû�д˲�Ʒ�����ۼ�¼��</div>"
										else
											mr=1
											do while not rsp.eof
												set yourname=rsp("yourname")
												set tel=rsp("tel")
												set memo=rsp("memo")
												set rememo=rsp("rememo")
												set addtime=rsp("addtime")
												if memo<>"" then
												memo = replace(memo,vbcrlf,"<br>")
												memo = replace(memo," ","&nbsp;")
												end if
												if rememo<>"" then
												rememo = replace(rememo,vbcrlf,"<br>")
												rememo = replace(rememo," ","&nbsp;")
												end if
									%>
								  
										<table width="100%" border="0" cellspacing="2" cellpadding="0" class="border" >
										  <tr> 
											<td width="17%" height="23" bgcolor="#f7f7f7"> <div align="right"> ������</div></td>
											<td width="26%"><%=yourname%>&nbsp; </td>
											<td width="17%" bgcolor="#f7f7f7"> <div align="right">��ϵ��ʽ��</div></td>
											<td width="40%"><%=tel%></td>
										  </tr>
										  <tr> 
											<td height="23" bgcolor="#f7f7f7"> <div align="right">�������ݣ�</div></td>
											<td colspan="3" style="WIDTH: 450; WORD-WRAP: break-word"><%=memo%>&nbsp;[<%=addtime%>]</td>
										  </tr>
										  <tr> 
											<td height="25" bgcolor="#f7f7f7"> <div align="right"><font color="#CC0033">������Ա�ظ�����</font></div></td>
											<td colspan="3"  style="WIDTH: 450; WORD-WRAP: break-word"><%=rememo%>&nbsp;</td>
										  </tr>
										</table>
										<table width="100%" border="0" cellspacing="0">
										  <tr> 
											<td height="5"></td>
										  </tr>
										</table>
						  		<%
									mr=mr+1
									rsp.movenext
									loop
								end if
								rsp.close
								set rsp=nothing
								session("pijia")="1"
						  		%>  
				
								
								</td>
								</tr>
							</table>
							<!-- ����end -->

							<!-- ��������begin -->
							<table width="100%" border="0" cellpadding="4" cellspacing="1"  id=tab3 style='display:none'>
							  <form name="Form2" method="post" action="pijia.asp" onSubmit="return Jugepijia()">
								<tr> 
									<td height="23"><strong>�������ۣ�</strong></td>
								</tr>
								<tr> 
								<td width="17%" height="28"> <div align="right"> 
								<input type="hidden" name="productid" value="<%=pkid%>">������</div></td>
								  <td width="83%"> <input type="text" name="yourname"></td>
								</tr>
								<tr> 
									<td height="28"> <div align="right">��ϵ��ʽ��</div></td>
								  <td><input name="tel" type="text" size="30">(�����ǵ绰��email��qq��)</td>
								</tr>
								<tr> 
								<td><div align="right">�������ݣ�</div></td>
								  <td><textarea name="memo" cols="50" rows="5"></textarea></td>
								</tr>
								<tr> 
								<td height="30">&nbsp;</td>
								  <td><input type="submit" name="Submit2" value="�ύ����" class='input3'></td>
								</tr>
							  </form>
							</table>
							<script language="JavaScript">
							<!--
							function Jugepijia()
							{
							  if (Form2.memo.value == "")
							  {
								alert("����д��������!");
								document.Form2.memo.focus();
								return false;
							  }
							}
							//-->
							</script>
						  <!-- ��������end -->
						
						</TD>
                      </TR>
                  </TABLE>
				  
				  
                </TD>
              </TR>
            </TABLE>
		 <%	
		end if
		rs.close
		set rs=nothing

		 %>


   </td>
  </tr>
</table>


    </td>
  </tr>

<TR><TD>

</TD></TR>
</table>

<title><%=application("sitename")%> - <%=productname%></title>
<script language="JavaScript">
(function(){
var iz = new ImageZoom( "idImage2", "idViewer2", {
	mode: "handle", handle: "idHandle3", scale: 1.714, delay: 0   //scale: 1.6�Ŵ��� �ϴ�Դͼ600 ��ͼ350    600/350=1.714
});

var arrPic = [], list = $$("idList"), image = $$("idImage2"); 

arrPic.push({ smallPic: "product/<%=bigpicpath%>", originPic: "product/<%=bigpicpath%>", zoomPic: "product/<%=bigpicpath%>" }); 
��
$$A.forEach(arrPic, function(o, i){
	var img = list.appendChild(document.createElement("img"));
	img.src = o.smallPic;
	img.onclick = function(){
		iz.reset({ originPic: o.originPic, zoomPic: o.zoomPic });
		$$A.forEach(list.getElementsByTagName("img"), function(img){  img.className = ""; });
		img.className = "onzoom";
	}
	
	var temp;
	img.onmouseover = function(){ if( !this.className ){ this.className = "on"; temp = image.src; image.src = o.originPic; } }
	img.onmouseout = function(){ if( this.className == "on" ){ this.className = ""; image.src = temp; } }
	
	if(!i){ img.onclick(); }
})
})()
</script>
<!-- #include file="foot.asp" -->
<%
conn.close
set conn=nothing
%>
</body>
</html>

