<!-- #include file="conn.asp" -->
<!--#include file="check2.asp"-->
<%
s_sql="select s_colorsize from siteshow"
set s_rs=server.createobject("adodb.recordset")
s_rs.open s_sql,conn,1,1
if s_rs.bof or s_rs.eof then
	
else
	s_colorsize=s_rs("s_colorsize")
end if
s_rs.close
set s_rs=nothing
%>

<%
function delstar(picname)
	if picname<>"" then
		delstar=replace(picname,"uploadimages/","")
	else
		delstar=""
	end if
end function

sql="select  * from view_product where pkid="&request("pkid")
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
if rs.bof or rs.eof then
	response.write "û����Ʒ��¼��"
else

		kind=rs("kind")
		kind2=rs("kind2")
		kind_name=rs("kindname")
		model=rs("model")
		productname=rs("productname")
		smallpicpath=rs("smallpicpath")
		bigpicpath=rs("bigpicpath")
		
		price1=rs("price1")
		price2=rs("price2")
		price3=rs("price3")
		price4=rs("price4")
		price5=rs("price5")
		price6=rs("price6")
		pipai=rs("pipai")
		disc=rs("disc")
		color=rs("color")
		psize=rs("psize")

		'fahoudi=rs("fahoudi")
		'kuchumemo=rs("kuchumemo")
		oneweight=rs("oneweight")
		kuchushu=rs("kuchushu")
		addtime=rs("addtime")
		punit=rs("punit")
		'selt1=rs("selt1")

end if
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>�޸���Ʒ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<%


Dim htmlData

htmlData = Request.Form("disc")

Function htmlspecialchars(str)
	str = Replace(str, "&", "&amp;")
	str = Replace(str, "<", "&lt;")
	str = Replace(str, ">", "&gt;")
	str = Replace(str, """", "&quot;")
	htmlspecialchars = str
End Function
%>
<script type="text/javascript" charset="utf-8" src="../kindeditor.js"></script>
	<script type="text/javascript">
		KE.show({
			id : 'disc',
			urlType : 'absolute',
			imageUploadJson : '../../asp/upload_json.asp',
			fileManagerJson : '../../asp/file_manager_json.asp',
			allowFileManager : true
			 
		});
	</script>
<script language=javascript src=../images/mouse.js></script>
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}
//-->
</script>
<script language="JavaScript">
<!--
function Juge()
{
  if (theForm.kind.value == "")
  {
    alert("��ѡ�����.");
    document.theForm.kind.focus();
    return false;
  }
  if (theForm.model.value == "")
  {
    alert("����д�������.");
    document.theForm.model.focus();
    return false;
  }
  if (theForm.productname.value == "")
  {
    alert("����д��������");
    document.theForm.productname.focus();
    return false;
  }
  
  if (theForm.price1.value == "")
  {
    alert("����д�г���");
    document.theForm.price1.focus();
    return false;
  }
  if (theForm.price2.value == "")
  {
    alert("����д��ͨ��Ա��");
    document.theForm.price2.focus();
    return false;
  }
  if (theForm.price3.value == "")
  {
    alert("����дͭ����Ա��");
    document.theForm.price3.focus();
    return false;
  }
  if (theForm.price4.value == "")
  {
    alert("����д������Ա��");
    document.theForm.price4.focus();
    return false;
  }
  if (theForm.price5.value == "")
  {
    alert("����д�𼶻�Ա��");
    document.theForm.price5.focus();
    return false;
  }
  if (theForm.price6.value == "")
  {
    alert("����д�꼶��Ա��");
    document.theForm.price6.focus();
    return false;
  }

  if (isNaN(theForm.oneweight.value))
  {
    alert("��������ҪΪ���֡�");
    document.theForm.price6.focus();
    return false;
  }
}
//-->
</script>

<script language="JavaScript">
<!--
function myprice()
{

  if (theForm.price2.value == "")
  {
    alert("����д��ͨ��Ա��");
    document.theForm.price2.focus();
    return false;
  }
  theForm.price3.value = theForm.price2.value;
  theForm.price4.value = theForm.price2.value;
  theForm.price5.value = theForm.price2.value;
  theForm.price6.value = theForm.price2.value;

}
//-->
</script>
<style>
body,td { font-size: 9pt; color: #000000;font-family: "����"}

.border {
	BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid
}
input {
      	height=20px;BORDER-RIGHT: #999999 1px solid; BORDER-TOP: #999999 1px solid; FONT-SIZE: 9pt; BORDER-LEFT: #999999 1px solid; BORDER-BOTTOM: #999999 1px solid; FONT-FAMILY: "����"; BACKGROUND-COLOR: #ffffff
}
.style1 {
	color: #FF0000;
	font-weight: bold;
	font-size: 14pt;
}
body {
	margin-top: 5px;
	margin-left: 10px;
}
#tabcss{
	BORDER-COLLAPSE: collapse;
	border-top-width: 1px;
	border-left-width: 1px;
	border-top-style: solid;
	border-left-style: solid;
	border-top-color: #dddddd;
	border-left-color: #dddddd;
}
#tabcss td {
	line-height: 24px;
	padding-left: 3px;
	padding-top: 2px;
	padding-bottom: 2px;
	color: #333333;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-right-style: solid;
	border-bottom-style: solid;
	border-right-color: #dddddd;
	border-bottom-color: #dddddd;
}

#pictable{
	BORDER-COLLAPSE: collapse;
	border-top-width: 0px;
	border-left-width: 0px;
	border-top-style: solid;
	border-left-style: solid;
	border-top-color: #dddddd;
	border-left-color: #dddddd;
}
#pictable td {
	line-height: 24px;
	padding-left: 3px;
	padding-top: 2px;
	padding-bottom: 2px;
	color: #333333;
	border-right-width: 0px;
	border-bottom-width: 0px;
	border-right-style: solid;
	border-bottom-style: solid;
	border-right-color: #dddddd;
	border-bottom-color: #dddddd;
}
.pictxtwidth { width:225px;}

</style>
<script type="text/javascript" src="photo/Jquery.js"></script>
<script type="text/javascript">

 function OpenThenSetValue(Url,Width,Height,WindowObj,SetObj){
	if (document.all){
	var ReturnStr=showModalDialog(Url,WindowObj,'dialogWidth:'+Width+'pt;dialogHeight:'+Height+'pt;status:no;help:no;scroll:no;status:0;help:0;scroll:0;');
		if (ReturnStr!='') 
		{
			//var str=new Array()
			//str=ReturnStr.split("/")
			if(typeof(ReturnStr)!=='undefined'){
			
			var str=ReplaceAll(ReturnStr,'/allpic/','')
			
			SetObj.value=str;
			return ReturnStr;}
	}
	}else{
	 obj=SetObj;
	 Width=Width+180;
	 Height=Height+80;
	 window.open(Url,'newWin','modal=yes,width='+Width+',height='+Height+',resizable=no,scrollbars=no');
	}
 }
function ReplaceAll(str, sptr, sptr1)
{
while (str.indexOf(sptr) >= 0)
{
   str = str.replace(sptr, sptr1);
}
return str;
}
</script>


</head>
<body bgcolor="#fcfcfc">
<form name="theForm" method="post" action="promodifyadmin.asp" onSubmit="return Juge()">


<table width="750" border="0" align="left" cellpadding="0" cellspacing="0" id="tabcss">
  <tr bgcolor="#BFDFFF">
      <td colspan="2"><b>��Ʒ�����޸�</b></td>
    </tr>
    <tr> 
      <td >����ʱ�䣺 <input name="addtime" type="text" id="addtime" value='<%=addtime%>'></td>
      <td>���ࣺ����
        <select name="kind" style="width:150px; font-size:12px; ">
          <%
	  dim rs,sql,maxkind,kindnum,kindname,grade,i,gradestr,youkind
	  youkind=0
	response.write "<option value=''>##��ѡ�����##</option>"
		sql="select * from sh_kind order by kindnum"
		set rs=server.createobject("adodb.recordset")
		rs.open sql,conn,1,1
		if rs.bof or rs.eof then
		else
		do while not rs.eof
			kindnum=rs("kindnum")
			kindname=rs("kindname")
			grade=len(kindnum)/4
			'p=1
			gradestr=""
			'for p=1 to grade-1
				gradestr=gradestr & String(grade-1, "��")
			'next
			if kindnum=kind then
				response.write "<option value='"&kindnum&"' selected>|��"&gradestr&kindname&"</option>"
				youkind=1
			else
				response.write "<option value='"&kindnum&"'>|��"&gradestr&kindname&"</option>"
			end if
		rs.movenext
		loop
		end if
		rs.close
		set rs=nothing
		
		if youkind=0 then
			response.write "<option value='"&kind&"' selected>"&kind_name&"</option>"
		end if
%>
        </select></td>
    </tr>
    <tr> 
      <td > ������룺 
<input type="text" name="model" value="<%=model%>" size="32">      </td>
      <td> ��Ʒ���ƣ� 
        <input type="text" name="productname" value="<%=productname%>"  size="40"></td>
    </tr>
    <tr> 
      <td >�г��ۣ��� 
        <input name="price1" type="text" id="price1" value="<%=price1%>" size="13">
		��λ��<select name="punit" style="width:70px; font-size:12px;"><option value='<%=punit%>'><%=punit%></option> <option value='��'>��</option><option value='��'>��</option><option value='ֻ'>ֻ</option><option value='��'>��</option><option value='̨'>̨</option><option value='֧'>֧</option><option value='��'>��</option><option value='��'>��</option></select>		</td>
      <td>��Ա�ۣ��� 
        <input name="price2" type="text" id="price2" value="<%=price2%>">(��ͨ��Ա)<input type="button" name="Buttonprice" value="ȫ����Ա����ͬ" title="����¼��������Ա�ۡ�����������������۸����ͨ��Ա��һ����" onClick="myprice()" style="background-color:#cccccc;width:90px;"></td>
    </tr>
    <tr> 
      <td >ͭ���ۣ��� 
        <input name="price3" type="text" id="price3" value="<%=price3%>"></td>
      <td>�����ۣ��� 
        <input name="price4" type="text" id="price4" value="<%=price4%>">      </td>
    </tr>
    <tr> 
      <td >�𼶼ۣ��� 
        <input name="price5" type="text" id="price5" value="<%=price5%>"></td>
      <td>�꼶�ۣ��� 
        <input name="price6" type="text" id="price6" value="<%=price6%>">      </td>
    </tr>
    <tr>
	<td align="left" height=30>
	<span style="position:absolute;"> 
	<table border="0" cellspacing="0" cellpadding="0">
	<tr><td><font style="position:absolute;top:-11px; width: 152px; height: 0px; left: 0px; ">Ʒ�ƣ�</font><select name="selectmenu" style="position:absolute;top:-11px; width: 152px; height: 0px; left: 45px; clip: rect(0 180 110 133) "  onChange="theForm.pipai.value=this.options[this.selectedIndex].value">
		<%
		response.write "<option value=''></option>"
		c_sql="select memo from x_pinpai order by memo"
		set c_rs=conn.execute(c_sql)
		if not c_rs.eof then
		do while not c_rs.eof
			memo2=c_rs("memo")
			response.write "<option value='"&memo2&"'>"&memo2&"</option>"
			c_rs.movenext
		loop
		end if
		c_rs.close
		set c_rs=nothing
		%>
		</select>
		<input name="pipai" type="text" value="<%=pipai%>" style="position:absolute;top:-11px; width: 138px; height:21px; left:45px;" onKeyDown="if(event.keyCode==13)event.keyCode=9">
	</td>
	</tr>
	</table>
	</span>	</td>
      <td>��ʾ��������ֻ�Ա���𣬵ȼ���Ա����д����ͨ��Ա��һ�����ɡ�</td>
    </tr>

    <tr>
      <td>���������� 
		<input name="oneweight" type="text" size="25" maxlength="100" value="<%=oneweight%>">(��)
		<img src='../images/helpmemo.gif' alt="����˷��ǰ���������ģ�����д��Ʒ��������<br>����˷��ǰ�������ģ���д��������д0��<br>�����뿴�����ͼƷѡ�-��ѡ�����ͼƷѷ�ʽ����">		</td>
      <td>��������� 
		<input name="kuchushu" type="text" size="25" maxlength="100" value="<%=kuchushu%>"></td>		
    </tr>

	
	<%if s_colorsize="��" then%>
	<%end if%>	
	
	<!--
    <tr>
      <td height="24" >��Ʒ�����أ� 
		<input name="fahoudi" type="text" size="23" maxlength="100" value="<%=fahoudi%>"></td>
      <td height="24" >���˵����
		<input name="kuchumemo" type="text" size="25" maxlength="100" value="<%=kuchumemo%>"></td>
    </tr>
	-->
<tr><td colspan=2>
	<table width="100%" border=0  cellpadding="0" cellspacing="0" id="pictable">
    <tr> 
      <td width="65%"> 
		<input type="hidden" name="smallpicpathold" value="<%=smallpicpath%>">
		Сͼ&nbsp;&nbsp;<input type="text" name="smallpicpath" id="smallpicpath" value="<%=smallpicpath%>" class="pictxtwidth">
        <input type="button" name="Button" style="background-color:#ddddd1;width:65px;" value="�����ϴ�" onClick="MM_openBrWindow('upload.asp?size=smallpicpath','','width=370,height=290,top=124,left=470')">
        <img src="../images/img.gif" width="20" height="20" border="0" align="absmiddle" style="cursor:hand;" onMouseOver="if(document.all('smallpicpath').value!=''){document.all('photo_2').src =document.all('smallpicpath').value; document.getElementById('showpic').href=document.all('smallpicpath').value;}">
		&nbsp;		</td>
	    <td width="35%" rowspan="3"><a href='' id='showpic' target='_blank'><img name='photo_2' height="140" width="140" border="0" src="" alt="��������߻�ɫСͼ,ͼƬ����Ԥ��,����ɲ鿴ԭͼ" title="ͼƬԤ�����򡣵���ɲ鿴ԭͼ��"></a></td>
    </tr>
    <tr>
      <td height="22">
	  <input type="hidden" name="bigpicpathold" value="<%=bigpicpath%>">
	  	��ͼ
        <input type="text" name="bigpicpath" id="bigpicpath" value="<%=bigpicpath%>" class="pictxtwidth">
        <input type="button" name="Button22" style="background-color:#ddddd1;width:65px;" value="�����ϴ�" onClick="MM_openBrWindow('upload.asp?size=bigpicpath','','width=370,height=290,top=124,left=470')">
        <img src="../images/img.gif" width="20" height="20" border="0" align="absmiddle" style="cursor:hand;" onMouseOver="if(document.all('bigpicpath').value!=''){document.all('photo_2').src =document.all('bigpicpath').value; document.getElementById('showpic').href=document.all('bigpicpath').value;}">
		&nbsp;        </td>
    </tr>
	</table>
</td></tr>

    <tr> 

      <td valign="top" colspan="2">��ϸ����
<textarea id="disc" name="disc" cols="100" rows="8" style="width:725px;height:400px;visibility:hidden;"><%=htmlspecialchars(disc)%></textarea>
 	  </td>
    </tr>
    <tr><td height="40" colspan="2"><div align="center">
          <input name="pkid" type="hidden" id="pkid" value="<%=request("pkid")%>">
		  <input type="Submit" name="Submit" value="  ��  ��  " style="background-color:#cccccc;width:90px; height:25px;"></div></td>
    </tr>
	<tr height="50"><td colspan="2"></td></tr>
  </table>

</form>
<br>
<br>
<br>
<br>

</body>
</html>

