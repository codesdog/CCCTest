<!--#include file="conn.asp"-->
<!--#include file="check2.asp"-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>设置版权信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../inc/i.css" type=text/css rel=stylesheet>




<style type="text/css">
<!--
td{font-size:9pt}
body {
	margin-top: 5px;margin-left: 2px;
}
.style1 {color: #CCCCCC}
.style2 {color: #FF0000}
.style3 {color: #0000CC}
#tabcss{
	BORDER-COLLAPSE: collapse;
	border-top-width: 1px;
	border-left-width: 1px;
	border-top-style: solid;
	border-left-style: solid;
	border-top-color: #dddddd;
	border-left-color: #dddddd;
}#tabcss td {
	line-height: 24px;
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



</head>

<body bgcolor="#fcfcfc">
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="tabcss">
      <tr>
        <td width="15" background="images/main_4.gif">&nbsp;</td>
        <td class="td">
<%dim selectbookid
'//删除
selectbookid=request("selectbookid")
if selectbookid<>"" then
conn.execute "delete from adminlog where loginlogid in ("&selectbookid&")"
response.Redirect "loginlog.asp"
response.End
end if
%>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
<form name="form1" method="post" action="">
<td>
                                <%'开始分页
				Const MaxPerPage=10
   				dim totalPut   
   				dim CurrentPage
   				dim TotalPages
   				dim j
   				dim sql
    				if Not isempty(request("page")) then
      				currentPage=Cint(request("page"))
   				else
      				currentPage=1
   				end if 
			set rs=server.CreateObject("adodb.recordset")
            rs.open "select * from adminlog order by loginlogid desc",conn,1,1
		   	if err.number<>0 then
				response.write "数据库中暂无登录日志!"
				end if
				
  				if rs.eof And rs.bof then
       				Response.Write "<p align='center' class='contents'> 数据库中暂无登录日志!</p>"
   				else
	  				totalPut=rs.recordcount

      				if currentpage<1 then
          				currentpage=1
      				end if

      				if (currentpage-1)*MaxPerPage>totalput then
	   					if (totalPut mod MaxPerPage)=0 then
	     					currentpage= totalPut \ MaxPerPage
	   					else
	      					currentpage= totalPut \ MaxPerPage + 1
	   					end if
      				end if

       				if currentPage=1 then
            			showContent
            			showpage totalput,MaxPerPage,"loginlog.asp"
       				else
          				if (currentPage-1)*MaxPerPage<totalPut then
            				rs.move  (currentPage-1)*MaxPerPage
            				dim bookmark
            				bookmark=rs.bookmark
            				showContent
             				showpage totalput,MaxPerPage,"loginlog.asp"
        				else
	        				currentPage=1
           					showContent
           					showpage totalput,MaxPerPage,"loginlog.asp"
	      				end if
	   				end if
   				   				end if

   				sub showContent
       			dim i
	   			i=0%>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#FCFCFC" class="tableBorder">
<tr  align="center">
<td width="5%" bgcolor="#E1EFFF">序号</td>
<td bgcolor="#E1EFFF">对象</td>
<td bgcolor="#E1EFFF">ip</td>
<td bgcolor="#E1EFFF">事件</td>
<td bgcolor="#E1EFFF">时间</td>
<td width="10%" bgcolor="#E1EFFF">选 择</td>
</tr>
	<%
	do while not rs.eof%>
<tr >
<td align="center"><div align="center"><%=rs("loginlogid")%>
      </div>
</div></td>
<td STYLE='PADDING-LEFT: 10px'><div align="center"><%=rs("adminuser")%></div></td>
<td STYLE='PADDING-LEFT: 10px'><div align="center"><%=rs("adminip")%></div></td>
<td STYLE='PADDING-LEFT: 10px'><div align="center"><%=rs("shijian")%></div></td>
<td align="center"><%=rs("happentime")%></td>
<td align="center"><input name="selectbookid" type="checkbox" id="selectbookid" value="<%=rs("loginlogid")%>"></td>
</tr>
			<%i=i+1
			if i>=MaxPerPage then Exit Do
			rs.movenext
			loop
			rs.close
			set rs=nothing%>
<tr > 
<td height="30" colspan="6" align="right">
<input type="checkbox" name="checkbox" value="Check All" onClick="mm()"> 
<input type="submit" name="Submit" value="删 除" onClick="return test();">&nbsp;&nbsp;</td>
</tr>
</table>
				<%  
				End Sub   
  
				Function showpage(totalnumber,maxperpage,filename)  
  				Dim n
  				
				If totalnumber Mod maxperpage=0 Then  
					n= totalnumber \ maxperpage  
				Else
					n= totalnumber \ maxperpage+1  
				End If
				
				Response.Write "<form method=Post action="&filename&"?selectm="&selectm&"&selectkey="&selectkey&" >"  
				Response.Write "<p align='center' class='contents'> "  
				If CurrentPage<2 Then  
					Response.Write "<font class='contents'>首页 上一页</font> "  
				Else  
					Response.Write "<a href="&filename&"?page=1&selectm="&selectm&"&selectkey="&selectkey&" class='contents'>首页</a> "  
					Response.Write "<a href="&filename&"?page="&CurrentPage-1&"&selectm="&selectm&"&selectkey="&selectkey&" class='contents'>上一页</a> "  
				End If
				
				If n-currentpage<1 Then  
					Response.Write "<font class='contents'>下一页 尾页</font>"  
				Else  
					Response.Write "<a href="&filename&"?page="&(CurrentPage+1)&"&selectm="&selectm&"&selectkey="&selectkey&" class='contents'>"  
					Response.Write "下一页</a> <a href="&filename&"?page="&n&"&selectm="&selectm&"&selectkey="&selectkey&" class='contents'>尾页</a>"  
				End If  
					Response.Write "<font class='contents'> 页次：</font><font class='contents'>"&CurrentPage&"</font><font class='contents'>/"&n&"页</font> "  
					Response.Write "<font class='contents'> 共有"&totalnumber&" " 
					Response.Write "<font class='contents'>转到：</font><input type='text' name='page' size=2 maxlength=10 class=smallInput value="&currentpage&">"  
					Response.Write "&nbsp;<input type='submit'  class='contents' value='GO' name='cndok' ></form>"  
				End Function  
				%>
</td>
</form>
</tr>
</table>
</td>
        
      </tr>
    </table>
 
</body>
</html>


<script language=javascript>
function mm()
{
   var a = document.getElementsByTagName("input");
   if(a[0].checked==true){
   for (var i=0; i<a.length; i++)
      if (a[i].type == "checkbox") a[i].checked = false;
   }
   else
   {
   for (var i=0; i<a.length; i++)
      if (a[i].type == "checkbox") a[i].checked = true;
   }
}
</script>