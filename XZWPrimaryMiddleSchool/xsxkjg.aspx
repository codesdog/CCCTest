<%@ page title="" language="C#" masterpagefile="~/xs.master" autoeventwireup="true" inherits="xsxkjg, wrxuanke" %>

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
                <td width="95%" align="left"><span >你当前的位置</span>：[选课结果</td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="60"><table width="87%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center">
                      &nbsp;</div></td>
                    <td >&nbsp;</td>
                  </tr>
                </table></td>
                <td width="60"><table width="88%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td ><div align="center"></div></td>
                    <td ><div align="center">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                            onclientclick="javascript:return confirm('你确认要删除?\r\n\r\n此操作一旦执行，将清除所有的学生名单和选课信息。\r\n\r\n该操作将不可恢复!?');" 
                            Text="全部退选" />
                        </div></td>
                  </tr>
                </table></td>
                <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td ><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td ><div align="center"></div></td>
                    <td >&nbsp;</td>
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

        <br>


            <asp:GridView ID="dbgContract" runat="server" AutoGenerateColumns="False"    
                CellPadding="4"  Width="98%" RowStyle-HorizontalAlign="center" 
                BorderColor="#B5D6E6" onrowcancelingedit="dbgContract_RowCancelingEdit" 
                onrowdatabound="dbgContract_RowDataBound" 
                onrowdeleting="dbgContract_RowDeleting" 
                onrowediting="dbgContract_RowEditing" 
                onrowupdating="dbgContract_RowUpdating" Font-Size="9pt" AllowPaging="True" 
                AllowSorting="True" onsorting="dbgContract_Sorting" 
               >

                       <RowStyle HorizontalAlign="Center" />
                        <AlternatingRowStyle BackColor="#EFEFFF" />

                <Columns>
                    <asp:BoundField DataField="rename" HeaderText="真实姓名" SortExpression="rename" >
                    <ControlStyle Width="60px" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="年级">
                       <ItemTemplate>
                    <%# Eval("nianji")%>
                        
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:HiddenField ID="HDFAddress" runat="server" Value='<%# Eval("nianji") %>' />
                    <asp:DropDownList ID="DDLAddress" runat="server" Width="60px" 
                        />
                </EditItemTemplate>
             
                    </asp:TemplateField>
                    <asp:BoundField DataField="class" HeaderText="班级" SortExpression="class" >
                    <ControlStyle Width="40px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="xuehao" HeaderText="学号" SortExpression="xuehao" >
                    <ControlStyle Width="50px" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="性别">
                        
                     <ItemTemplate>
                    <%# Eval("sex")%>
              
                     
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:HiddenField ID="HDFSex" runat="server" Value='<%# Eval("sex") %>' />
                    
                            
                    <asp:DropDownList ID="DDLSex" runat="server" Width="40px" />
                </EditItemTemplate>
                    
                    
                    </asp:TemplateField>
                    <asp:BoundField DataField="kcmc" HeaderText="所选课程" />
                    <asp:BoundField DataField="zsxm" HeaderText="任课老师" />
                    <asp:BoundField DataField="skdd" HeaderText="上课地点" />
                    <asp:BoundField DataField="sksj" HeaderText="上课时间" />
                </Columns>
                 
                        <EmptyDataTemplate>
                            暂无选课信息
                </EmptyDataTemplate>
                 
                        <HeaderStyle BackColor="#B5D6E6" />
                        <PagerSettings Visible="False" />
                        <PagerStyle BackColor="#DEE9F9" Font-Bold="True" Font-Italic="False" Font-Size="13pt" />
                 
<RowStyle HorizontalAlign="Center"></RowStyle>
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
  </table>
</asp:Content>

