<!--#include file="conn.asp"-->
<!--#include file="check2.asp"-->
<%
dbfolder="data/"   '���ݿ�·�����������������ݿ��·��������Ҳ������޸�
dbname="#shop7z.asp"    
dbfolder="../"&dbfolder
%>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../inc/i.css" type=text/css rel=stylesheet>
<style type="text/css">
<!--
.STYLE1 {
	color: #000000;
	font-weight: bold;
}
-->
</style>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
      <td> 
        <table class="tableBorder" width="90%" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#6a7f9a">
          <tr> 
            
          <td width="15%" align="center" bgcolor="#E1EFFF"><span class="STYLE1">���ݿ�������</span></td>
          </tr>
         
          <tr > 
            
          <td height="30" bgcolor="#FFFFFF" > 

<%
SET FSO=Server.CreateObject("Scripting.FileSystemObject")
 IF Err<>0 THEN
 Err.Clear
 Response.Write("<p>���ķ������ر���FSO���޷��������ݿ����")
 response.end
end if
action=request("action")
IF action<>"" THEN
strfileName=Request("FileName")

Function goaler_isFloderExist(strFolderName)
IF FSO.FolderExists(strFolderName) THEN
 goaler_isFloderExist=1
ELSE
 goaler_isFloderExist=-1
END IF
End Function

Function goaler_isfileExist(strfileName)
IF FSO.FileExists(strfileName) THEN
 goaler_isfileExist=1
ELSE
 goaler_isfileExist=-1
END IF
End Function

Function goaler_DeleteFile(strfileName)
 If FSO.FileExists(strfileName) Then
  FSO.DeleteFile strfileName,True
  goaler_DeleteFile=1
 Else
  goaler_DeleteFile=-1
 End If
End Function 
Function CopyFiles(TempSource,TempEnd)
 IF FSO.FileExists(TempEnd) THEN
  Response.Write "Ŀ���ļ� <b><font color=red>" & TempEnd & "</font></b> �Ѵ��ڣ�����ɾ��!"
  SET FSO=Nothing
  Exit Function
 End IF
 If Not FSO.FileExists(TempSource) Then
  Response.Write "Դ�ļ� <b><font color=red>"&TempSource&"</font></b> ������!"
  Set FSO=Nothing
  Exit Function
 End If
 FSO.CopyFile TempSource,TempEnd
 Response.Write "�Ѿ��ɹ������ļ� <b><font color=red>"&TempSource&"</font></b> �� <b><font color=red>"&TempEnd&"</font></b>"
End Function


 IF action="compact" THEN
 
  Response.write "<br><div align=center> ѹ�����ݿ����ȥ���������ݣ�Ϊ���ݿ���ʣ�ͬʱҲ������ٶȣ��˹������뾭��ʹ�ã�</div><div align=center><a href=?action=compact2>���ѹ�����ݿ⣡</a></div>"
 response.end
  
   ELSEIF action="compact2" THEN
  
  conn.close
  set conn=nothing
		
  Response.Write("<p>")
  IF goaler_isFileExist(Server.Mappath(dbfolder&dbname))=1 THEN
   Response.Write "ѹ�����ݿ⿪ʼ...<br>"
   Set Engine=CreateObject("JRO.JetEngine")
   Engine.CompactDatabase "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(dbfolder&dbname), "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.Mappath(dbfolder&"temp.mdb")
   SET FSO=Server.CreateObject("Scripting.FileSystemObject")
   FSO.CopyFile Server.Mappath(dbfolder&"temp.mdb"),Server.Mappath(dbfolder&dbname)
   FSO.DeleteFile(Server.Mappath(dbfolder&"temp.mdb"))
   Set Engine=Nothing
   Response.write "���ݿ⣺<font color=red>"&Server.MapPath(dbfolder&dbname)&"</font>ѹ����ɣ�"
  ELSE
   Response.Write("���ݿ�Դ�ļ���<b><font color=red>"&Server.Mappath(dbfolder&dbname)&"</font></b>�����ڣ�")
  END IF
  response.end

 
 ELSEIF action="backup" THEN
 Function GetTotalSize(GetLocal,GetType)
Set FSO=Server.CreateObject("Scripting.FileSystemObject")
If Err<>0 Then
   Err.Clear
   GetTotalSize="��������֧��FSO���鿴�ռ�ʧ��"
Else
   Dim SiteFolder
   If GetType="Folder" Then
      Set SiteFolder=FSO.GetFolder(GetLocal) 
   Else
      Set SiteFolder=FSO.GetFile(GetLocal) 
   End If
   GetTotalSize=SiteFolder.Size
   If GetTotalSize>1024*1024 Then
      GetTotalSize=GetTotalSize/1024/1024
      If inStr(GetTotalSize,".") Then GetTotalSize=Left(GetTotalSize,inStr(GetTotalSize,".")+2)
         GetTotalSize=GetTotalSize&" MB"
      Else
         GetTotalSize=Fix(GetTotalSize/1024)&" KB"
      End If
         Set SiteFolder=Nothing
   End If
Set FSO=Nothing
End Function
	  Response.write "<br><div align=center>���ݿⱸ�ݿ��Է�ֹ�Ժ���վ���������ʱ�õ��ָ������龭���������ݿⲢ���ر���</div>"
	   response.write " <div align=center>��ǰ���ݿ��СΪ:<strong>"&GetTotalSize(Server.Mappath(dbfolder&dbname),File)&"</strong> <a href=?action=backup2>��˱��ݿ�ʼ��</a></div>"
	 
	
 response.end
  
   ELSEIF action="backup2" THEN
  BackUpTime=right(year(now()),4)&month(now())&day(now())&hour(now())&minute(now())&second(now())
  Response.Write("�������ݿ⿪ʼ...<br>")
  shop7zdb="shop7z"
  CopyFiles Server.Mappath(dbfolder&dbname),Server.Mappath(dbfolder&shop7zdb & "_" & BackUpTime &".bak")
  Response.write "<br>���ݿⱸ����ɣ�<br>"
  Response.write "ע����α������ݻ�ռ�ý϶�Ŀռ䣬�뼰ʱ�Ա��ݵ����ݿ�������ر��ݻ�ɾ���� "
  response.end
  
 ELSEIF action="restore" THEN
  RestoreFileName=strFileName
  Response.Write("<p>")
  IF goaler_isFileExist(Server.Mappath(dbfolder&RestoreFileName))=1 THEN
   Response.Write "��ʼ�ָ����ݿ�...<br>"
   FSO.CopyFile Server.Mappath(dbfolder&RestoreFileName),Server.Mappath(dbfolder&dbname)
   Response.write "���ݿ�ָ���ɣ��ӱ������ݿ⣺<b><font color=red>"&Server.MapPath(dbfolder&RestoreFileName)&"</font></b> ����<b><font color=red>"&Server.MapPath(dbfolder&dbname)&"</font></b>��"
  ELSE
   Response.Write("�����ļ���<b><font color=red>"&Server.Mappath(dbfolder&RestoreFileName)&"</font></b>������,���ߺ��������ַ�����")
  END IF
  Response.Write("<br><a href="""&Request.ServerVariables("HTTP_REFERER")&""">��������</a>")
  response.end
 
   ELSEIF(action="delfile")THEN
  Response.Write("<p>")
  IF goaler_isFileExist(Server.Mappath(dbfolder&strFileName))=1 THEN
   IF goaler_DeleteFile(Server.Mappath(dbfolder&strFileName))=1 THEN
    Response.Write("�ѳɹ�ɾ�������ļ���<b><font color=red>"&Server.Mappath(dbfolder&strFileName)&"</font></b>��")
   ELSE
    Response.Write("ɾ�������ļ���<b><font color=red>"&Server.Mappath(dbfolder&strFileName)&"</font></b> ʧ�ܣ�")
   END IF
  ELSE
    Response.Write("�����ļ���<b><font color=red>"&Server.Mappath(dbfolder&strFileName)&"</font></b> ������,���ߺ��������ַ���")
  END IF 
  Response.Write("<br><a href="""&Request.ServerVariables("HTTP_REFERER")&""">��������</a>")
  response.end
 ELSEIF(action="backupList")THEN
  Response.Write("<p>")
  dcheck=0
  Set DataFolder=FSO.GetFolder(Server.MapPath(dbfolder))
  Set DataFileList=DataFolder.Files
   For Each DataFile in DataFileList
    If Instr(DataFile,"bak") Then
     DataFileName=DataFile.Name
     Response.Write "<font color=#FF0000>"&DataFileName&"</font>&nbsp;&nbsp;|&nbsp;&nbsp;"
     Response.Write "����ʱ�䣺"&DataFile.DateCreated&"&nbsp;&nbsp;|&nbsp;&nbsp;"
     Response.Write "<a href="&dbfolder&DataFileName&">����</a>&nbsp;|&nbsp;"
     Response.Write "<a href=mgdata.asp?action=delfile&FileName="&DataFileName&" onclick=""return confirm('ȷ��Ҫɾ���ñ����ļ���')"">ɾ��</a>&nbsp;|&nbsp;"
     Response.Write "<a href=mgdata.asp?action=restore&FileName="&DataFileName&" onclick=""return confirm('ȷ��Ҫ�Ӹñ����ļ���ԭ������')"">�Ӵ˱����ļ���ԭ����</a><br>"
     dcheck=1
    End If
   Next
   if dcheck=0 then Response.Write "���ݿ���δ���ݣ��򱸷������ѱ�ɾ��!(�뱸�ݺ���ִ�лָ�)"
 END IF
END IF 
SET FSO=Nothing
%></td>
          </tr>
        </table>
				
      </td>

</tr>
</table>

