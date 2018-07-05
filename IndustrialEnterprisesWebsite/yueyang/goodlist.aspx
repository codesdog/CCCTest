<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="goodlist.aspx.cs" Inherits="Webwangzhan.yueyang.goodlist" %>
<%@ Register Src ="~/yueyang/UserControl/top.ascx" TagName ="Webtop1" TagPrefix ="top" %>
<%@ Register Src ="~/yueyang/UserControl/left.ascx" TagName ="Webleft1" TagPrefix ="left" %>
<%@ Register Src ="~/yueyang/UserControl/foot.ascx" TagName ="Webfoot1" TagPrefix ="foot" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>产品列表</title>
    <link rel="stylesheet" href="css/css.css"  />
<link rel="stylesheet" href="css/stylecss.css"  />
<script type="text/javascript" src="js/all.js"></script>
<style type="text/css">
.pages { color: #999; }
.pages a, .pages .cpb { text-decoration:none;float: left; padding: 0

5px; border: 1px solid #ddd;background: #ffff;margin:0 2px; font-

size:11px; color:#000;}
.pages a:hover { background-color: #E61636; color:#fff;border:1px solid

#E61636; text-decoration:none;}
.pages .cpb { font-weight: bold; color: #fff; background: #ffa501;

border:1px solid #ffa501;}
</style>
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
            
                                      <div id="goods">
                                     	 <div class="m-header"> 产品展示 </div>
                                                <ul class="offer-list-row" >
                                         <asp:Repeater ID="gdlist" runat="server">
                                         <ItemTemplate>
                                        <li style="width:145px;">
                                       <div class="image"><a href="showgood.aspx?id=<%#Eval("gid") %>" title="<%#Eval("gname")%>" target="_blank">
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
                                      <!--***  end ***********************************************************-->  
                                      <div class="goods_down">
                                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" CssClass="pages" CurrentPageButtonClass="cpb"
                     FirstPageText="首页"   LastPageText="尾页" NextPageText="下一页"   PrevPageText="上一页"   AlwaysShow="true" 
                                 NumericButtonCount="10" PageIndexBoxType="DropDownList" 
                                 ShowPageIndexBox="Always" SubmitButtonText="Go" TextAfterPageIndexBox="页" OnPageChanging="AspNetPager1_PageChanged" 
                                 TextBeforePageIndexBox="转到" PageSize="10"  
            CustomInfoTextAlign="Left"   >
        </webdiyer:AspNetPager>
                                      </div>
                                     <!--***  end ***********************************************************-->              
        </div>
        <!--***main end **********************************************************************************-->
        
       <foot:Webfoot1 id="Webfoot1" runat="server"/>
<!--***content end***************************************************************************************************-->
	</div>
	</div>

    </form>
</body>
</html>
