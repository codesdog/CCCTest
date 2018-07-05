<%@ page title="" language="C#" masterpagefile="~/ls.master" autoeventwireup="true" inherits="tkccjtj, wrxuanke" %>

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
                <td width="95%" align="left"><span >你当前的位置</span>：[成绩录入]</td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="60">&nbsp;</td>
                <td width="60"><table width="88%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td ><div align="center"></div></td>
                    <td ><div align="center">
                        </div></td>
                  </tr>
                </table></td>
                <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td ><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td ><div align="center"></div></td>
                    <td ><div align="center"></div></td>
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
                课程名称：<%=Titlep %>成绩录入</td></tr><tr class='Navigationtdbg'><td align=center>
                &nbsp;
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click1" 
                    Text="导出选课数据" />
                </td>
</tr>



</table><br>


            <asp:GridView ID="dbgContract" runat="server" AutoGenerateColumns="False"    
                CellPadding="4"  Width="98%" RowStyle-HorizontalAlign="center" 
                BorderColor="#B5D6E6" 
                onrowdatabound="dbgContract_RowDataBound" Font-Size="9pt" 
                AllowSorting="True" 
               >

                       <RowStyle HorizontalAlign="Center" />
                        <AlternatingRowStyle BackColor="#EFEFFF" />

                <Columns>
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
<ControlStyle Width="40px"></ControlStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="xuehao" HeaderText="学号" SortExpression="xuehao" >
                    <ControlStyle Width="50px" />
<ControlStyle Width="50px"></ControlStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="rename" HeaderText="真实姓名" SortExpression="rename" >
                    <ControlStyle Width="60px" />
                 
<ControlStyle Width="60px"></ControlStyle>
                 
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
                    <asp:BoundField DataField="skdd" HeaderText="上课地点" />
                    <asp:BoundField DataField="sksj" HeaderText="上课时间" />
                    <asp:TemplateField HeaderText="成绩">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Height="18px" Width="60px" Text='<%# bind("cj") %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                 
                        <HeaderStyle BackColor="#B5D6E6" />
                        <PagerSettings Visible="False" />
                        <PagerStyle BackColor="#DEE9F9" Font-Bold="True" Font-Italic="False" Font-Size="13pt" />
                 
<RowStyle HorizontalAlign="Center"></RowStyle>
            </asp:GridView><table border="1" 
                style="border-color: #0099CC; border-collapse:collapse;" width="98%" 
                bgcolor="#B5D6E6">
  <tr>
    <td align="center">

        <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="成绩提交" 
            style="height: 21px" />
     
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