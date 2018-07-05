<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Jobs.aspx.cs" Inherits="Web.Jobs" Title="未标题" %>
<%@ Register TagPrefix="uc1" TagName="uc_LeftContents"   Src="~/LeftContents.ascx"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">
// <!CDATA[

function IMG1_onclick() {

}

// ]]>
</script>

<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="150" background="images/bn7.jpg">&nbsp;</td>
  </tr>
</table>
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td height="32" class="xia2"> 　　首页 &gt; 招贤纳才 &gt; 人才加盟 </td>
  </tr>
</table>
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="200" height="300" valign="top" class="you"><table width="200" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="50"><div align="center"><img src="images/left7.jpg" width="190" height="30" /></div></td>
      </tr>
      <tr>
        <td height="28"> <div align="left"> 
              	<!--左边自定义控件-->
              <uc1:uc_LeftContents id="LeftContents" runat="server" ></uc1:uc_LeftContents>
              </div></td>
      </tr>
    </table></td>
    <td width="580" valign="top"><table width="550" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="40"><strong class="blue3"><asp:Label ID="lbl_Title" runat="server"></asp:Label></td>
      </tr>
      <tr>
        <td>
                         <table valign="top" width="85%" border="0" cellspacing="0" cellpadding="0" >
                  <tr> 
                    <td  align="left" ><font color="#555555">岗位名称：<font color="986A01"><b><%=Jobposition%></b></font><br/>
                      招聘部门：<%=department%><br/>
                      工作地点：<%=thewhere%></font></td>
                    <td  align="left" ><font color="#555555">发布时间：<%=Addtime%><br/>有效时限：<%=limittime%><br/>
                      联系信箱：<a href="mailto:<%=email%>" class="link1"><font color="#666666"><%=email%></font></a></font></td>
                  </tr>
                </table>
                <table width="85%" border="0" cellspacing="0" cellpadding="0">
                  <tr> 
                    <td  align="left" ><font color="#555555">职位要求： <br><%=requirement%></font></td>
                  </tr>
                  
                </table>
          </td></tr>
    </table></td>
  </tr>
</table>

</asp:Content>



