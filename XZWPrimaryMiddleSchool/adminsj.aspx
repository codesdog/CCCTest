<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="adminsj, wrxuanke" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <script src="laydate/laydate.js"></script>

<br />
    <asp:DetailsView ID="DetailsView1" runat="server" 
        AutoGenerateRows="False" CellPadding="3" GridLines="Vertical" 
        Height="50px" 
        Width="689px" 
        onitemupdating="DetailsView1_ItemUpdating" 
       style="text-align: center" onmodechanging="DetailsView1_ModeChanging" 
        BackColor="#B5D6E6" BorderColor="#B5D6E6" BorderStyle="Solid" 
        BorderWidth="1px" ForeColor="Black"   >
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle  Font-Bold="False"  />
        <Fields>
            <asp:TemplateField HeaderText="课程申报开始时间：" >
                <EditItemTemplate>
                 
                   
                    <asp:TextBox ID="TextBox1" runat="server"   onclick="laydate()" Text='<%# Eval("kcsbks") %> '></asp:TextBox>
                   
                <asp:DropDownList ID="DropDownList1" runat="server" 
                        selectedValue='<%#Bind("kcsbksh")%>' ondatabinding="DropDownList1_DataBinding">
                  
                      
                    </asp:DropDownList> </EditItemTemplate>
                <ItemTemplate>
                 <%#Eval("kcsbks")%>
 <%#Eval("kcsbksh")%>时


                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="课程申报结束时间：">
                <EditItemTemplate>
                      <asp:TextBox ID="TextBox2" runat="server"   Text='<%# Eval("kcsbjs") %> ' 
                           onclick="laydate()"></asp:TextBox>
                     
                        <asp:DropDownList ID="DropDownList2" runat="server" 
                          selectedValue='<%#Bind("kcsbjsh")%>' ondatabinding="DropDownList2_DataBinding">
                        
                       
                      
                    </asp:DropDownList>
                    
                  
                    
                </EditItemTemplate>
                <ItemTemplate>
                       <%#Eval("kcsbjs")%>
 <%#Eval("kcsbjsh")%>时
                </ItemTemplate>
            </asp:TemplateField>
        
<asp:TemplateField HeaderText="选课开始时间："><EditItemTemplate>
                 
                   
                    <asp:TextBox ID="TextBox3" runat="server"   
                       onclick="laydate()"
                        Text='<%# Eval("xkks") %> '></asp:TextBox>
                   
                <asp:DropDownList ID="DropDownList3" runat="server"   selectedValue='<%#Bind("xkksh")%>' 
                        ondatabinding="DropDownList3_DataBinding" 
                     >
                  
                      
                    </asp:DropDownList> 
                   

                    
                    
</EditItemTemplate>
<ItemTemplate>
                 <%#Eval("xkks")%>
 <%#Eval("xkksh")%>时


                
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="选课结束时间："><EditItemTemplate>
                      <asp:TextBox ID="TextBox4" runat="server"   Text='<%# Eval("xkjs")%> ' 
                          onclick="laydate()"></asp:TextBox>
                     
                        <asp:DropDownList ID="DropDownList4" runat="server" 
                          selectedValue='<%#Eval("xkjsh")%>' 
                          ondatabinding="DropDownList4_DataBinding">
                        
                       
                      
                    </asp:DropDownList>
                 
                    
                
</EditItemTemplate>
<ItemTemplate>
                       <%#Eval("xkjs")%>
 <%#Eval("xkjsh")%>时
                
</ItemTemplate>
</asp:TemplateField>
<asp:CommandField ShowEditButton="True"></asp:CommandField>
        
        </Fields>

       
        <FooterStyle BackColor="#B5D6E6" />
       
       
        <HeaderStyle BackColor="#0099FF" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            <div class="style1">
                系统设置</div>
        </HeaderTemplate>
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    </asp:DetailsView>


</asp:Content>

