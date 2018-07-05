<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true"  CodeFile="default.aspx.cs"    inherits="Web.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">
// <!CDATA[

function IMG1_onclick() {

}

// ]]>
</script>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(images/bj.jpg);
}
h1 {
	font-size: 24px;
	color: #FFFFFF;
}
-->
</style>
<script type="text/javascript" src="http://minisite.qq.com/js/j.minisite.weather.js"></script>
   <table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="375" background="images/banner.jpg"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="780" height="375">
      <param name="movie" value="fla/top.swf" />
      <param name="quality" value="high" />
      <param name="wmode" value="transparent" />
      <embed src="fla/top.swf" width="780" height="375" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent"></embed>
    </object></td>
  </tr>
</table>
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#ffffff">
  <tr>
    <td width="429" background="images/home_6.jpg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/home_4.jpg" width="429" height="48" /></td>
      </tr>
      <tr>
        <td height="159" background="images/home_6.jpg"><table width="400" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="258" class="red"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="44"><strong>红石榴鲜活营养系列<br />
                    <span class="black3">Megranate fresh nourishing</span></strong></td>
              </tr>
              <tr>
                <td class="black">　　清洁与面膜的双重结合，体验磁铁般神奇吸附功效！<br />
                  　　充满惊喜的科技配方，神奇的二合一功效，既是洁面晶露，又是清洁面膜，将阻碍美丽的表面杂质统统清走……</td>
              </tr>
            </table>              <strong><br />
            </strong></td>
            <td width="142"><div align="center"><img src="images/home_601.jpg" width="139" height="159" /></div></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="102"><img src="images/home_9.jpg" width="102" height="75" /></td>
            <td width="296"><table width="296" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><img src="images/home_10.jpg" width="296" height="17" /></td>
              </tr>
              <tr>
                <td height="35"><div align="center">
                  <table width="290" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td><iframe src="http://time.org.cn/clock/#color:cc3399;font-size:9pt" width="220" height="16" frameborder="0" scrolling="no"></iframe></td>
                      </tr>
                    <tr>
                      <td><div id="Wealth"></div><script type="text/javascript"> 
                        /*<![CDATA[*/
                                MiniSite.Weather.print("Wealth");
                        /*]]>*/
function IMG2_onclick() {

}

                        </script></td>
                      </tr>
                  </table>
                </div></td>
              </tr>
              <tr>
                <td><img src="images/home_13.jpg" width="296" height="23" id="IMG1" onclick="return IMG1_onclick()" /></td>
              </tr>
            </table></td>
            <td><img src="images/home_11.jpg" width="31" height="75" /></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="159"><div align="center"><img src="images/home_5.jpg" width="328" height="150" /></div></td>
      </tr>
      <tr>
        <td height="22" background="images/home_7.jpg"><a href="news.aspx?id=1"><img src="images/gif-0262.gif" width="35" height="7" hspace="14" border="0" align="right" id="IMG2" onclick="return IMG2_onclick()" /></a></td>
      </tr>
      <tr>
        <td height="101" valign="top"><table width="320" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td height="24"><span class="black"><asp:Repeater ID="rp_News1" runat="server" OnItemCommand="rp_News1_ItemCommand"><ItemTemplate>
							    <a href="ViewNews.aspx?id=<%#Eval("id")%>"  title="<%#Eval("title")%>"  target="_blank" class="link1 xia">·<%#cutstr(Eval("title").ToString(),14)%>　<span class="blue"><%#Eval("AddTime")%></span></a><br>
						    </ItemTemplate></asp:Repeater>	</span></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
</asp:Content>