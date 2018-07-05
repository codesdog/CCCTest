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
        <td height="31"><div class="titlebt">欢迎界面</div></td>
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
        <td colspan="2" valign="top"><span class="left_bt">感谢您使用 Shop7z网上购物系统</span><br>
              <br>
            <span class="left_txt">&nbsp;<img src="images/ts.gif" width="16" height="16">提示：<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、您现在使用的是www.Shop7z.com开发的用于企业及个人网上开店的商城系统！本软件为商业软件！<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、本软件受国际版权法保护，任何单位或个人对本软件进行盗版复制，必追究其法律责任!<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3、<a href="http://www.shop7z.com/images/CopyRightShop7z.Jpg">软件著作权证书登记号:2014SR001852 软著登字第0671096号　</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5、Shop7z客户服务电话：0311－85315152　13102887321　客服QQ：275084681 </span><span class="left_txt"><br>
</span></td>
        <td width="7%">&nbsp;</td>
        <td width="40%" valign="top"><table width="100%" height="144" border="0" cellpadding="0" cellspacing="0" class="line_table">
          <tr>
            <td width="7%" height="27" background="images/news-title-bg.gif"><img src="images/news-title-bg.gif" width="2" height="27"></td>
            <td width="93%" background="images/news-title-bg.gif" class="left_bt2">最新动态</td>
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
        <td colspan="2" valign="top"><!--JavaScript部分-->
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
              <!--HTML部分-->
              <TABLE width=100% border=0 cellPadding=0 cellSpacing=0 id=secTable>
                <TBODY>
                  <TR align=middle height=20>
 
                   
                    <TD align="center" class=sec2 onclick=secBoard(0)>系统参数</TD>
                    <TD align="center" class=sec1 onclick=secBoard(1)>版权说明</TD>
                  </TR>
                </TBODY>
            </TABLE>
          <TABLE class=main_tab id=mainTable cellSpacing=0
cellPadding=0 width=100% border=0>
                <!--关于TBODY标记-->
               
                <!--关于tBodies集合-->
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
                            <TD height="25" background="images/news-title-bg.gif" class="left_txt"><span class="TableRow2">服务器IP：</span><%=Request.ServerVariables("LOCAL_ADDR")%></TD>
                            <TD height="25" background="images/news-title-bg.gif" class="left_txt">服务器时间：<%=now%></TD>
                          </TR>
                          <TR>
                            <TD height="25" bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD width="42%" height="25" bgcolor="#FAFBFC"><span class="left_txt">服务器名称：<%=Request.ServerVariables("SERVER_NAME")%></span></TD>
                            <TD width="54%" height="25" bgcolor="#FAFBFC"><span class="left_txt">脚本解释引擎：<%=ScriptEngine & "/"& ScriptEngineMajorVersion &"."&ScriptEngineMinorVersion&"."& ScriptEngineBuildVersion %></span></TD>
                          </TR>
                          <TR>
                            <TD height="25" bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD height="25" colspan="2" bgcolor="#FAFBFC"><span class="left_txt">物理路径：<%=server.mappath(Request.ServerVariables("SCRIPT_NAME"))%></span></TD>
                          </TR>
                          <TR>
                            <TD height="25" bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt"><span class="TableRow2">服务器系统</span>：</span><%=Request.ServerVariables("OS")%></TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">CPU个数：</span><%=Request.ServerVariables("NUMBER_OF_PROCESSORS")%>个</TD>
                          </TR>
                         
                          <TR>
                            <TD height="5" colspan="3"></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                  </TR>
                </TBODY>
                <!--关于display属性-->
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
                            <TD background="images/news-title-bg.gif" class="left_ts">《Shop7z》程序说明：</TD>
                          </TR>
                          <TR>
                            <TD bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD bgcolor="#FAFBFC" class="left_txt"><span class="left_ts">1、</span>本程序由www.Shop7z.com开发(Tel:0311-85315152) </TD>
                          </TR>
                          <TR>
                            <TD bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD bgcolor="#FAFBFC" class="left_txt"><span class="left_ts">2、</span>本程序为商业软件，严禁任何单位个人转载/销售，后果负责！</TD>
                          </TR>
                          <TR>
                            <TD bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD bgcolor="#FAFBFC" class="left_txt"><span class="left_ts">3、</span>本软件受国家法律保护，支持作者的劳动，请保留版权。</TD>
                          </TR>
                          <TR>
                            <TD bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD bgcolor="#FAFBFC" class="left_txt"><span class="left_ts">4、</span>程序使用，技术支持请联系www.Shop7z.com。</TD>
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
            <td width="93%" background="images/news-title-bg.gif" class="left_bt2">程序说明</td>
          </tr>
          <tr>
            <td height="102" valign="top">&nbsp;</td>
            <td height="102" valign="top"><label></label>
              <label>
              <textarea name="textarea" cols="48" rows="8" style="width:350px;height:110px;" class="left_txt">一、Shop7z购物系统是专业的网上开店首选方案！
二、拥有完全自主知识产权，软件受国家法律保护！
三、支持商品分属两类功能，支持商品三级分类功能，支持商品信息批量修改、图片批量上传及重复计用功能。
四、界面设计精美，后台功能强大。傻瓜式后台操作，无需专业的网站制作知识，只要会打字，就会管理维护网店。</textarea>
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
        <td width="51%" class="left_txt"><img src="images/icon-mail2.gif" width="16" height="11"> 客户服务邮箱：Shop7z@126.com 客服电话：0311-85315152 <br>
              <img src="images/icon-phone.gif" width="17" height="14"> 官方网站：http://www.Shop7z.com</td>
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
