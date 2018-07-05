<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="news.aspx.cs" Inherits="Webwangzhan.yueyang.news" %>
<%@ Register Src ="~/yueyang/UserControl/top.ascx" TagName ="Webtop1" TagPrefix ="top" %>
<%@ Register Src ="~/yueyang/UserControl/left.ascx" TagName ="Webleft1" TagPrefix ="left" %>
<%@ Register Src ="~/yueyang/UserControl/foot.ascx" TagName ="Webfoot1" TagPrefix ="foot" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>新闻中心</title>
 <link rel="stylesheet" href="css/css.css"  />
<link rel="stylesheet" href="css/stylecss.css"  />
<script type="text/javascript" src="js/all.js"></script>
</head>
<body>
    <form id="form1" runat="server">
   <div id="content_bg">
	<div id="content"   >
<!--***content ***************************************************************************************************-->
<top:Webtop1 id="Webtop2" runat="server"/>
        <!--***foot end **********************************************************************************-->
        
      <div id="main">
        	<left:Webleft1 id="Webleft1" runat="server"/>
            
            <div id="right">
            
                                      
                                      <div id="new">
                                          
                                           <div class="m-body">
                                                        <div class="m-header">公司动态</div>
                                                        <div class="m-content_new">
                                                             <ul>
                                                                 <asp:Repeater ID="newslist" runat="server">
                                                                 <ItemTemplate>
                                                                     <li>
                                                                     <div  class="new_left"><a href="shownew.aspx?id=<%#Eval("n_id")%>"><%#Eval("n_tname")%></a></div>
                                                                     <div class="new_right"><a href="shownew.aspx?id=<%#Eval("n_id")%>"><%#Convert.ToDateTime(Eval("n_time")).ToShortDateString()%></a></div>
                                                                 </li>
                                                                 </ItemTemplate>
                                                                 </asp:Repeater>                                                   
                                                             </ul>                                                         
                                                        
                                                        </div>
                                           </div>
                                                
                                                     
                                      </div>
                                     <!--***  end ***********************************************************-->              
        </div>
        <!--***main end **********************************************************************************-->
        
        <foot:Webfoot1 id="Webfoot1" runat="server"/>
        <!--***foot end **********************************************************************************-->
<!--***content end***************************************************************************************************-->
	</div>
	</div>

    </form>
</body>
</html>
