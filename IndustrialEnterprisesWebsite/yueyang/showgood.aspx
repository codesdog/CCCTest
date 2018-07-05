<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showgood.aspx.cs" Inherits="Webwangzhan.yueyang.showgood" %>
<%@ Register Src ="~/yueyang/UserControl/top.ascx" TagName ="Webtop1" TagPrefix ="top" %>
<%@ Register Src ="~/yueyang/UserControl/left.ascx" TagName ="Webleft1" TagPrefix ="left" %>
<%@ Register Src ="~/yueyang/UserControl/foot.ascx" TagName ="Webfoot1" TagPrefix ="foot" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>产品详情</title>
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
            
                                      
                                      <div id="goodslist">
                                          
                                                <div class="m-body">
                                                      <div class="m-header">产品详情</div>
                                                      <div class="m-content">
                                                              <center><b><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></b></center><br /><br />
                                                                 <div class="map-container">
                                                                 <asp:Image ID="Image1" runat="server" />
                                                             </div><br />
                                                          <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
              
                                                    </div>
                                               </div>
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
