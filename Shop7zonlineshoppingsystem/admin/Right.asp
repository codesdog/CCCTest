<link href="images/skin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" /><style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}
-->
</style>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td valign="top" background="images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">��ӭ����</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="images/mail_rightbg.gif"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td valign="middle" background="images/mail_leftbg.gif">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td colspan="2" valign="top">&nbsp;</td>
        <td>&nbsp;</td>
        <td valign="top">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2" valign="top"><span class="left_bt">��л��ʹ�� Shop7z���Ϲ���ϵͳ</span><br>
              <br>
            <span class="left_txt">&nbsp;<img src="images/ts.gif" width="16" height="16">��ʾ��<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1��������ʹ�õ���www.Shop7z.com������������ҵ���������Ͽ�����̳�ϵͳ�������Ϊ��ҵ�����<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2��������ܹ��ʰ�Ȩ���������κε�λ����˶Ա�������е��渴�ƣ���׷���䷨������!<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3��<a href="http://www.shop7z.com/images/CopyRightShop7z.Jpg">�������Ȩ֤��ǼǺ�:2014SR001852 �������ֵ�0671096�š�</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5��Shop7z�ͻ�����绰��0311��85315152��13102887321���ͷ�QQ��275084681 </span><span class="left_txt"><br>
</span></td>
        <td width="7%">&nbsp;</td>
        <td width="40%" valign="top"><table width="100%" height="144" border="0" cellpadding="0" cellspacing="0" class="line_table">
          <tr>
            <td width="7%" height="27" background="images/news-title-bg.gif"><img src="images/news-title-bg.gif" width="2" height="27"></td>
            <td width="93%" background="images/news-title-bg.gif" class="left_bt2">���¶�̬</td>
          </tr>
          <tr>
            <td colspan="2" valign="top"><iframe id=Cart src=http://www.Shop7z.com/notice.asp width=100% height=100% marginwidth="0" marginheight="0" frameborder="0"scrolling="no"></iframe></td>
            </tr>
          
        </table></td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2" valign="top"><!--JavaScript����-->
           <script  language="JavaScript" type="text/javascript">
function  secBoard(n)
{
   var secTable=document.getElementById("secTable");
   var mainTable=document.getElementById("mainTable");
   
for(i=0;i<secTable.rows[0].cells.length;i++)
secTable.rows[0].cells[i].className="sec1";
 

secTable.rows[0].cells[n].className="sec1";
 


for(i=0;i<mainTable.tBodies.length;i++)

mainTable.tBodies[i].style.display="none";
mainTable.tBodies[n].style.display="block";
}
                    </script>
              <!--HTML����-->
              <TABLE width=100% border=0 cellPadding=0 cellSpacing=0 id=secTable>
                <TBODY>
                  <TR align=middle height=20>
 
                   
                    <TD align="center" class=sec2 onclick=secBoard(0)>ϵͳ����</TD>
                    <TD align="center" class=sec1 onclick=secBoard(1)>��Ȩ˵��</TD>
                  </TR>
                </TBODY>
            </TABLE>
          <TABLE class=main_tab id=mainTable cellSpacing=0
cellPadding=0 width=100% border=0>
                <!--����TBODY���-->
               
                <!--����tBodies����-->
                <TBODY style="DISPLAY: block">
                  <TR>
                    <TD vAlign=top align=middle><TABLE width=585 border=0 align="center" cellPadding=0 cellSpacing=0>
                        <TBODY>
                          <TR>
                            <TD colspan="3"></TD>
                          </TR>
                          <TR>
                            <TD height="5" colspan="3"></TD>
                          </TR>
                          <TR>
                            <TD width="4%" height="25" background="images/news-title-bg.gif"></TD>
                            <TD height="25" background="images/news-title-bg.gif" class="left_txt"><span class="TableRow2">������IP��</span><%=Request.ServerVariables("LOCAL_ADDR")%></TD>
                            <TD height="25" background="images/news-title-bg.gif" class="left_txt">������ʱ�䣺<%=now%></TD>
                          </TR>
                          <TR>
                            <TD height="25" bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD width="42%" height="25" bgcolor="#FAFBFC"><span class="left_txt">���������ƣ�<%=Request.ServerVariables("SERVER_NAME")%></span></TD>
                            <TD width="54%" height="25" bgcolor="#FAFBFC"><span class="left_txt">�ű��������棺<%=ScriptEngine & "/"& ScriptEngineMajorVersion &"."&ScriptEngineMinorVersion&"."& ScriptEngineBuildVersion %></span></TD>
                          </TR>
                          <TR>
                            <TD height="25" bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD height="25" colspan="2" bgcolor="#FAFBFC"><span class="left_txt">����·����<%=server.mappath(Request.ServerVariables("SCRIPT_NAME"))%></span></TD>
                          </TR>
                          <TR>
                            <TD height="25" bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt"><span class="TableRow2">������ϵͳ</span>��</span><%=Request.ServerVariables("OS")%></TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">CPU������</span><%=Request.ServerVariables("NUMBER_OF_PROCESSORS")%>��</TD>
                          </TR>
                         
                          <TR>
                            <TD height="5" colspan="3"></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                  </TR>
                </TBODY>
                <!--����display����-->
                <TBODY style="DISPLAY: none">
                  <TR>
                    <TD vAlign=top align=middle><TABLE width=585 border=0 align="center" cellPadding=0 cellSpacing=0>
                        <TBODY>
                          <TR>
                            <TD colspan="2"></TD>
                          </TR>
                          <TR>
                            <TD height="5" colspan="2"></TD>
                          </TR>
                          <TR>
                            <TD width="4%" background="images/news-title-bg.gif"></TD>
                            <TD background="images/news-title-bg.gif" class="left_ts">��Shop7z������˵����</TD>
                          </TR>
                          <TR>
                            <TD bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD bgcolor="#FAFBFC" class="left_txt"><span class="left_ts">1��</span>��������www.Shop7z.com����(Tel:0311-85315152) </TD>
                          </TR>
                          <TR>
                            <TD bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD bgcolor="#FAFBFC" class="left_txt"><span class="left_ts">2��</span>������Ϊ��ҵ������Ͻ��κε�λ����ת��/���ۣ��������</TD>
                          </TR>
                          <TR>
                            <TD bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD bgcolor="#FAFBFC" class="left_txt"><span class="left_ts">3��</span>������ܹ��ҷ��ɱ�����֧�����ߵ��Ͷ����뱣����Ȩ��</TD>
                          </TR>
                          <TR>
                            <TD bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD bgcolor="#FAFBFC" class="left_txt"><span class="left_ts">4��</span>����ʹ�ã�����֧������ϵwww.Shop7z.com��</TD>
                          </TR>
                          <TR>
                            <TD height="5" colspan="2"></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                  </TR>
                </TBODY>
            </TABLE></td>
        <td>&nbsp;</td>
        <td valign="top"><table width="100%" height="144" border="0" cellpadding="0" cellspacing="0" class="line_table">
          <tr>
            <td width="7%" height="27" background="images/news-title-bg.gif"><img src="images/news-title-bg.gif" width="2" height="27"></td>
            <td width="93%" background="images/news-title-bg.gif" class="left_bt2">����˵��</td>
          </tr>
          <tr>
            <td height="102" valign="top">&nbsp;</td>
            <td height="102" valign="top"><label></label>
              <label>
              <textarea name="textarea" cols="48" rows="8" style="width:350px;height:110px;" class="left_txt">һ��Shop7z����ϵͳ��רҵ�����Ͽ�����ѡ������
����ӵ����ȫ����֪ʶ��Ȩ������ܹ��ҷ��ɱ�����
����֧����Ʒ�������๦�ܣ�֧����Ʒ�������๦�ܣ�֧����Ʒ��Ϣ�����޸ġ�ͼƬ�����ϴ����ظ����ù��ܡ�
�ġ�������ƾ�������̨����ǿ��ɵ��ʽ��̨����������רҵ����վ����֪ʶ��ֻҪ����֣��ͻ����ά�����ꡣ</textarea>
              </label></td>
          </tr>
          <tr>
            <td height="5" colspan="2">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="40" colspan="4"><table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
          <tr>
            <td></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td width="2%">&nbsp;</td>
        <td width="51%" class="left_txt"><img src="images/icon-mail2.gif" width="16" height="11"> �ͻ��������䣺Shop7z@126.com �ͷ��绰��0311-85315152 <br>
              <img src="images/icon-phone.gif" width="17" height="14"> �ٷ���վ��http://www.Shop7z.com</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
    <td background="images/mail_rightbg.gif">&nbsp;</td>
  </tr>
  <tr>
    <td valign="bottom" background="images/mail_leftbg.gif"><img src="images/buttom_left2.gif" width="17" height="17" /></td>
    <td background="images/buttom_bgs.gif"><img src="images/buttom_bgs.gif" width="17" height="17"></td>
    <td valign="bottom" background="images/mail_rightbg.gif"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
  </tr>
</table>
</body>
