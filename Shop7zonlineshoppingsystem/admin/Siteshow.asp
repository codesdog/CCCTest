<!--#include file="conn.asp"-->
<!--#include file="check2.asp"-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>��վ��̨,��վ������Ϣ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<script language=javascript src=../images/mouse.js></script>
<style>
<!--
td{font-size:9pt}
alt{font-size:9pt}
body {
	margin-top: 5px;margin-left: 2px;FONT: 12px arial,����; 
}
.style3 {color: #A84E22; font-weight: bold; }
#tabcss{
	BORDER-COLLAPSE: collapse;
	border-top-width: 1px;
	border-left-width: 1px;
	border-top-style: solid;
	border-left-style: solid;
	border-top-color: #dddddd;
	border-left-color: #dddddd;
}#tabcss td {
	line-height: 22px;
	padding-left: 10px;
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
-->
</style>
<%
dim sql4,rs4,id,num,pkid

s_qq=trim(request.form("s_qq"))


'�������Ƿ�֧��
'theInstalledObjects(9) = "Scripting.FileSystemObject"
Function IsObjInstalled(strClassString)
	On Error Resume Next
	IsObjInstalled = False
	Err = 0
	Dim xTestObj
	Set xTestObj = Server.CreateObject(strClassString)
	If 0 = Err Then IsObjInstalled = True
	Set xTestObj = Nothing
	Err = 0
End Function

Function CopyMyFolder(FolderName,FolderPath) 
	sFolder=server.mappath(FolderName) 'Դ�ļ���
	tFolder=server.mappath(FolderPath) 'Ŀ���ļ���
	set fso=server.createobject("scripting.filesystemobject") 
	if fso.folderexists(server.mappath(FolderName)) Then'���ԭ�ļ����Ƿ���� 
		if fso.folderexists(server.mappath(FolderPath)) Then'���Ŀ���ļ����Ƿ���� 
			fso.copyfolder sFolder,tFolder 
		Else 'Ŀ���ļ�����������ھʹ��� 
			CreateNewFolder = Server.Mappath(FolderPath) 
			fso.CreateFolder(CreateNewFolder) 
			fso.CopyFolder sFolder,tFolder 
		End if 
		CopyMyFolder="�����ļ���["&server.mappath(FolderName)&"]��["&server.mappath(FolderPath)&"]�ɹ�!" 
	Else 
		CopyMyFolder="����,ԭ�ļ���["&sFolde&"]������!" 
	End If 
	set fso=nothing 
End Function


Submit2=trim(request.form("Submit2"))

if Submit2="����" then

		sql4="select * from siteshow"
		set rs4=server.createobject("adodb.recordset")
		rs4.open sql4,conn,1,3
		if rs4.bof or rs4.eof then
		else
			rs4("s_col")=trim(request.form("s_col"))
			rs4("s_row")=trim(request.form("s_row"))	
			rs4("s_picwidth")=trim(request.form("s_picwidth"))
			rs4("s_picheight")=trim(request.form("s_picheight"))
			rs4("s_colorsize")=trim(request.form("s_colorsize"))
			
			rs4("s_model")=trim(request.form("s_model"))
			rs4("s_pipai")=trim(request.form("s_pipai"))
			rs4("s_kuchu")=trim(request.form("s_kuchu"))
			
			rs4("s_hot_line")=trim(request.form("s_hot_line"))
			rs4("s_cuxiao_line")=trim(request.form("s_cuxiao_line"))
			rs4("s_new_line")=trim(request.form("s_new_line"))
			
			rs4("s_news")=trim(request.form("s_news"))
			

			rs4("s_productkind")=4  'trim(request.form("s_productkind")) '�˰汾û�������Ʒ����
			If not IsObjInstalled("Scripting.FileSystemObject") Then  '���Ƿ�֧��FSO
			else
			rs4("s_head")="red"
			rs4("s_foot")="foot1.asp"
			end if
			rs4("s_hit")="��"  'trim(request.form("s_hit"))
			rs4("s_hitnum")=trim(request.form("s_hitnum"))
			rs4("s_diaocha")="��"  'trim(request.form("s_diaocha"))
			rs4("s_bbs")="��"  'trim(request.form("s_bbs"))
			rs4("s_mes")=trim(request.form("s_mes"))
			
			rs4("s_youqing")="��"
			rs4("s_zishu")="��"

			rs4("s_msn")=trim(request.form("s_msn"))
			rs4("s_wangwang")=trim(request.form("s_wangwang"))
			rs4("s_pinpai")=trim(request.form("s_pinpai"))
			rs4("s_pinpai_l_r")=trim(request.form("s_pinpai_l_r"))
			rs4("s_pinpaiw")=trim(request.form("s_pinpaiw"))
			rs4("s_pinpaih")=trim(request.form("s_pinpaih"))
			
			rs4.update
			
			If not IsObjInstalled("Scripting.FileSystemObject") Then  '���Ƿ�֧��FSO
			else
				'--------------------��ͷ��begin-----------------------------
				s_head=trim(request.form("s_head"))
				s_headold=trim(request.form("s_headold"))
				's_img=mid(s_head,5,1)		'�����ĸ�ģ����
				's_imgold=mid(s_headold,5,1)	'�����ĸ�ģ����
				
				if s_head<>s_headold and s_head<>"" and s_headold<>"" then
					FolderName="../muban/"&s_head&"" 'ԭ�ļ��� 
					FolderPath="../images" 'Ŀ���ļ��� 
					response.write""&CopyMyFolder(FolderName,FolderPath)&""
				end if
				'--------------------��ͷ��end-------------------------------
				
				'--------------------��β��begin-----------------------------
				s_foot=trim(request.form("s_foot"))
				s_footold=trim(request.form("s_footold"))
				if s_foot<>s_footold and s_foot<>"" and s_footold<>"" then
					set fso= server.CreateObject("scripting.fileSystemObject")
					p1="../foot.asp"
					p11="../muban/"&s_footold
					set f1=fso.getfile(server.mappath(""&p1&""))
					f1.copy(server.mappath(""&p11&""))
					
					p2="../muban/"&s_foot
					p21="../foot.asp"
					set f2=fso.getfile(server.mappath(""&p2&""))
					f2.copy(server.mappath(""&p21&""))
					set fso=nothing
					set f1=nothing
					set f2=nothing
				end if
				'--------------------��β��end-------------------------------
			end if
		end if
		rs4.close
		set rs4=nothing
		response.write "<script language=JavaScript>" & "alert('����ɹ�!');"& "window.location.href='siteshow.asp';" & "</script>"
end if

%>
<script language="JavaScript">
<!--
function Juge()
{
  if (theForm.s_col.value == "")
  {
    alert("������д����!");
    theForm.s_col.focus();
    return false;
  }
  if (isNaN(theForm.s_col.value))
  {
    alert("����ҪΪ����!");
    theForm.s_col.focus();
    return (false);
  }
  
  if (theForm.s_row.value == "")
  {
    alert("������д����!");
    theForm.s_row.focus();
    return false;
  }
  if (isNaN(theForm.s_row.value))
  {
    alert("����ҪΪ����!");
    theForm.s_row.focus();
    return (false);
  }
  

  if (theForm.s_picwidth.value == "")
  {
    alert("������д���!");
    theForm.s_picwidth.focus();
    return false;
  }
  if (isNaN(theForm.s_picwidth.value))
  {
    alert("���ҪΪ����!");
    theForm.s_picwidth.focus();
    return (false);
  }

  if (theForm.s_picheight.value == "")
  {
    alert("������д���!");
    theForm.s_picheight.focus();
    return false;
  }
  if (isNaN(theForm.s_picheight.value))
  {
    alert("�߶�ҪΪ����!");
    theForm.s_picheight.focus();
    return (false);
  }



  if (theForm.s_hot_line.value == "")
  {
    alert("������д������Ʒ����!");
    theForm.s_hot_line.focus();
    return false;
  }
  if (isNaN(theForm.s_hot_line.value))
  {
    alert("������Ʒ����ҪΪ����!");
    theForm.s_hot_line.focus();
    return (false);
  }  

  if (theForm.s_cuxiao_line.value == "")
  {
    alert("������д������Ʒ����!");
    theForm.s_cuxiao_line.focus();
    return false;
  }
  if (isNaN(theForm.s_cuxiao_line.value))
  {
    alert("������Ʒ����ҪΪ����!");
    theForm.s_cuxiao_line.focus();
    return (false);
  }  

  if (theForm.s_new_line.value == "")
  {
    alert("������д������Ʒ����!");
    theForm.s_new_line.focus();
    return false;
  }
  if (isNaN(theForm.s_new_line.value))
  {
    alert("������Ʒ����ҪΪ����!");
    theForm.s_new_line.focus();
    return (false);
  } 


  if (theForm.s_news.value == "")
  {
    alert("������д��ҳ������Ѷ��ʾ����!");
    theForm.s_news.focus();
    return false;
  }
  if (isNaN(theForm.s_news.value))
  {
    alert("��ҳ������Ѷ��ʾ����ҪΪ����!");
    theForm.s_news.focus();
    return (false);
  }  


  if (theForm.s_mes.value == "")
  {
    alert("������д��ҳ����������ʾ����!");
    theForm.s_mes.focus();
    return false;
  }
  if (isNaN(theForm.s_mes.value))
  {
    alert("��ҳ����������ʾ����ҪΪ����!");
    theForm.s_mes.focus();
    return (false);
  } 

  if (theForm.s_hitnum.value == "")
  {
    alert("������������������!");
    theForm.s_hitnum.focus();
    return false;
  }
  if (isNaN(theForm.s_hitnum.value))
  {
    alert("�������������ҪΪ����!");
    theForm.s_hitnum.focus();
    return (false);
  } 

   if(confirm("ȷ��Ҫ����������?"))
      return true
   else
      return false;
}
//-->
</script>
</head>

<body bgcolor="#fcfcfc">          
<table width="97%" border="0" align="center" cellpadding="0" cellspacing="0" id="tabcss">
  <tr bgcolor="#E1EFFF"> 
    <td height=30 colspan=2>&nbsp;<b>����ģ����ʾ��ʽ�����ݣ�(�����ѡ��ͷ��β��ģ�壻�������ã���ҳ�沼����ʾ�����룻�ɰ�ʵ�����ȡ��һЩ���ܵȵ�)</b></td>
  </tr>
  <form name="theForm" method="post" action="siteshow.asp" onSubmit="return Juge()">
    <%
		
		sql4="select * from siteshow"
		set rs4=server.createobject("adodb.recordset")
		rs4.open sql4,conn,1,1
		if rs4.bof or rs4.eof then
			response.write "û�з�������������¼��"
		else
			s_col=rs4("s_col")
			s_row=rs4("s_row")			
			s_picwidth=rs4("s_picwidth")
			s_picheight=rs4("s_picheight")
			s_colorsize=rs4("s_colorsize")

			s_model=rs4("s_model")
			s_pipai=rs4("s_pipai")
			s_kuchu=rs4("s_kuchu")
			
			s_hot_line=rs4("s_hot_line")
			s_cuxiao_line=rs4("s_cuxiao_line")
			s_new_line=rs4("s_new_line")
			
			s_news=rs4("s_news")
			s_mes=rs4("s_mes")
			s_hit=rs4("s_hit")
			s_hitnum=rs4("s_hitnum")
			s_productkind=rs4("s_productkind")
			s_head=rs4("s_head")
			s_foot=rs4("s_foot")
			s_diaocha=rs4("s_diaocha")
			s_bbs=rs4("s_bbs")
			s_youqing=rs4("s_youqing")
			s_zishu=rs4("s_zishu")
			s_qq=rs4("s_qq")
			s_msn=rs4("s_msn")
			s_wangwang=rs4("s_wangwang")

			s_pinpai=rs4("s_pinpai")
			s_pinpai_l_r=rs4("s_pinpai_l_r")
			s_pinpaiw=rs4("s_pinpaiw")
			s_pinpaih=rs4("s_pinpaih")
%>
	
	<!--
    <tr bgcolor='#Ffffff' onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';"> 
      <td height='23' align='right'>�����Ʒ������ʾ��ʽ 
      </td>
      <td>
	  <input type="radio" name="s_productkind" value="1" <%if s_productkind="1" then response.write "checked"%>>��Ʒ�����Զ�����&nbsp;&nbsp;&nbsp; 
	  <input type="radio" name="s_productkind" value="2" <%if s_productkind="2" then response.write "checked"%>>ÿ����ʾ��������&nbsp;&nbsp;&nbsp; 
	  <input type="radio" name="s_productkind" value="3" <%if s_productkind="3" then response.write "checked"%>>ÿ����ʾ��������&nbsp;&nbsp;&nbsp; 
	  <input type="radio" name="s_productkind" value="4" <%if s_productkind="4" then response.write "checked"%>>��Ʒ����������ʽ
	  &nbsp;���밴������Ʒ������ټ��������ֳ�����ѡ����ʵķ��</td>
    </tr>
	-->
	
    <tr bgcolor='#Ffffff' onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';"> 
      <td height='23' align='right'>��ҳ������Ѷ��ʾ����</td>
      <td> <input type=text name='s_news' value="<%=s_news%>" size="4">      </td>
    </tr>
    <tr bgcolor='#Ffffff' onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';"> 
      <td height='23' width="20%" align='right'>��ҳ����Ʒ������</td>
      <td width="80%">
	  ������Ʒ���� <input type=text name='s_hot_line' value="<%=s_hot_line%>" size="5">&nbsp;&nbsp;
	  ������Ʒ���� <input type=text name='s_cuxiao_line' value="<%=s_cuxiao_line%>" size="5">&nbsp;&nbsp;
	  ������Ʒ���� <input type=text name='s_new_line' value="<%=s_new_line%>" size="5">
	  &nbsp;&nbsp;<br>
      (�����Ҫ��ʾ������Ʒ��������Ʒ��Ŀ�������ڡ��趨��Ŀ���н���Щ��Ŀ�ġ��Ƿ���ʾ����Ϊ����)</td>
    </tr>


    <tr bgcolor='#Ffffff' onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';"> 
      <td height='23' width="20%" align='right'>ǰ̨��Ʒ�б�</td>
      <td width="80%"> ÿҳ���� 
        <input type=text name='s_col' value="<%=s_col%>" size="5">
        (ͨ��4-5֮��)&nbsp;&nbsp;&nbsp; ���� 
        <input type=text name='s_row' value="<%=s_row%>" size="5">
        (ͨ��Ϊ4-6֮�䣬�밴����ʵ������޸�) 
		<img src='../images/helpmemo.gif' alt="<font color='#ff3300'>ǰ̨��Ʒ�б�Сͼ���ý��飺</font><br>���ڸ�����ҵ����Ʒͼ�����ϴ��еĿ���Ҫ�߶ȴ��ڿ�Ȼ��ȴ��ڸ߶ȣ��û�Ҫ����ƷСͼ�߶�/��Ȳ�һ����<br>�����ڽ�������ʱ����ƻ�����Ʒ�б�Сͼ��ȡ��߶ȡ������������Ժ�����ߴ�����ƷСͼ�������ȿ�ϵͳ�Դ���<br>��Ʒͼ���ݣ��������������������ʾЧ���������������ʾ4�У�Сͼ�����Ϊ170����ʾЧ���ϼѡ����5�У�Сͼ<br>���Ϊ135����ʾЧ���ϼѡ�">		</td>
    </tr>
	
    <tr bgcolor='#Ffffff' onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';"> 
      <td height='23' width="20%" align='right'>��Ʒ�б�СͼƬ</td>
      <td width="80%"> ��� 
        <input type=text name='s_picwidth' value="<%=s_picwidth%>" size="5" style="BACKGROUND-COLOR: #fafafa;" >
        px&nbsp;(135-170px����)&nbsp;&nbsp; �߶� 
        <input type=text name='s_picheight' value="<%=s_picheight%>" size="5">
        px(�߶�ͨ��Ϊ110-200px֮�䣬�밴����ʵ������޸�) 
		<img src='../images/helpmemo.gif' alt="<font color='#ff3300'>ǰ̨��Ʒ�б�Сͼ���ý��飺</font><br>���ڸ�����ҵ����Ʒͼ�����ϴ��еĿ���Ҫ�߶ȴ��ڿ�Ȼ��ȴ��ڸ߶ȣ��û�Ҫ����ƷСͼ�߶�/��Ȳ�һ����<br>�����ڽ�������ʱ����ƻ�����Ʒ�б�Сͼ��ȡ��߶ȡ������������Ժ�����ߴ�����ƷСͼ�������ȿ�ϵͳ�Դ���<br>��Ʒͼ���ݣ��������������������ʾЧ���������������ʾ4�У�Сͼ�����Ϊ170����ʾЧ���ϼѡ����5�У�Сͼ<br>���Ϊ135����ʾЧ���ϼѡ�">		</td>
    </tr>
	
    <tr bgcolor='#Ffffff' onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';"> 
      <td height='23' align='right'>��Ʒ�б����Ƿ���ʾ��Ʒ��</td>
      <td> <input type="radio" name="s_model" value="��" <%if s_model="��" then response.write "checked"%> >
        ��&nbsp;&nbsp;&nbsp; <input type="radio" name="s_model" value="��" <%if s_model="��" then response.write "checked"%> >
        �� </td>
    </tr>
	
    <tr bgcolor='#Ffffff' onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';"> 
      <td height='23' align='right'>��Ʒ��ϸ���Ƿ���ʾ�����</td>
      <td> <input type="radio" name="s_kuchu" value="��" <%if s_kuchu="��" then response.write "checked"%> >
        ��&nbsp;&nbsp;&nbsp; <input type="radio" name="s_kuchu" value="��" <%if s_kuchu="��" then response.write "checked"%> >
        �� </td>
    </tr>



    <tr bgcolor='#Ffffff' onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';"> 
      <td height='23' align='right'>��Ʒ�б��Ƿ���ʾƷ��ͼ��</td>
      <td> <input type="radio" name="s_pinpai" value="��" <%if s_pinpai="��" then response.write "checked"%> >
        ��&nbsp;&nbsp;&nbsp; <input type="radio" name="s_pinpai" value="��" <%if s_pinpai="��" then response.write "checked"%> >
        ��&nbsp;&nbsp; <input type="hidden" name="s_pinpai_l_r" value="��"> &nbsp;&nbsp; 
        ͼ���� 
        <input type=text name='s_pinpaiw' value="<%=s_pinpaiw%>" size="3">
        px&nbsp;&nbsp; �߶� 
        <input type=text name='s_pinpaih' value="<%=s_pinpaih%>" size="3">
        px  <img src='../images/helpmemo.gif' alt="ͨ��ÿ�����������ߴ�90px X 40px����ʵ������޸�<br><img src='images/pinpai1.gif'><br>���Ҫÿ��ֻ��һ����
		ͼƬ���Ϊ120��185��185px���<br><img src='images/pinpai2.gif'>"></td>
    </tr>
	
	
    <tr bgcolor='#Ffffff' onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';"> 
      <td height='23' align='right'>��ҳ���������</td>
      <td> <!--<input type="radio" name="s_hit" value="��" <%if s_hit="��" then response.write "checked"%> >
        ��&nbsp;&nbsp;&nbsp; <input type="radio" name="s_hit" value="��" <%if s_hit="��" then response.write "checked"%> >
        ��&nbsp;&nbsp;&nbsp; -->��ʾǰ�� 
        <input type=text name='s_hitnum' value="<%=s_hitnum%>" size="4">
        ����Ʒ </td>
    </tr>
	<!--
    <tr bgcolor='#Ffffff' onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';"> 
      <td height='23' align='right'>��ҳ�Ƿ���ʾ���ߵ���</td>
      <td> <input type="radio" name="s_diaocha" value="��" <%if s_diaocha="��" then response.write "checked"%> >
        ��&nbsp;&nbsp;&nbsp; <input type="radio" name="s_diaocha" value="��" <%if s_diaocha="��" then response.write "checked"%> >
        �� </td>
    </tr>
	-->
    <tr bgcolor='#Ffffff' onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';"> 
      <td height='23' align='right'>��ҳ������ʾ����</td>
      <td> <!--<input type="radio" name="s_bbs" value="��" <%if s_bbs="��" then response.write "checked"%> >
        ��&nbsp;&nbsp;&nbsp; <input type="radio" name="s_bbs" value="��" <%if s_bbs="��" then response.write "checked"%> >
        ��&nbsp;&nbsp;&nbsp; -->��ʾ���� 
        <input type=text name='s_mes' value="<%=s_mes%>" size="4">
        ��</td>
    </tr>
    <tr bgcolor='#Ffffff' onMouseOver="this.style.background='#FFE4CA';" onMouseOut="this.style.background='#ffffff';"> 
      <td height='46' align='right'>&nbsp;</td>
      <td><input type="submit" name="Submit2" value=" ���� "> &nbsp;&nbsp;&nbsp;&nbsp; 
        <input type="reset" name="Submit3" value=" ���� "> </td>
    </tr>
    <%				
		end if
rs4.close
set rs4=nothing		
%>
  </form>
</table>
<br><br><br>

</body>
</html>
<%
call connclose
%>

