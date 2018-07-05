<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left.aspx.cs" Inherits="left" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <STYLE type="text/css">
        .BODY {
	BACKGROUND: #799ae1; MARGIN: 0px; FONT: 9pt 宋体
}
TABLE {
	BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px
}
TD {
	FONT: 12px 宋体
}
IMG {
	BORDER-RIGHT: 0px; BORDER-TOP: 0px; VERTICAL-ALIGN: bottom; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px
}
A {
	FONT: 12px 宋体; COLOR: #000000; TEXT-DECORATION: none
}
A:hover {
	COLOR: #428eff; TEXT-DECORATION: underline
}
.sec_menu {
	BORDER-RIGHT: white 1px solid; BACKGROUND: #d6dff7; OVERFLOW: hidden; BORDER-LEFT: white 1px solid; BORDER-BOTTOM: white 1px solid
}
.menu_title {
	
}
.menu_title SPAN {
	FONT-WEIGHT: bold; LEFT: 7px; COLOR: #215dc6; POSITION: relative; TOP: 2px
}
.menu_title2 {
	
}
.menu_title2 SPAN {
	FONT-WEIGHT: bold; LEFT: 8px; COLOR: #428eff; POSITION: relative; TOP: 2px
}
</STYLE>

<SCRIPT language=javascript1.2>
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
}
}
</SCRIPT>
</head>
<body leftMargin=0 topMargin=0 marginwidth="0" marginheight="0">
    <form id="form1" runat="server">
    <div>
    <TABLE cellSpacing=0 cellPadding=0 width="100%" align=left border=0>
  <TBODY>
  <TR>
    <TD vAlign=top bgColor=#799ae1>
      <TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
        <TBODY>
        <TR>
          <TD vAlign=bottom height=42><IMG height=38 
            src="left.files/title.gif" width=158> </TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
        <TBODY>
        <TR>
          <TD class=menu_title onMouseOver="this.className='menu_title2';" 
          onmouseout="this.className='menu_title';" background="" 
            height=25><SPAN>
			|<asp:Label ID="Label1" runat="server"></asp:Label>
                &nbsp;<asp:LinkButton ID ="lb1"  runat="server" Text="退出" OnClick="lb1_Click"  OnClientClick="javascript:return confirm('确定退出吗?');"></asp:LinkButton></SPAN></TD>
        </TR>
        <TR>
          <TD class=menu_title onMouseOver="this.className='menu_title2';" 
          onmouseout="this.className='menu_title';" background="" 
            height=25></TD>
</TR>
        </TBODY></TABLE>
	  <TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
        <TBODY>
        <TR>
          <TD class=menu_title id=menuTitle1 
          onmouseover="this.className='menu_title2';" onclick=showsubmenu(0) 
          onmouseout="this.className='menu_title';" 
          background=left.files/admin_left_1.gif 
            height=25><span><B>基本管理</B></span></TD>
        </TR>
        <TR>
          <TD id=submenu0>
            <DIV class=sec_menu style="WIDTH: 158px ">
            <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              <TR>
                <TD height=20><a href="modifyconfig.aspx" target="mainFrame">网站基本设置</a></TD>
              </TR>
               <TR>
                <TD height=20><a href="PersonInfo.aspx?action=add" target="mainFrame">管理员管理</a></TD>
              </TR>
                  <tr>
                      <td height="20">
                          <a href="admin_count.asp" target="mainFrame">后台登陆记录</a></td>
                  </tr>
               
              </TBODY></TABLE>
            </DIV>
            <DIV style="WIDTH: 158px">
            <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              <TR>
                <TD height=20></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE>
   
	  

      <TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
        <TBODY>
          <TR>
            <TD class=menu_title id=TD1 
          onmouseover="this.className='menu_title2';" onclick=showsubmenu(2) 
          onmouseout="this.className='menu_title';" 
          background=left.files/admin_left_2.gif height=25><SPAN>关于我们</SPAN> </TD>
          </TR>
          <TR>
            <TD id=submenu2><DIV class=sec_menu style="WIDTH: 158px">
                <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
                  <TBODY>
                    <TR>
                      <TD height=20><a href="add_about.aspx?action=add" target="mainFrame">管理分类增加单页</a></TD>
                    </TR>
                    <TR>
                      <TD height=20><a href="add_about.aspx?action=list" target="mainFrame">管理单页</a></TD>
                    </TR>
                    <TR>
                      <TD height=20><a href="abt.aspx?action=add" target="mainFrame">增加单页</a></TD>
                    </TR>
                      <tr>
                          <td height="20">
                             <a href ="customers.aspx" target="mainFrame" > 网站会员管理</a></td>
                      </tr>
                  </TBODY>
                </TABLE>
            </DIV>
                <DIV style="WIDTH: 158px">
                  <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
                    <TBODY>
                      <TR>
                        <TD 
      height=20></TD>
                      </TR>
                    </TBODY>
                  </TABLE>
                </DIV></TD>
          </TR>
        </TBODY>
      </TABLE>
	  <!--会员管理-->
 <TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
        <TBODY>
          <TR>
            <TD class=menu_title id=TD1 
          onmouseover="this.className='menu_title2';" onclick=showsubmenu(38) 
          onmouseout="this.className='menu_title';" 
          background=left.files/admin_left_2.gif height=25><SPAN>新闻管理</SPAN></TD>
          </TR>
          <TR>
            <TD id=submenu38><DIV class=sec_menu style="WIDTH: 158px">
                <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
                  <TBODY>
                    <TR>
                      <TD height=20>
                        <a href="AddChNews.aspx" target="mainFrame">添加中文新闻</a></TD>
                    </TR>
                    <TR>
                      <TD height=20><a href="AddEnNews.aspx" target="mainFrame">添加英文新闻</a></TD>
                    </TR>
                    <TR>
                      <TD height=20>
                         <a href="NewsList.aspx" target="mainFrame">新闻列表</a></TD>
                    </TR>
                     <tr >
                <td height=20>
                <a href="AddNews.aspx?action=NewsClass" target="mainFrame">新闻分类</a></td>
              </tr>
                  </TBODY>
                </TABLE>
            </DIV>
                <DIV style="WIDTH: 158px">
                  <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
                    <TBODY>
                      <TR>
                        <TD 
      height=20></TD>
                      </TR>
                    </TBODY>
                  </TABLE>
                </DIV></TD>
          </TR>
        </TBODY>
      </TABLE>
	
	  <TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
        <TBODY>
        <TR>
          <TD class=menu_title id=TD2 
          onmouseover="this.className='menu_title2';" onclick=showsubmenu(1) 
          onmouseout="this.className='menu_title';" 
          background=left.files/admin_left_2.gif height=25><SPAN>招聘管理</SPAN> 
          </TD>
        </TR>
        <TR>
          <TD id=submenu1>
            <DIV class=sec_menu style="WIDTH: 158px">
            <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              <TR>
                <TD height=20><a href="zhaopin.aspx?action=add" target="mainFrame">发布招聘信息</a></TD>
              </TR>
              <TR>
                <TD height=20><a href="yinpin.aspx" target="mainFrame">应聘用户列表</a></TD>
              </TR>
                <TR>
                <TD height=20><a href="zhaopinlist.aspx" target="mainFrame">招聘信息管理</a></TD>
              </TR>
              </TBODY></TABLE>
            </DIV>
            <DIV style="WIDTH: 158px">
            <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              <TR>
                <TD 
      height=20></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE>
	<!--关于我们-->
	 <TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
        <TBODY>
        <TR>
          <TD class=menu_title id=TD6 
          onmouseover="this.className='menu_title2';" onclick=showsubmenu(11) 
          onmouseout="this.className='menu_title';" 
          background=left.files/admin_left_2.gif height=25><SPAN>产品管理</SPAN> 
          </TD>
        </TR>
        <TR>
          <TD id=submenu11>
            <DIV class=sec_menu style="WIDTH: 158px">
            <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              <TR>
                <TD height=20>
                    <a href ="ProductList.aspx?action=list" target="mainFrame">产品列表</a></TD>
              </TR>
                  <tr>
                      <td height="20">
                          <a href="AddEnPro.aspx" target="mainFrame">添加英文产品</a> </td>
                  </tr>
                  <tr>
                      <td height="20">
                          <a href="ChProducts.aspx" target="mainFrame">添加中文产品</a></td>
                  </tr>
                   <tr>
                      <td height="20">
                          <a href="Productlist.aspx?action=cat" target="mainFrame">产品分类</a></td>
                  </tr>
              </TBODY></TABLE>
            </DIV>
            <DIV style="WIDTH: 158px">
            <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              <TR>
                <TD 
      height=20></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE>
	
	<!--  f 加装测试-->
	
	  
	
	  <TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
        <TBODY>
        <TR>
          <TD class=menu_title id=TD5 
          onmouseover="this.className='menu_title2';" onclick=showsubmenu(10) 
          onmouseout="this.className='menu_title';" 
          background=left.files/admin_left_2.gif height=25><SPAN>信息反馈</SPAN></TD>
        </TR>
        <TR>
          <TD id=submenu10>
            <DIV class=sec_menu style="WIDTH: 158px">
            <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              <TR>
                <TD height=20><a href="feedback.aspx"  target="mainFrame">信息管理</a></TD>
              </TR>
              <%--<TR>
                <TD height=20><a href="guestbook.aspx?action=show" target="mainFrame">留言显示</a></TD>
              </TR>--%>
              
              </TBODY></TABLE>
            </DIV>
            <DIV style="WIDTH: 158px">
            <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              <TR>
                <TD 
      height=20></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE>
      <!--结束-->
<!--产品管理-->
 <TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
        <TBODY>
        <TR>
          <TD class=menu_title id=TD5 
          onmouseover="this.className='menu_title2';" onclick=showsubmenu(37) 
          onmouseout="this.className='menu_title';" 
          background=left.files/admin_left_2.gif height=25><SPAN>产品中心</SPAN></TD>
        </TR>
        <TR>
          <TD id=submenu37>
            <DIV class=sec_menu style="WIDTH: 158px">
            <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              <TR>
                <TD height=20>
                    <a href ="product.aspx?action=list" target="mainFrame">产品管理</a></TD>
              </TR>
              <TR>
                <TD height=20>
                   <a href ="product.aspx?action=add" target ="mainFrame"> 添加产品</a></TD>
              </TR>
 <TR>
                <TD height=20>
                    <a href ="product.aspx?action=cs" target ="mainFrame">产品分类</a></TD>
              </TR>
              
              </TBODY></TABLE>
            </DIV>
            <DIV style="WIDTH: 158px">
            <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              <TR>
                <TD 
      height=20></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE>
	  <TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
        <TBODY>
          <TR>
            <TD class=menu_title id=TD3 
          onmouseover="this.className='menu_title2';" onclick=showsubmenu(30) 
          onmouseout="this.className='menu_title';" 
          background=left.files/admin_left_2.gif height=25><SPAN>服务领域</SPAN></TD>
          </TR>
          <TR>
            <TD id=submenu30>
			 <DIV class=sec_menu style="WIDTH: 158px">
			   <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
                 <TBODY>
                   <TR>
                     <TD height=20>
                          <a href ="AboutUs.aspx?action=fu" target ="mainFrame">查看信息</a> </TD>
                   </TR>
				    <TR>
                     <TD height=20></TD>
                   </TR>
                 </TBODY>
			     </TABLE>
			 </DIV>
            <DIV style="WIDTH: 158px">
            <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              <TR>
                <TD 
      height=20></TD></TR></TBODY></TABLE></DIV>
			
			</TD>
          </TR>
        </TBODY>
      </TABLE>
	  <!--员工风采 -->
	  <TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
        <TBODY>
          <TR>
            <TD class=menu_title id=TD7 
          onmouseover="this.className='menu_title2';" onclick=showsubmenu(31) 
          onmouseout="this.className='menu_title';" 
          background=left.files/admin_left_2.gif height=25><SPAN>员工风采</SPAN> </TD>
          </TR>
          <TR>
            <TD id=submenu31>
			 <DIV class=sec_menu style="WIDTH: 158px">
			   <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
                 <TBODY>
                   <TR>
                     <TD height=20><a href="img.aspx?action=add" target=mainFrame>添加风采</a></TD>
                   </TR>
				    <TR>
                     <TD height=20><a href="img.aspx?action=list" target=mainFrame>管理列表</a></TD>
                   </TR>
                 </TBODY>
			     </TABLE>
			 </DIV>
            <DIV style="WIDTH: 158px">
            <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              <TR>
                <TD 
      height=20></TD></TR></TBODY></TABLE></DIV>
			
			</TD>
          </TR>
        </TBODY>
      </TABLE>
	  
	 <!--员工风采结束-->
	<!--服务项目-->
	<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
        <TBODY>
          <TR>
            <TD class=menu_title id=TD8 
          onmouseover="this.className='menu_title2';" onclick=showsubmenu(32) 
          onmouseout="this.className='menu_title';" 
          background=left.files/admin_left_2.gif height=25><SPAN>友情链接</SPAN> </TD>
          </TR>
          <TR>
            <TD id=submenu32>
			 <DIV class=sec_menu style="WIDTH: 158px">
			   <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
                 <TBODY>
                   <TR>
                     <TD height=20><a href="xm.aspx?action=add" target=mainFrame>添加链接</a></TD>
                   </TR>
				    <TR>
                     <TD height=20><a href="xm.aspx?action=list" target=mainFrame>链接管理</a></TD>
                   </TR>
                 </TBODY>
			     </TABLE>
			 </DIV>
            <DIV style="WIDTH: 158px">
            <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              <TR>
                <TD 
      height=20></TD></TR></TBODY></TABLE></DIV>
			
			</TD>
          </TR>
        </TBODY>
      </TABLE>
	<!--服务项目结束-->
      <TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
        <TBODY>
        <TR>
          <TD class=menu_title id=TD4 
          onmouseover="this.className='menu_title2';" 
          onmouseout="this.className='menu_title';" 
          background=left.files/admin_left_9.gif 
          height=25><SPAN>管理版权信息</SPAN></TD>
        </TR>
        <TR>
          <TD>
            <DIV class=sec_menu style="WIDTH: 158px">
            <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              <TR>
                <TD height=20 bgcolor="#D6DFF7" style="LINE-HEIGHT: 150%">版权:
                 </TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE></TR></TBODY></TABLE>
    </div>
    </form>
</body>
</html>
