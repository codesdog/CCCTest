<!--#include file="conn.asp"-->
<html>
<head>
<title>�ϴ�ͼƬ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style>
input{
      	BORDER-RIGHT: #FFCC66 1px solid; BORDER-TOP: #FFCC66 1px solid; FONT-SIZE: 9pt; BORDER-LEFT: #FFCC66 1px solid; BORDER-BOTTOM: #FFCC66 1px solid; FONT-FAMILY: "����"; BACKGROUND-COLOR: #FAFAFA
}
td { font-size: 12px; line-height: 160%;font-family: "����"}
</style>


</head>
<body  text="#000000" leftmargin="0" topmargin="0" >
<table width="336" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="336" height="74" valign="top" align=center>
<%
	response.write " �ϴ�ͼƬǰ���뿴�鿴ͼƬ�ĳ�������˵���� " 
%>
<br>
      ѡ���ͼƬ�ļ���ҪΪ��ĸ�����֡�
	   <br> 
      <table width="314" height="77" border="0" cellpadding="0" cellspacing="0">
	  	   <form name="theForm" method="post" action="saveupload.asp" enctype="multipart/form-data">
		<tr> 
		
            <td width="314" height="77"> 
              <div align="center"> 
			  	<input type="hidden" name="size" value="<%=request.QueryString("size")%>" >
				<input type="hidden" name="mylogo" value="<%=request.QueryString("mylogo")%>" >
                <input type="hidden" name="filepath" value="uploadimages" >
                <input type="hidden" name="act" value="upload">
                <input type="file" name="file1" SIZE="32"  onchange="document.all('photo_2').src =this.value;">
                <br>
                <br>
                <input type="submit" name="Submit" value=" �ϴ�ͼƬ " onClick="juge"><br>
			
              </div></td>
         
        </tr>
		 </form>
		 <tr height=170><td><img name='photo_2' width="250" border="0" src=""></td></tr>
		 
      </table></td>
  </tr>
  <tr>
    <td height="53" valign="top">&nbsp;</td>
  </tr>
</table>
</body>
</html>











