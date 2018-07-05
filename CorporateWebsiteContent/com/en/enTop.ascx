<%@ Control Language="C#" AutoEventWireup="true" CodeFile="enTop.ascx.cs" Inherits="com_enTop" %>
<style type="text/css">
    .style1
    {
        height: 36px;
    }
</style>
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/jquery.cycle.js"></script>
<script type="text/javascript">
	$(function(){
		$('#banner').cycle({ 
				fx:'scrollLeft',
				pager:'#btn'
		});
	})
</script>
<style type="text/css">
	#banner
	{
		width:980px;
		margin:0px auto;
		height:210px;
		overflow:hidden;
		z-index:-1;
	}
	#btn
	{	display: inline;
		width:110px;
		height:18px;
		float:left;
		margin:-30px 0px 0px 865px;
		position:absolute;
		z-index:1;
	}
	#btn a
	{
		color:#36f;
		font:700 11px "Arial";
		background:url(../images/ibbtn.gif) no-repeat;
		float:left;
		width:18px;
		height:18px;
		line-height:18px;
		text-align:center;
		text-decoration:none;
		margin-left:5px;
	}
	#btn a.activeSlide
	{	
		color:#fff;
		background:url(../images/ibhbtn.gif) no-repeat;
	}
	#btn a:hover
	{	
		color:#fff;
		background:url(../images/ibhbtn.gif) no-repeat;
	}
</style>
<table width="980" height="90" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-bottom:5px">
  <tr>
    <td width="980" class="style1" style="text-align:right "><a onclick="this.style.behavior='url(#default#homepage)';this.setHomePage(');" href="#">设为首页</a>|<a href='#' onclick='window.external.AddFavorite(&quot;http://www.gszckt.com/&quot;,&quot;甘肃中辰机电安装工程公司&quot;)' >加入收藏</a>|<a 
            href="/Search.aspx" style="text-align: right">站内搜索|</a><a href ="../index.aspx">中文版</a>|英文版</td>
  </tr>
  <tr>
    <td width="632"><div id="banner">
    	<img  src="../images/ibanner1.jpg" width="980" height="210">
        <img  src="../images/ibanner2.jpg" width="980" height="210">
        <img  src="../images/ibanner3.jpg" width="980" height="210">
        <img  src="../images/ibanner4.jpg" width="980" height="210">
</div>
<div id="btn"></div></td>
  </tr>
</table>
<table width="980" height="40" border="0" align="center" cellpadding="0" cellspacing="0"  style="background-image:url(../images/bg-nav.jpg)">
  <tr>
    <td><div id="nav"><ul style="text-align: left">
	<li style="font-size:14px; color:#fff; float:left; text-align: left; ">今天是:<script language="JavaScript" type="text/javascript">         
today=new Date();
function initArray(){
    this.length=initArray.arguments.length
    for(var i=0;i<this.length;i++)

    this[i+1]=initArray.arguments[i]  }

    var d=new initArray(

      "星期日",

      "星期一",

      "星期二",

      "星期三",

      "星期四",

      "星期五",

      "星期六");

    document.write(

       "<font color=#ffffff style='font-size:12px;font-family: Arial, Helvetica, sans-serif,新宋体'> ",
       today.getYear(),"年",
       today.getMonth()+1,"月",
       today.getDate(),"日   ",
       d[today.getDay()+1],
       "</font>" ); 
</script>
	</li>
         <li><a href ="index.aspx">HomePage</a></li>
          
          <li><a href ="about.aspx">AboutUs</a></li> 
          <li><a href ="NewsList.aspx">NewsCenter</a></li>
          <li ><a href ="AllProducts.aspx">ProductsCenter</a></li> 
          <!--  <li ><a href ="Products.aspx">客户案例</a></li>-->
              <li ><a href ="Resume.aspx">ZhaoPin</a></li>  
                <li ><a href ="Feedback.aspx">GuestBook</a></li>  
                          </ul></div></td>
  </tr>
</table>
<table width="980" border="0" align="center" cellpadding="0" cellspacing="0" style="margin:3px auto">
  <tr>
    <td></td>
  </tr>
</table>