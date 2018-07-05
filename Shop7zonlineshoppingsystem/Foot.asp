<style type="text/css">
<!--
.style1 {font-weight: bold}
.style2 {
	color: #993333;
	font-weight: bold;
}
-->
</style>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<TABLE width="960" border=0 align="center" cellPadding=0 cellSpacing=0 ><tr><td height=10></td></tr></table>
<TABLE width="100%" border=0 align="center" cellPadding=0 cellSpacing=0 bgcolor="#f5f5f5">
  <!--DWLayoutTable-->
	<TBODY>
    <TR>
      <TD valign="top"> 
	  
	    <table  width="100%"  border="0" cellPadding=0 cellSpacing=0><tr><td height=1 bgcolor="#CCCCCC"></td><tr></table>
		
        <table border="0" width="920" align="center" cellPadding=0 cellSpacing=0>
		<tr>
		<td valign='top' width='150'>
        <%
		sql4="select l_id,menukind,l_title,zhidingurl,newopen from e_left where showflag='是' and bigmenu='否' order by bigmenu desc,l_num"
		set rs4=server.createobject("adodb.recordset")
		rs4.open sql4,conn,1,1
		if rs4.bof or rs4.eof then
		else
			i=1
			j=1
			colshu=rs4.recordcount
			
			do while not rs4.eof

				l_id=rs4("l_id")
				menukind=rs4("menukind")
				l_title=rs4("l_title")
				zhidingurl=rs4("zhidingurl")
				newopen=rs4("newopen")
				
				if i>1 then
					response.write "</td><td valign='top'  width='145'>"
					j=1
				end if
				
				response.write "<table cellPadding=0 cellSpacing=0><tr><td height=12></td><tr></table><b>"&l_title&"</b><br>"				
				
				sql3="select * from e_contect where c_parent2="&l_id&" order by c_num,c_id"
				set rs3=server.CreateObject("adodb.recordset")
				rs3.open sql3,conn,1,1
				if rs3.bof or rs3.eof then
				else
					do while not rs3.eof
						set c_id=rs3("c_id")
						set c_title=rs3("c_title")
						set c_addtime=rs3("c_addtime")
						set detail=rs3("detail")
						response.Write "<table cellPadding=0 cellSpacing=0><tr><td height=7></td><tr></table><IMG width=15 height=10 src='images/right1_"&j&".gif' align=absMiddle> <a style='line-height:130%;' href='show_foot.asp?c_id="&c_id &"'"
						if newopen="是" then response.write " target='_blank' "
						response.Write ">"&c_title &"</a><br>"
						j=j+1
						rs3.movenext
					loop
				end if
				
			rs4.movenext
  			i=i+1
  			loop			
		end if
		rs4.close
		set rs4=nothing		
		%>
		
	    </td></tr></table>
		
		<table  width="100%"  border="0" cellPadding=0 cellSpacing=0 style="margin-top:15px;"><tr><td height=1 bgcolor="#CCCCCC"></td><tr></table>
		
	  </TD>
    </TR>
  </TBODY>
</table>




<TABLE width="960" border=0 align="center" cellPadding=0 cellSpacing=0>
  <TBODY>
    <TR><td colspan=3 height=10></td></tr>
    <TR> 
      <TD width="36%" height=100 valign="top"><p align="right"><img src="images/logo.jpg"></p></TD>
      <TD width="2%">&nbsp;</TD>
      <TD width="62%" valign="top"> 
        <%
			sql4="select * from siteright"
			set rs4=server.createobject("adodb.recordset")
			rs4.open sql4,conn,1,1
			if rs4.bof or rs4.eof then
					copyright=""
			else
					copyright=rs4("copyright")
			end if
			rs4.close
			set rs4=nothing
			response.write copyright
			%>
      </TD>
    </TR>
	<TR><td colspan=3 height=10></td></tr>
  </TBODY>
</TABLE>
<!--#include file="qqkefu.asp"-->