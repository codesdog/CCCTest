<!--#include file="conn.asp"-->
<html>
<head>
<title>�ϴ�ͼƬ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style>
input{
      	height:22px;BORDER-RIGHT: #FFCC66 1px solid; BORDER-TOP: #FFCC66 1px solid; FONT-SIZE: 9pt; BORDER-LEFT: #FFCC66 1px solid; BORDER-BOTTOM: #FFCC66 1px solid; FONT-FAMILY: "����"; BACKGROUND-COLOR: #FAFAFA
}
td { font-size: 12px; line-height: 160%;font-family: "����"}
</style>


</head>
<body  text="#000000" leftmargin="0" topmargin="0" >
 <div id="uploading" style="position:absolute; top:65px; left:30px; z-index:10; display:none; width: 345px; height: 43px;"> 
  <table width=92% border=0 align="center" cellpadding=0 cellspacing=0>
<tr> 
      <td height="39"> 
		<table width=96% height=32 border=0 cellpadding=0 cellspacing=2 bgcolor="#66CC66">
			<tr> 
            <td height="28" align=center bgcolor=#CEFF9C>����ִ���ϴ�, ���Ե�... </td>
			</tr>
        </table>
</td>
    </tr>
  </table>
</div>

<table width="336" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="336" height="74" valign="top" align=center>
<%
	response.write "�ϴ���ƷͼƬ(Сͼ50K ��ͼ150K����) .jpg �� .gif"
%>
<br>ѡ����Ʒ�ļ�������Ϊ��ĸ�����֣���Ҫ�пո���ر����
      <br> 
      <table width="320" height="77" border="0" cellpadding="0" cellspacing="0">
		  <form name="theForm" method="post" action="saveupload.asp" enctype="multipart/form-data">
		<tr> 
          
            <td> 
              <div align="center"> 
			  	<input type="hidden" name="size" value="<%=request("size")%>" >
                <input type="hidden" name="filepath" value="uploadimages" >
                <input type="hidden" name="act" value="upload">
                <input type="file" name="file1" SIZE="44"  onchange="document.all('photo_2').src =this.value;">
                <br>
                <input type="submit" name="Submit" value=" �ϴ�ͼƬ " style="background-color:#eeeeee;width:100px;height:25px;" onClick="uploading.style.display='';"><br>
              </div></td>
        </tr>
		</form>
		<tr height=130><td align=center><img name='photo_2' width="100" height="100" border="0" src="" alt="��Ҫ�ϴ���ͼƬԤ����"></td></tr>
		<tr height=40><td align=center><a href=javascript:window.close()>[�رմ���]</a></td></tr>
      </table></td>
  </tr>
  <tr>
    <td valign="top">&nbsp;</td>
  </tr>
</table>
</body>
</html>
