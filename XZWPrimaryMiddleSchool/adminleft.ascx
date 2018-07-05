<%@ control language="C#" autoeventwireup="true" inherits="adminleft, wrxuanke" %>


<script>




    function showsubmenu(sid) {
   
        whichEl = eval("submenu" + sid);
        imgmenu = eval("imgmenu" + sid);
        if (whichEl.style.display == "none") {
            eval("submenu" + sid + ".style.display=\"\";");
            imgmenu.background = "images/main_47.gif";
        }
        else {
            eval("submenu" + sid + ".style.display=\"none\";");
            imgmenu.background = "images/main_48.gif";
        }

        for (i = 1; i < 6; i++) {
            if (sid == i) {
            }
            else {
                eval("submenu" + i + ".style.display=\"none\";");
                imgmenu.background = "images/main_48.gif";
            }

        }



    }


</script>

<table width="165" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="28" background="images/main_40.gif">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="19%">　</td>
        <td width="81%" height="20" align="left"><span class="STYLE1">管理菜单</span></td>
      </tr>
    </table>
	</td>
  </tr>
  <tr>
    <td valign="top">
	<table width="151" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" background="images/main_47.gif" id="imgmenu1" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(1)" onMouseOut="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="18%">　</td>
                <td width="82%" class="STYLE1" align="left">系统配置</td>
              </tr>
            </table>
			</td>
          </tr>
          <tr>
            <td background="images/main_51.gif" id="submenu1" <%if(Request.QueryString["caidanid"]!="1" && Request.QueryString["caidanid"]!=null && Request.QueryString["caidanid"]!="" ) { Response.Write("style='display:none;'");  }%><%else {  }%> >
			 <div class="sec_menu" >  
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>
				<table width="90%" border="0" align="left" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="16%" height="25"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                    <td width="84%" height="23">
					<table width="95%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td align="left" height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><a href="webconfig.aspx" ><span class="STYLE3">系统设置</span></a></td>
                        </tr>
                    </table>
					</td>
                  </tr>
 <tr>
                    <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                    <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td align="left" height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><a href="adminsj.aspx" ><span class="STYLE3">时间设置</span></a></td>
                        </tr>
                    </table></td>
                  </tr> 
                  
                  <tr>
                    <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                    <td height="23" align="left"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td align="left" height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><a href="admincsh.aspx" ><span class="STYLE3">系统初始化</span></a></td>
                        </tr>
                    </table></td>
                  </tr> 
				  
				  <tr>
                    <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                    <td height="23" align="left"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td align="left" height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><a href="adminxssjdr.aspx" ><span class="STYLE3">学生数据导入</span></a></td>
                        </tr>
                    </table></td>
                  </tr> 
                   <tr>
                    <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                    <td height="23" align="left"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td align="left" height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><a href="adminjssjdr.aspx" ><span class="STYLE3">教师数据导入</span></a></td>
                        </tr>
                    </table></td>
                  </tr> 
                  <tr>
                    <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                    <td height="23" align="left"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td align="left" height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><a href="kcfl.aspx" ><span class="STYLE3">课程分类管理</span></a></td>
                        </tr>
                    </table></td>
                  </tr>
                    <tr>
                    <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                    <td height="23" align="left"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td align="left" height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><a href="njgl.aspx" ><span class="STYLE3">年级分类管理</span></a></td>
                        </tr>
                    </table></td>
                  </tr>
                   <tr>
                    <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                    <td height="23" align="left"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td align="left" height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><a href="adminadmin.aspx" ><span class="STYLE3">管理员管理</span></a></td>
                        </tr>
                    </table></td>
                  </tr>
                   <tr>
                    <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                    <td height="23" align="left"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td align="left" height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><a href="admingg.aspx" ><span class="STYLE3">公告管理</span></a></td>
                        </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td height="5"><img src="images/main_52.gif" width="151" height="5" /></td>
              </tr>
            </table></div></td>
          </tr>
          
        </table></td>
      </tr>
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" background="images/main_47.gif" id="imgmenu2" class="menu_title" onmouseover="this.className='menu_title2';" onclick="showsubmenu(2)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="18%">　</td>
                  <td width="82%" class="STYLE1">师生管理</td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td background="images/main_51.gif" id="submenu2" <%if(Request.QueryString["caidanid"]!="2") { Response.Write("style='display:none;'");  }%><%else {  }%> ><div class="sec_menu" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="16%" height="25"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                          <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td align="left" height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'" ><a href="jsgl.aspx?caidanid=2" ><span class="STYLE3">教师管理</span></a></td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td align="left" height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><a href="xsgl.aspx?caidanid=2" ><span class="STYLE3">学生管理</span></a></td>
                              </tr>
                          </table></td>
                        </tr>
                       
                    </table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="images/main_52.gif" width="151" height="5" /></td>
                  </tr>
                </table>
            </div></td>
          </tr>
        </table>          </td>
      </tr>
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" background="images/main_47.gif" id="imgmenu3" class="menu_title" onmouseover="this.className='menu_title2';" onclick="showsubmenu(3)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="18%">　</td>
                  <td width="82%" class="STYLE1">课程管理</td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td background="images/main_51.gif" id="submenu3" <%if(Request.QueryString["caidanid"]!="3") { Response.Write("style='display:none;'");  }%><%else {  }%>><div class="sec_menu" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="16%" height="25"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                          <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                               <tr>
                                <td align="left" height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'" ><a href="kcgl.aspx?caidanid=3" ><span class="STYLE3">课程管理</span></a></td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td width="16%" height="25"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                          <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                               <tr>
                                <td align="left" height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'" ><a href="kcadd.aspx?caidanid=3" ><span class="STYLE3">课程添加</span></a></td>
                              </tr>
                          </table></td>
                        </tr>
                      
                    </table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="images/main_52.gif" width="151" height="5" /></td>
                  </tr>
                </table>
            </div></td>
          </tr>
        </table></td>
      </tr>
      
      
      
      
      
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" background="images/main_47.gif" id="imgmenu4" class="menu_title" onmouseover="this.className='menu_title2';" onclick="showsubmenu(4)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="18%">　</td>
                  <td width="82%" class="STYLE1">数据导出</td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td background="images/main_51.gif" id="submenu4" <%if(Request.QueryString["caidanid"]!="4") { Response.Write("style='display:none;'");  }%><%else {  }%>><div class="sec_menu" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="16%" height="25"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                          <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td align="left" height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><a href="xkjg.aspx?caidanid=4" ><span class="STYLE3">选课数据</span></a></td>
                              </tr>
                          </table></td>
                        </tr>
                     
                    </table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="images/main_52.gif" width="151" height="5" /></td>
                  </tr>
                </table>
            </div></td>
          </tr>
        </table></td>
      </tr>
      
      

















	  
      
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" background="images/main_47.gif" id="imgmenu5" class="menu_title" onmouseover="this.className='menu_title2';" onclick="showsubmenu(5)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="18%">　</td>
                  <td width="82%" class="STYLE1">数据备份</td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td background="images/main_51.gif" id="submenu5"  <%if(Request.QueryString["caidanid"]!="5") { Response.Write("style='display:none;'");  }%><%else {  }%>><div class="sec_menu" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="16%" height="25"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                          <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td align="left" height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><a href="sjk.aspx?caidanid=5" ><span class="STYLE3">数据备份</span></a></td>
                              </tr>
                          </table></td>
                        </tr>
                      
                    </table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="images/main_52.gif" width="151" height="5" /></td>
                  </tr>
                </table>
            </div></td>
          </tr>
        </table></td>
      </tr>
      
    </table></td>
  </tr>
  
</table>
