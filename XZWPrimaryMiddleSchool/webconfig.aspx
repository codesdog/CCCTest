<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="webconfig, wrxuanke" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
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
            <asp:BoundField DataField="schoolmc" HeaderText="学校名称" />
            <asp:BoundField DataField="email" HeaderText="联系邮箱" />
            <asp:BoundField DataField="tel" HeaderText="联系电话" />
            <asp:BoundField DataField="xuenian" HeaderText="当前学年" />
            <asp:TemplateField HeaderText="学期" >
                <EditItemTemplate>
                    
                    <asp:DropDownList ID="DropDownList1" runat="server" selectedValue='<%#Bind("xueqi")%>'>
                        <asp:ListItem Value="1" >1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="4">3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                    </asp:DropDownList>
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </EditItemTemplate>
                <ItemTemplate>
                 <%#Eval("xueqi")%>
                   


                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="jimen" HeaderText="选课门数" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
       
       
        <FooterStyle BackColor="#B5D6E6" />
       
       
        <HeaderStyle BackColor="#0099FF" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            <div class="style1">
                时间设置</div>
        </HeaderTemplate>
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    </asp:DetailsView></asp:Content>

