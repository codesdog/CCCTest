﻿<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="kcgl, wrxuanke" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="images/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="5%"><div align="center"><img src="images/tb.gif" width="16" height="16" /></div></td>
                <td width="95%" align="left"><span >你当前的位置</span>：[业务中心]-[我的邮件]</td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="60"><table width="87%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center">
                      &nbsp;<asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" oncheckedchanged="CheckBox2_CheckedChanged" />
                    </div></td>
                    <td ><div align="center">全选</div></td>
                  </tr>
                </table></td>
                <td width="60"><table width="88%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td ><div align="center"><img src="images/11.gif" width="14" height="14" /></div></td>
                    <td ><div align="center">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                            onclientclick="javascript:return confirm('你确认要删除?\r\n\r\n此操作一旦执行，将清除所有的学生名单和选课信息。\r\n\r\n该操作将不可恢复!?');" 
                            Text="删除" />
                        </div></td>
                  </tr>
                </table></td>
                <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td ><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td ><div align="center"><img src="images/22.gif" width="14" height="14" /></div></td>
                    <td ><div align="center">新增</div></td>
                  </tr>
                </table></td>
                    <td >&nbsp;</td>
                  </tr>
                </table></td>
                <td width="52">&nbsp;</td>
              </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="images/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  
    <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="images/tab_12.gif">&nbsp;</td>
        <td align="center">

        <table cellpadding='2' cellspacing='1' border='0' class='border' align=center>
            <tr class='Navigation' style="background-image: url('images/Navigation.gif')"><td align=center>
                课程信息一览</td></tr><tr class='Navigationtdbg'><td align=center>
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="name">课程名称</asp:ListItem>
                </asp:DropDownList>

关键字： 
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="查询" />
                </td>
</tr>



</table><br>


            <asp:GridView ID="dbgContract" runat="server" AutoGenerateColumns="False"    
                CellPadding="4"  Width="98%" RowStyle-HorizontalAlign="center" 
                BorderColor="#B5D6E6" 
                onrowdatabound="dbgContract_RowDataBound" 
                onrowdeleting="dbgContract_RowDeleting" 
             
                Font-Size="9pt" AllowPaging="True" 
                AllowSorting="True" onsorting="dbgContract_Sorting" 
               >

<RowStyle HorizontalAlign="Center"></RowStyle>
                        <AlternatingRowStyle BackColor="#EFEFFF" />

                <Columns>
                    <asp:BoundField DataField="DeptName" HeaderText="课程分类" 
                        SortExpression="DeptName" ReadOnly="True" >
                    <ControlStyle Width="140px" />
                 
                    <HeaderStyle Font-Underline="True" ForeColor="Red" />
                 
                    </asp:BoundField>
                    <asp:BoundField DataField="kcmc" HeaderText="课程名称" SortExpression="kcmc">
                    <ControlStyle Width="80px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="zsxm" HeaderText="开课老师" SortExpression="zsxm" >
                    <ControlStyle Width="60px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="kkdx" HeaderText="开课对象" SortExpression="kkdx" >
                    </asp:BoundField>
                    <asp:BoundField DataField="xzrs" HeaderText="限制人数" SortExpression="xzrs" />
                    <asp:BoundField DataField="sfks" HeaderText="是否开设" SortExpression="sfks" />
                    <asp:TemplateField HeaderText="删除选课">
                        <ItemTemplate>
                             <asp:LinkButton ID="LinkButton1" runat="server"  
                                CommandArgument='<%# Eval("id") %>'  
                                onclientclick="javascript:return confirm('你确认要删除该课程的学生选课信息吗?')" 
                                onclick="LinkButton1_Click1">删除选课</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="编辑">
                        <ItemTemplate>
                           
                            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl='<%#"kcadd.aspx?id=" +  Eval("id")+"&caidanid=3" %>'>编辑</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                    <asp:TemplateField HeaderText="选择">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                 
                        <HeaderStyle BackColor="#B5D6E6" />
                        <PagerSettings Visible="False" />
                        <PagerStyle BackColor="#DEE9F9" Font-Bold="True" Font-Italic="False" Font-Size="13pt" />
                 
                       <RowStyle HorizontalAlign="Center" />
            </asp:GridView><table border="1" 
                style="border-color: #0099CC; border-collapse:collapse;" width="98%" 
                bgcolor="#B5D6E6">
  <tr>
    <td align="center">

        <asp:Label ID="Label1" runat="server"></asp:Label>

        <asp:Label ID="lblCurrentPage" runat="server"></asp:Label> 

<asp:LinkButton ID="lnkbtnFrist" runat="server" onclick="lnkbtnFrist_Click" >首页</asp:LinkButton> 
        <asp:LinkButton ID="lnkbtnPre" runat="server" onclick="lnkbtnPre_Click" >上一页</asp:LinkButton> 
        <asp:LinkButton ID="lnkbtnNext" runat="server" onclick="lnkbtnNext_Click" >下一页</asp:LinkButton> 
        <asp:LinkButton ID="lnkbtnLast" runat="server" onclick="lnkbtnLast_Click">尾页</asp:LinkButton> 
跳转到第<asp:DropDownList ID="ddlCurrentPage" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" > 
        </asp:DropDownList>页
     
        </td>
  </tr>
</table>
         <br /> 




    
<%--Table结束--%>

     </td>
        <td width="8" background="images/tab_15.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
    
   
  <tr>
    <td height="35" background="images/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="images/tab_18.gif" width="12" height="35" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td class="STYLE4">&nbsp;&nbsp;</td>
            <td><table border="0" align="right" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="40">&nbsp;</td>
                  <td width="45">&nbsp;</td>
                  <td width="45">&nbsp;</td>
                  <td width="40">&nbsp;</td>
                  <td width="100"><div align="center"></div></td>
                  <td width="40">&nbsp;</td>
                </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
  </table></asp:Content>