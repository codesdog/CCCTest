<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<%@ Register Src="head.ascx" TagName="head" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<title>首页</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <style type="text/css">
        .style1
        {
            width: 1368px;
        }
        .style2
        {
            width: 183px;
        }
        .style3
        {
            width: 270px;
        }
        .style4
        {
            width: 358px;
        }
        .style5
        {
            width: 357px;
        }
        .style6
        {
            width: 184px;
        }
    </style>
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<form id="form1" size="fixed" runat ="server">
<table id="__01" width="1366" height="2212" border="0" cellpadding="0" 
    cellspacing="0" class="style1">
	<tr>
		<td colspan="5">
			<uc1:head ID="Head1" runat="server" /></td>
	</tr>
	<tr>
		<td colspan="5">
			<img src="images/NO2_02.gif" width="1366" height="40" alt=""></td>
	</tr>
	<tr>
		<td rowspan="12" class="style2">
			<img src="images/NO2_03.gif" width="183" height="1815" alt=""></td>
		<td class="style3">
			<img src="images/NO2_04.gif" alt="" width="269" height="44" border="0" usemap="#Map3"></td>
<td class="style4">
			<img src="images/NO2.gif" alt="" width="357" height="44" border="0" usemap="#Map4"></td>
<td class="style5">
			&nbsp; &nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="173px"></asp:TextBox>
        &nbsp;
            <asp:Button ID="Button1" runat="server" Text="搜索" />&nbsp;&nbsp;&nbsp; 
            <a href="Admin/login.aspx">进入后台</a></td>
		<td rowspan="12" class="style6">
			<img src="images/NO2_07.gif" width="184" height="1815" alt=""></td>
	</tr>
	<tr>
		<td class="style3">
			<img src="images/NO2_08.gif" width="269" height="318" alt=""></td>
		<td class="style4">
			<asp:DataList ID="NO2" runat="server"  OnItemCommand="NO2_ItemCommand" BackColor="White">
                            <ItemTemplate>
                              &nbsp;<table border="0" style=" font-size :9pt; width: 100%; height: 100%;" cellspacing="0"  cellpadding =0 >
                                  <tr>
                                      <td style="width: 90px; height: 20px;">
                                           『
                                              <%# DataBinder.Eval(Container.DataItem,"type")%>
                                             』                                       </td>
                                       <td colspan="2" >
                                          <asp:LinkButton ID="lbtnTitle1" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem,"title") %></asp:LinkButton>                                       </td>
                                   </tr>
                                </table>
                       </ItemTemplate>
                       <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataList>&nbsp;</td>
		<td class="style5">
			<img src="images/earth.gif" width="373" height="318" alt=""></td>
	</tr>
	<tr>
		<td class="style3">
			<img src="images/NO2_11.gif" alt="" width="269" height="49" border="0" usemap="#Map2"></td>
<td class="style4">
			<img src="images/NO2_12.gif" alt="" width="357" height="49" border="0" usemap="#Map5"></td>
<td class="style5">
			<img src="images/NO2_13.gif" alt="" width="373" height="49" border="0" usemap="#Map6"></td>
	</tr>
	<tr>
		<td class="style3">
			<img src="images/NO2_14.gif" width="269" height="307" alt=""></td>
		<td class="style4">
			<asp:DataList ID="deyu" runat="server"  OnItemCommand="deyu_ItemCommand" BackColor="White">
                            <ItemTemplate>
                              &nbsp;<table border="0" style=" font-size :9pt; width: 100%; height: 100%;" cellspacing="0"  cellpadding =0 >
                                  <tr>
                                      <td style="width: 90px; height: 20px;">
                                           『
                                              <%# DataBinder.Eval(Container.DataItem,"type")%>
                                             』                                       </td>
                                       <td colspan="2" >
                                          <asp:LinkButton ID="lbtnTitle2" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem,"title") %></asp:LinkButton>                                       </td>
                                   </tr>
                                </table>
                       </ItemTemplate>
                       <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataList>&nbsp;</td>
		<td class="style5">
			<asp:DataList ID="jiaoyu" runat="server"  OnItemCommand="jiaoyu_ItemCommand" BackColor="White">
                            <ItemTemplate>
                              &nbsp;<table border="0" style=" font-size :9pt; width: 100%; height: 100%;" cellspacing="0"  cellpadding =0 >
                                  <tr>
                                      <td style="width: 90px; height: 20px;">
                                           『
                                              <%# DataBinder.Eval(Container.DataItem,"type")%>
                                             』                                       </td>
                                       <td colspan="2" >
                                          <asp:LinkButton ID="lbtnTitle3" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem,"title") %></asp:LinkButton>                                       </td>
                                   </tr>
                                </table>
                       </ItemTemplate>
                       <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataList>&nbsp;</td>
	</tr>
	<tr>
		<td class="style3">
			<img src="images/NO2_17.gif" width="269" height="50" alt=""></td>
		<td class="style4">
			<img src="images/NO2_18.gif" alt="" width="357" height="50" border="0" usemap="#Map7"></td>
<td class="style5">
			<img src="images/NO2_19.gif" alt="" width="373" height="50" border="0" usemap="#Map8"></td>
	</tr>
	<tr>
		<td class="style3">
			<img src="images/NO2_20.gif" alt="" width="269" height="287" border="0" usemap="#Map"></td>
<td class="style4">
			<asp:DataList ID="jiaxiao" runat="server"  OnItemCommand="jiaxiao_ItemCommand" BackColor="White">
                            <ItemTemplate>
                              &nbsp;<table border="0" style=" font-size :9pt; width: 100%; height: 100%;" cellspacing="0"  cellpadding =0 >
                                  <tr>
                                      <td style="width: 90px; height: 20px;">
                                           『
                                              <%# DataBinder.Eval(Container.DataItem,"type")%>
                                             』                                       </td>
                                       <td colspan="2" >
                                          <asp:LinkButton ID="lbtnTitle4" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem,"title") %></asp:LinkButton>                                       </td>
                                   </tr>
                                </table>
                       </ItemTemplate>
                       <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataList>&nbsp;</td>
		<td class="style5">
			<asp:DataList ID="jiandu" runat="server"  OnItemCommand="jiandu_ItemCommand" BackColor="White">
                            <ItemTemplate>
                              &nbsp;<table border="0" style=" font-size :9pt; width: 100%; height: 100%;" cellspacing="0"  cellpadding =0 >
                                  <tr>
                                      <td style="width: 90px; height: 20px;">
                                           『
                                              <%# DataBinder.Eval(Container.DataItem,"type")%>
                                             』                                       </td>
                                       <td colspan="2" >
                                          <asp:LinkButton ID="lbtnTitle5" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem,"title") %></asp:LinkButton>                                       </td>
                                   </tr>
                                </table>
                       </ItemTemplate>
                       <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataList>&nbsp;</td>
	</tr>
	<tr>
		<td class="style3">
			<img src="images/NO2_23.gif" alt="" width="269" height="50" border="0" usemap="#Map9"></td>
<td class="style4">
			<img src="images/NO2_24.gif" alt="" width="357" height="50" border="0" usemap="#Map10"></td>
<td class="style5">
			<img src="images/NO2_25.gif" alt="" width="373" height="50" border="0" usemap="#Map11"></td>
	</tr>
	<tr>
		<td class="style3">
			<asp:DataList ID="keyan" runat="server"  OnItemCommand="keyan_ItemCommand" BackColor="White">
                            <ItemTemplate>
                              &nbsp;<table border="0" style=" font-size :9pt; width: 100%; height: 100%;" cellspacing="0"  cellpadding =0 >
                                  <tr>
                                      <td style="width: 90px; height: 20px;">
                                           『
                                              <%# DataBinder.Eval(Container.DataItem,"type")%>
                                             』                                       </td>
                                       <td colspan="2" >
                                          <asp:LinkButton ID="lbtnTitle6" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem,"title") %></asp:LinkButton>                                       </td>
                                   </tr>
                                </table>
                       </ItemTemplate>
                       <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataList></td>
		<td class="style4">
			<asp:DataList ID="jiaoxue" runat="server"  OnItemCommand="jiaoxue_ItemCommand" BackColor="White">
                            <ItemTemplate>
                              &nbsp;<table border="0" style=" font-size :9pt; width: 100%; height: 100%;" cellspacing="0"  cellpadding =0 >
                                  <tr>
                                      <td style="width: 90px; height: 20px;">
                                           『
                                              <%# DataBinder.Eval(Container.DataItem,"type")%>
                                             』                                       </td>
                                       <td colspan="2" >
                                          <asp:LinkButton ID="lbtnTitle7" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem,"title") %></asp:LinkButton>                                       </td>
                                   </tr>
                                </table>
                       </ItemTemplate>
                       <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataList>&nbsp;</td>
		<td class="style5">
			<img src="images/NO2_28.gif" width="373" height="287" alt=""></td>
	</tr>
	<tr>
		<td colspan="3">
			<img src="images/NO2_29.gif" alt="" width="999" height="43" border="0" usemap="#Map12"></td>
	</tr>
	<tr>
		<td colspan="3">
			<div id=demo style="overflow:hidden;width:999;" align=center>
	<table border=0 align=center cellpadding=1 cellspacing=1 cellspace=0 >
		<tr>
<td valign=top bgcolor=ffffff id="marquePic1">
	<table width='100%' border='0' cellspacing='0'>
<tr><td align=center><a href='#'>
<img src=images/pic01.jpg width=162 height=108 border=0></a></td><td align=center><a href='#'>

<img src=images/pic02.jpg width=162 height=108 border=0></a></td><td align=center><a href='#'>

<img src=images/pic03.jpg width=162 height=108 border=0></a></td><td align=center><a href='#'>

<img src=images/pic04.jpg width=162 height=108 border=0></a></td><td align=center><a href='#'>

<img src=images/pic05.jpg width=162 height=108 border=0></a></td><td align=center><a href='#'>

<img src=images/pic06.jpg width=162 height=108 border=0></a></td></tr></table>
		</td><td id="marquePic2" valign=top></td><</tr>
	</table></div>
</td>
	</tr>
	<tr>
		<td colspan="3">
			<img src="images/NO2_31.gif" width="999" height="37" alt=""></td></td>
	</tr>
	<tr>
		<td colspan="3"><p>  &nbsp; &nbsp;盱眙人才网 <a href="http://www.xuyijob.com/" target="_blank">http://www.xuyijob.com/ </a></p>
	    <p> &nbsp; &nbsp;盱眙教育网 <a href="http://s.114chn.com/xuyi-e" target="_blank">http://s.114chn.com/xuyi-e</a></p>
	    <p> &nbsp; &nbsp;中考指南 <a href="https://www.51test.net/zhongkao/zn/" target="_blank">https://www.51test.net/zhongkao/zn/</a></p>
	    <p> &nbsp; &nbsp;素质教育与实践能力 <a href="http://www.hnsz.org/" target="_blank">http://www.hnsz.org/</a></p></td></td>
	</tr>
	<tr>
		<td colspan="5">
			<img src="images/NO2_33.gif" width="1366" height="159" alt=""></td>
	</tr>
</table>
&lt;</form>
<!-- End ImageReady Slices -->

<map name="Map" id="Map"><area shape="rect" coords="10,15,130,58" href="http://www.jsxyzx.cn/a/xuexiaogaikuang/lingdaobanzi/20150505/520.html" target="_blank" />
<area shape="rect" coords="139,16,240,58" href="http://www.jsxyzx.cn/plus/list.php?tid=35" target="_blank" />
<area shape="rect" coords="10,140,107,190" href="http://www.jsxyzx.cn/plus/list.php?tid=32" target="_blank" />
<area shape="rect" coords="137,142,235,191" href="http://www.jsxyzx.cn/plus/list.php?tid=55" target="_blank" />
<area shape="rect" coords="10,78,96,125" href="http://www.jsxyzx.cn/plus/list.php?tid=54" target="_blank" />
<area shape="rect" coords="136,79,233,123" href="http://www.jsxyzx.cn/plus/list.php?tid=24" target="_blank" />
</map>
<map name="Map2" id="Map2"><area shape="rect" coords="195,10,262,43" href="http://www.jsxyzx.cn/a/xuexiaogaikuang/lingdaobanzi/20150505/520.html" target="_blank" />
</map>
<map name="Map3" id="Map3"><area shape="rect" coords="210,14,260,40" href="school.aspx" target="_blank" />
</map>
<map name="Map4" id="Map4"><area shape="rect" coords="291,13,345,42" href="culture.aspx" target="_blank" />
</map>
<map name="Map5" id="Map5"><area shape="rect" coords="295,13,351,41" href="moral.aspx" target="_blank" />
</map>
<map name="Map6" id="Map6"><area shape="rect" coords="304,12,358,41" href="teacher.aspx" target="_blank" />
</map>
<map name="Map7" id="Map7"><area shape="rect" coords="296,11,352,42" href="homasch.aspx" target="_blank" />
</map>
<map name="Map8" id="Map8"><area shape="rect" coords="301,12,360,43" href="supervision.aspx" target="_blank" />
</map>
<map name="Map9" id="Map9"><area shape="rect" coords="209,10,261,41" href="teacher.aspx" target="_blank" />
</map>
<map name="Map10" id="Map10"><area shape="rect" coords="296,10,355,43" href="party.aspx" target="_blank" />
</map>
<map name="Map11" id="Map11"><area shape="rect" coords="301,11,360,40" href="https://cli.im/" target="_blank" />
</map>
<map name="Map12" id="Map12"><area shape="rect" coords="917,14,975,39" href="student.aspx" target="_blank" />
</map></body>
</html>