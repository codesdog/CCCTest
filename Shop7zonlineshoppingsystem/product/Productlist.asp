
<!-- #include file="conn.asp" -->
<!--#include file="check2.asp"-->

<%
dim my_order

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
kind=request("kind")


'sql0="update sh_kind set kindnum='0000'+mid(kindnum,5) where kindnum like '0001%'"
'conn.execute(sql0)
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><%=application("sitename")%></title>
<link href="a1.css" rel="stylesheet" type="text/css">
<link href="FixTable.css" rel="Stylesheet" type="text/css" />
	<script language="javascript">
	<!--
	function SetBgColor(Menu,Menucolor)
	{
		if (Menu.style.background.toUpperCase()!="#FFDDBB")
		{
		Menu.style.background=Menucolor;
		}
	}
	function RestoreBgColor(Menu,Menucolor)
	{
		if (Menu.style.background.toUpperCase()!="#FFDDBB")
		{
		Menu.style.background=Menucolor;
		}
	}
	
	function ClickBgColor(Menu)
	{
		if (Menu.style.background.toUpperCase()!="#FFDDBB")
		{
		Menu.style.background="#FFDDBB";
		}
		else
		{
		Menu.style.background="#E7E7E7";
		}
	}
	
	-->
	</script>
	
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//-->
</script>
<script language="JavaScript">
<!--
function yesgood() 
{ 
   if(confirm("������Ʒ��Ϊ�Ƽ���Ʒ���Ƽ���Ʒ��4�֡�����������Ƽ���Ʒ����ʾ���뽫�����Ʒ��Ϊ���Ƽ�"))
      return true
   else
      return false
}

function nogood() 
{ 
   if(confirm("������Ϊ�Ƽ���Ʒ�ˣ�"))
      return true
   else
      return false
}
//-->
</script>
<SCRIPT LANGUAGE="JavaScript"> 
<!-- 
function allcheck() 
{
	for(i=document.theForm.elements.length-1;i>0;i--)
	{
		document.theForm.elements[i-1].checked=true;
	}
}

function nocheck() 	
{
	for(i=document.theForm.elements.length-1;i>0;i--)
	{
		document.theForm.elements[i-1].checked=false;
	}
}

   // --> 
</SCRIPT> 
<SCRIPT LANGUAGE="JavaScript">
function Turn(ii,mm)
{
	if(mm.style.display=="none")
	{
		//ii.src="../images/open.gif"
		mm.style.display=""
	}
	else
	{
		//ii.src="../images/close.gif"
		mm.style.display="none"
	}
	}
</SCRIPT>
<style type="text/css">
<!--
body {

	margin-left: 3px;
	margin-top: 3px;
	margin-right: 9px;
	margin-bottom: 0px;
}

form{margin:2px; font-size:12px;}

-->
</style></head>

<body bgcolor="#fcfcfc" onLoad="tab.style.height=window.screen.height-248">

<TABLE width="100%"  border=0 align=center cellPadding=1 cellSpacing=0>
<TR>
<TD>
����:<select name="kind" style="width:150px; font-size:12px;" onChange="window.location.href='<%=nowpath%>?kind='+ this.options[this.selectedIndex].value">
          <%
	  dim rs,sql,maxkind,kindnum,kindname,grade,i,gradestr

	response.write "<option value=''></option>"

		sql="select * from sh_kind order by kindnum"
		set rs=server.createobject("adodb.recordset")
		rs.open sql,conn,1,1
		if rs.bof or rs.eof then
		else
		do while not rs.eof
			kindnum=rs("kindnum")
			kindname=rs("kindname")
			grade=len(kindnum)/4
			i=1
			gradestr=""
			for i=1 to grade-1
				gradestr=gradestr &"��"
			next
			response.write "<option value='"&kindnum&"'>|��"&gradestr&kindname&"</option>"
		rs.movenext
		loop
		end if
		rs.close
		set rs=nothing
%>
        </select>
</TD>
<form name="form1" method="post" action="productlist.asp">
<TD>
		���Ż���Ʒ���ؼ���<input name="keyword" type="text" size="12" maxlength="15"> <input type="submit" name="Submit" value="����">&nbsp; 
		<a href="productlist.asp">ȫ����Ʒ</a> ��<a href="productlist.asp?hot=1">������Ʒ</a> ��<a href="productlist.asp?good=1">������Ʒ</a> ��<a href="productlist.asp?updown=0">�¼���Ʒ</a>
		&nbsp;<input type="button" name="button1" value="������Ʒ" onClick="window.location.href='prod.asp'">
		  
</TD>
</form>
</TR></TABLE>		  
		   

<form name="theForm" method="post" >

		  
		  <div id=tab class="fixbox">
		  
		  <TABLE class="fixtable" width="1270" border=0 align=center cellPadding=1 cellSpacing=0 >
            <TBODY>
              <tr >
                <th class="lockcolumn">&nbsp;</th>
                <th class="lockcolumn">��Ʒͼ</th>
                <th class="lockcolumn">��Ʒ��</th>
				<th class="lockcolumn" bgcolor="#cca" width="1"></th>
                <th class="thbg">����</th>
                <th class="thbg">&nbsp;</th>
				<th class="thbg">����ʱ��</th>
				<th class="thbg">����</th>
				<th class="thbg">����</th>
                <th class="thbg">Ʒ��</th>
				
                <%if s_colorsize="��" then%>
                <th class="thbg">��ɫ</th>
                <th class="thbg">����</th>
                <%end if%>				
                <th class="thbg">�г���</th>
                <th class="thbg">��Ա��</th>
				<th class="thbg">ͭ����</th>
				<th class="thbg">������</th>
				<th class="thbg">�𼶼�</th>
				<th class="thbg">�꼶��</th>
				<th class="thbg">����g</th>
				<th class="thbg">���</th>

              </tr>
              <%

i=1
kind=request("kind")
keyword=request("keyword")
nowpage=request("page")
if nowpage="" then nowpage="1"
hot=request.QueryString("hot")
good=request.QueryString("good")
updown=request.QueryString("updown")

sql_condition=" where pkid>0 "

if keyword<>"" then
	sql_condition=sql_condition&" and model like '%"&keyword&"%' or productname like '%"&keyword&"%' "
end if
if kind<>"" then
	sql_condition=sql_condition&" and kind like '"&kind&"%' "
end if

if hot<>"" then
	sql_condition=sql_condition&" and hot = '"&hot&"' "
	my_order = " hottime desc "
end if
if good<>"" then
	sql_condition=sql_condition&" and good = '"&good&"' "
	my_order = " goodtime desc "
end if

if updown<>"" then
	sql_condition=sql_condition&" and updown = '"&updown&"' "
end if

if my_order="" then my_order=" pkid desc "

sql="select  * from e_product "&sql_condition&" order by "&my_order
'response.write sql

set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
if rs.bof or rs.eof then
	response.write "<tr><td colspan=25>û����Ʒ��¼��</td></tr>"
else
m=1
	rs.pagesize=15
	rs.absolutepage=1
	if request("page")<>"" then rs.absolutepage=request("page")
	rowcount=rs.pagesize
	if not rs.eof then
		do while not rs.eof and rowcount>0
		pkid=rs("pkid")
		smallpicpath=rs("smallpicpath")
 		model=rs("model")
		productname=rs("productname")
		pipai=rs("pipai")
		color=rs("color")
		psize=rs("psize")		
		price1=rs("price1")
		price2=rs("price2")
		price3=rs("price3")
		price4=rs("price4")
		price5=rs("price5")
		price6=rs("price6")
		oneweight=rs("oneweight")
		kuchushu=rs("kuchushu")
		
		hot=rs("hot")
		hottime=rs("hottime")
		good=rs("good")
		goodtime=rs("goodtime")

		updown=rs("updown")
		addtime=rs("addtime")
		
		'model22=server.URLEncode(model)
		
%>
              <tr Onmouseover="return SetBgColor(this,'#e7e7e7');" Onmouseout="return RestoreBgColor(this,'#FFFFFF');" Onclick="return ClickBgColor(this);">
                <TD class="lockcolumn" height="25"><%=(nowpage-1)*15+m%><input type='checkbox' name='checkbox<%=m%>' value='<%=pkid%>'></TD>
                <TD class="lockcolumn" style="WIDTH: 45;"><img src="<%=smallpicpath%>" width="35" border="0"></TD>
                <TD class="lockcolumn" style="WIDTH: 150; WORD-WRAP:break-word"><%=productname%></td>
				<td class="lockcolumn" bgcolor="#CCCCCC" width="1"></td>

                <td style="WIDTH: 60;" align="center"><%
											if hot<>"1" then
												response.write "<a href='hot.asp?hot=1&pkid="&pkid&"&kind="&kind&"&keyword="&keyword&"&page="&nowpage&"'>��Ϊ����</a>"
											else
												response.write "<a href='hot.asp?hot=0&pkid="&pkid&"&kind="&kind&"&keyword="&keyword&"&page="&nowpage&"'><font color='#ff0000'>ȡ������</font></a>"
											end if
											response.write "<div style='margin:3px;'></div>"
											if good="1" then 
											response.write "<a href='good.asp?pkid="&pkid&"&good=0'><font color='#ff0000'>ȡ������</font></a>"
											else
											response.write "<a href='good.asp?pkid="&pkid&"&good=1'>��Ϊ����</a>"
											end if
											response.write "<div style='margin:3px;'></div>"
											if updown="1" then 
											response.write "<a href='updown.asp?pkid="&pkid&"&updown=0' onclick=""return confirm('�����Ϊ�¼�?')"">��Ϊ�¼�</a>"
											else
											response.write "<a href='updown.asp?pkid="&pkid&"&updown=1' onclick=""return confirm('�����Ϊ�ϼ�?')""><font color='#ff0000'>��Ϊ�ϼ�</font></a>"
											end if										
										%>                </TD>
                <TD style="WIDTH: 40;" align="center"><a href="../show.asp?pkid=<%=pkid%>" target="_blank">���</a>
                        <div style='margin:8px;'></div>
                  <a href="promodify.asp?pkid=<%=pkid%>">�༭</a> </TD>
				
				<TD style="WIDTH: 65;"><%=addtime%></td>
				<TD ><%=kindname%></td>
				<TD ><%=model%></td>
                <TD ><%=pipai%></td>
                <%if s_colorsize="��" then%>
                <TD style="WIDTH: 140;"><%=color%></td>
                <TD style="WIDTH: 140;"><%=psize%></td>
                <%end if%>				
                <TD align=right><%=price1%></td>
                <TD align=right><%=price2%></td>
                <TD align=right><%=price3%></td>
                <TD align=right><%=price4%></td>
                <TD align=right><%=price5%></td>
                <TD align=right><%=price6%></td>
                <TD align=right><%=oneweight%></td>
                <TD align=right><%=kuchushu%></td>

              </TR>
              <%
		m=m+1
		rs.movenext
		rowcount=rowcount-1
		loop
	end if

%>
            </TBODY>
          </TABLE>
		  </div>
		  
          <%
if nowpage="" then nowpage=1
nowpath=request.servervariables("script_name")
kind=server.URLEncode(kind)
keyword=server.URLEncode(keyword)
response.write "<table width='98%' align='center' >"
  response.write "<tr> "
   response.write " <td height='22' style='font-size:9pt;'> "
response.write "<input type='button' name='check1' value='ȫѡ' class='inputss' onclick='return allcheck()'>&nbsp;"
response.write "<input type='button' name='check2' value='��ѡ' class='inputss' onclick='return nocheck()'>&nbsp;"

		
		response.write "<input type='button' name='submit1' value='ɾ��ѡ��' onClick='del()'>&nbsp;&nbsp;"
		response.write "<input type='button' name='submit2' value='����ѡ��' onClick='copynew()' title='��������ѡ�е���Ʒ���ٽ��б༭����󷽱�¼��'>&nbsp;&nbsp;"
		
		response.write "<input type='button' name='button1' value='������Ʒ' onClick=""window.location.href='prod.asp'"">&nbsp;&nbsp;"

    response.write "</td></form>"
	response.write "<form name='form1' method='post' action="&nowpath&"?updown="&request("updown")&"&hot="&request("hot")&"&good="&request("good")&"&kind="&kind&"&keyword="&keyword&">"
	response.write "<td>"

		response.write "��"&rs.recordcount&"����¼&nbsp;ÿҳ15��&nbsp;���� "&nowpage&"/"&rs.pagecount &" ҳ&nbsp;&nbsp;"
        response.write "<input type='button' name='Button3' value='��ҳ' onclick=window.location.href='"&nowpath&"?updown="&request("updown")&"&hot="&request("hot")&"&good="&request("good")&"&kind="&kind&"&keyword="&keyword&"'>&nbsp;"
        if clng(nowpage)>1 then
        response.write "<input type='button' name='Button4' value='��ҳ' onclick=window.location.href='"&nowpath&"?updown="&request("updown")&"&hot="&request("hot")&"&good="&request("good")&"&page="&nowpage-1&"&kind="&kind&"&keyword="&keyword&"'>&nbsp;"
        else
        response.write "<input type='button' name='Button4' value='��ҳ'>&nbsp;"
        end if
		if clng(nowpage)<>clng(rs.pagecount) then
        response.write "<input type='button' name='Button5' value='��ҳ' onclick=window.location.href='"&nowpath&"?updown="&request("updown")&"&hot="&request("hot")&"&good="&request("good")&"&page="&nowpage+1&"&kind="&kind&"&keyword="&keyword&"'>&nbsp;"
        else
        response.write "<input type='button' name='Button5' value='��ҳ'>&nbsp;"
		end if
		response.write "<input type='button' name='Button6' value='ĩҳ' onclick=window.location.href='"&nowpath&"?updown="&request("updown")&"&hot="&request("hot")&"&good="&request("good")&"&page="&rs.pagecount&"&kind="&kind&"&keyword="&keyword&"'>"
	response.write " ת��<input type=text name='page' size=3>ҳ<input type='submit' name='Submit' value='ȷ��'>"
	response.write "</td></form>"
  response.write "</tr>"
response.write "</table>"
response.cookies("oldpage")=""&nowpath&"?updown="&request("updown")&"&hot="&request("hot")&"&good="&request("good")&"&page="&nowpage&"&kind="&kind&"&keyword="&keyword&""

end if
rs.close
set rs=nothing
conn.close
set conn=nothing
%>
</form>

<SCRIPT LANGUAGE="JavaScript">
function del()
{
	if(confirm("ȷ�ϣ�Ҫɾ����ѡ��¼��"))
	{
		document.theForm.action = 'delall.asp';
		document.theForm.submit();
	}
	else
	return false;  
}

function copynew()
{
	if(confirm("������ѡ��¼��"))
	{
		document.theForm.action = 'copynew.asp';
		document.theForm.submit();
	}
	else
	return false;  
}
</SCRIPT>

</body>
</html>



