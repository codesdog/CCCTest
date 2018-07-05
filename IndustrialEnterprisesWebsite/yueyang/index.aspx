<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Webwangzhan.yueyang.index" %>
<%@ Register Src ="~/yueyang/UserControl/top.ascx" TagName ="Webtop1" TagPrefix ="top" %>
<%@ Register Src ="~/yueyang/UserControl/left.ascx" TagName ="Webleft1" TagPrefix ="left" %>
<%@ Register Src ="~/yueyang/UserControl/foot.ascx" TagName ="Webfoot1" TagPrefix ="foot" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>番茄科技</title>
<link rel="stylesheet" href="css/css.css"  />
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
            
                              <div class="company_new">
                              <div class="m-body">
                                     <div class="m-header"> 公司简介 </div>
                                     <div class="m-content">
                                   		  <div class="info-image"><a href="#"><img src="images/new.jpg" alt="新闻"></a></div>
                                          <div class="info-body">
                                             <asp:Label ID="aboutLabel" runat="server" Text="Label"></asp:Label> 
                                          </div>
                                          
                                     </div>
                                     <div class="m-content-footer"><a href="about.aspx" >更多&gt;&gt;</a></div>
                            </div>
                            </div>
                            <!--***company  end ***********************************************************-->
                            <div class="pro">
                               <div class="m-header"> 产品展示 </div>
                               <ul class="offer-list-row" >
                                   <asp:Repeater ID="gdlist" runat="server">
                                   <ItemTemplate>
                                        <li style="width:145px;">
                                       <div class="image"><a href="showgood.aspx?id=<%#Eval("gid") %>" title="#" target="_blank">
                                           <asp:Image ID="Image1" ImageUrl='<%#Eval("gtu") %>' Width="150" Height="130" runat="server" />
                                       </a></div>
                                       <div class="title"><a href="showgood.aspx?id=<%#Eval("gid") %>" title="<%#Eval("gname")%>" target="_blank"><%#Eval("gname")%></a> </div>
                                       <div class="attributes"><span class="mix-icon"></span></div><div class="booked-count"></div>
                                                        
                                   </li>
                                   </ItemTemplate>
                                   </asp:Repeater>
                             </ul>
                          
                      <br />
	                      

                            </div>
                           <!--***company  end ***********************************************************-->      
            </div>
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
