<%
Sub Actionbutton(menuid,rightnum,addurl)
	dim Action_sql,Action_rs,rs_right

			if rightnum="3" then

			if menuid="100" and InStr(nowpath,"billlist.asp")>0 then
			else
				if addurl="1" then
					response.write "<input name='menuid' type='hidden' id='menuid' value='"&request("menuid")&"'>"
					response.write "<input type='submit' name='Button91' value='�� ��'>"
				else
					response.write "<input type='button' name='Button91' value='�� ��' onClick=window.location.href='"&addurl&"'>"
				end if
			end if

			elseif rightnum="4" then
				response.write "<input name='menuid' type='hidden' id='menuid' value='"&request("menuid")&"'>"
			%>
				<input type='submit' name='submit91' value='ɾ��ѡ��' onclick="return confirm('ɾ����¼�п��ܵ������ݲ���������ȷ����ѡ��¼��û����������¼�������\n�����ɾ����ѡ�м�¼��')">
			<%
			elseif rightnum="5" then
				response.write "<input name='menuid' type='hidden' id='menuid' value='"&request("menuid")&"'>"
				response.write "<input type='submit' name='submit91' value='�� ��'>"
			else
				call alert("��������")
			end if

End Sub
%>


