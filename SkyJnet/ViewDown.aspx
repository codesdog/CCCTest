<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewDown.aspx.cs" Inherits="Web.ViewDown" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="855"  border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" align="center">
  <tr>
    <td width="209" align="center" valign="top">
       <table width="100%"  border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>　</td>
          </tr>
        </table>
        <table border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td ><img src="Img/Down.gif" width="193" height="24"></td>
          </tr>
          <tr>
            <td height="12">
              <div align="center"></div>              </td>
          </tr>
        </table>
        <table width="92%"  border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td><table width="92%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td>
                <!--下载分类-->
                  <table width="100%" border="0" cellspacing="1" cellpadding="0">
            <tr>
              <td width="7%" style="height: 19px"></td>
              <td width="93%" style="height: 19px"></td>
            </tr>
           <asp:Repeater ID="rp_DownClass" runat="server">
           <ItemTemplate>
            <tr align="center">
              <td><img src="Img/arrow_6.gif" width="11" height="11"> </td>
              <td  ><div align="left">
                  <p style='line-height:150%'><a href="Download.aspx?Classid=<%#Eval("id") %>" ><%#GetLimitChar(Eval("ClassName").ToString(), 10)%></a>
                  <table width="100%"  border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td height="1" background="img/naBialym.gif"></td>
                    </tr>
                  </table>
              </div></td>
            </tr>
            </ItemTemplate>
           </asp:Repeater>
            <tr>
              <td height="6"></td>
              <td></td>
            </tr>
          </table>
                </td>
              </tr>
            </table></td>
          </tr>
        </table>
        <p>　</p></td>
    <td width="17" background="Img/combg.gif">　</td>
    <td valign="top" width="620" >
    <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td><table width="100%"  border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="2"></td>
              </tr>
              <tr>
                <td height="26">&nbsp; <span >&nbsp;&nbsp;<img src="Img/HaoSc23.png" width="14" height="16" align="absmiddle"> <span class="tt_16">下 载 中 心</span></span></td>
              </tr>
              <tr>
                <td height="2" bgcolor="#CBE0E9"></td>
              </tr>
          </table></td>
        </tr>
      </table>
        <table width="96%" border="0" align="center" cellpadding="0" cellspacing="3">
          <tr>
            <td width="391"  height=25>
              <asp:Label ID="lbl_NavPath" runat="server"></asp:Label>
            </td>
            
          </tr>
          <tr>
            <td   height=1 colspan="3" background=img/naBialym.gif><img height=1 src="img/1x1_pix.gif" 
              width="10"></td>
          </tr>
          <tr>
            <td  colspan="3" valign ="top" height="300"><br/>
                <table width="100%"  style="border:1px solid #FBfb47">
                <tr>
                <td style="width: 300px; "><b>文件名称：</b><asp:Label ID="lbl_filename" runat="server"></asp:Label></td>
                <td rowspan="6" style="width: 240px" align="center" valign="middle">
                <img width="200" height="200" border="0" src="uploadpic/<asp:Literal id='ltl_softpic' runat='server'></asp:Literal>" /></td></tr>
                <tr><td style="width: 300px; "><b>文件大小：</b><asp:Label ID="lbl_filesize" runat="server"></asp:Label>  K</td></tr>
                <tr><td style="width: 300px;"><b>发布日期：</b><asp:Label ID="lbl_addtime" runat="server"></asp:Label></td></tr>
                <tr><td style="width: 300px; "><b>下载次数：</b><asp:Label ID="lbl_downcount" runat="server"></asp:Label></td></tr>
                <tr><td style="width: 300px; "><b>下载类别：</b><asp:Label ID="lbl_classname" runat="server"></asp:Label></td></tr>
                <tr><td >下载地址1：<a href="down.aspx?id=<%=Request.QueryString["id"] %>&path=1" target="_blank"><img align="middle"  src=Img/download.gif border=0 ></a>
                <asp:Panel ID="pan_down2" runat="server" Visible="false">
                下载地址2：<a href="down.aspx?id=<%=Request.QueryString["id"] %>&path=2" target="_blank"><img align="middle"   src=Img/download.gif border=0></a>
               </asp:Panel>
               </td></tr>
                <tr><td colspan="2" ><b>下载说明：</b></td></tr>
                <tr><td  colspan="2" style="height: 21px"><asp:Label ID="lbl_intro" runat="server"></asp:Label></td></tr>
              
                
                </table>
          <table width="620">
          <tr>
            <td height="1" colspan="3" background=img/naBialym.gif></td>
          </tr>
          <tr>
            <td height=25><div align="right">
                &nbsp;【<a href="javascript:window.close()">关闭窗口</a>】&nbsp;【<a href='javascript:history.back()'>返回</a>】</div></td>
            
          </tr>
        </table>
        </td>
        </tr>
        </table>
        </td>
        </tr>
        </table>

</asp:Content>

