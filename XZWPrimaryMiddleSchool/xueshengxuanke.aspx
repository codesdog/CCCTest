<%@ page title="" language="C#" masterpagefile="~/xs.master" autoeventwireup="true" inherits="xueshengxuanke, wrxuanke" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="images/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table border="0" cellspacing="0" cellpadding="0" 
                    style="width: 171%">
              <tr>
                <td width="5%"><div align="center"><img src="images/tb.gif" width="16" height="16" /></div></td>
                <td width="95%" align="left"><span >你当前的位置</span>：[选课页面]<asp:Label ID="Label2" 
                        runat="server" > 共需选择 <%=Session["meishu"]%> 门课</asp:Label>
                  </td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="60">&nbsp;</td>
                <td width="60">&nbsp;</td>
                <td width="60">&nbsp;</td>
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
            <asp:GridView ID="dbgContract" runat="server" AutoGenerateColumns="False"    
                CellPadding="0"  Width="98%" RowStyle-HorizontalAlign="center" 
                BorderColor="#666699" onrowcancelingedit="dbgContract_RowCancelingEdit" 
                onrowdatabound="dbgContract_RowDataBound" 
                onrowdeleting="dbgContract_RowDeleting" 
                onrowediting="dbgContract_RowEditing" 
                onrowupdating="dbgContract_RowUpdating" Font-Size="9pt" BackColor="#EFF3FB" 
               >

<RowStyle HorizontalAlign="Center" BorderColor="#6699FF" BorderWidth="1px"></RowStyle>
                      

                <Columns>
                    <asp:TemplateField HeaderText="课程分类">
                        <ItemTemplate>
                             <%# Eval("kcfl")%>
                             <asp:HiddenField ID="HDFSex" runat="server" Value='<%# Eval("id") %>' />
                    <br />
                       
                        </ItemTemplate>
                        <HeaderStyle BorderColor="#6699FF" />
                        <ItemStyle Width="130px" BorderColor="#6699FF" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="课程列表">
                        <ItemTemplate>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" 
                                BackColor="#EFF3FB">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:TemplateField HeaderText="选择">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox3" runat="server" Text="选择" />
                                        </ItemTemplate>
                                        <ItemStyle Width="50px" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="kcmc" HeaderText="课程名称" />
                                    <asp:BoundField DataField="kkdx" HeaderText="开课对象">
                                    <ItemStyle Width="120px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="xzrs" HeaderText="限制人数" >
                                    <ItemStyle Width="60px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="yxrs" HeaderText="已选人数">
                                    <ItemStyle Width="60px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="sksj" HeaderText="上课时间">
                                    <ItemStyle Width="80px" />
                                    </asp:BoundField>
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#D5EDFC" Font-Bold="True" ForeColor="Black" 
                                    Font-Size="9pt" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                 
                        <HeaderStyle BackColor="#B5D6E6" Height="30px" />
                        <PagerSettings Visible="False" />
                        <PagerStyle BackColor="#DEE9F9" Font-Bold="True" Font-Italic="False" Font-Size="13pt" />
                 
                       <RowStyle HorizontalAlign="Center" />
            </asp:GridView>
         <br /> 
         <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="选课" 
                style="height: 21px" />
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

