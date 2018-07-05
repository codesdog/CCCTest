<%@ Page Language="C#" AutoEventWireup="true" CodeFile="liuyan2.aspx.cs" Inherits="system80_liuyan2" %>

<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href ="images/m1.css" rel ="Stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                        <Columns>
                        <asp:TemplateField><HeaderTemplate>全选</HeaderTemplate> <ItemTemplate><asp:CheckBox ID ="CheckBox1" runat ="server"  Text ="" /></ItemTemplate></asp:TemplateField>
                            <asp:BoundField DataField="Id" HeaderText="留言编号" />
                            <asp:BoundField DataField="Title" HeaderText="留言标题" />
                            <asp:BoundField DataField="AddTime" HeaderText="留言时间" />
                            <asp:BoundField DataField="Author" HeaderText="留言人" />
                            <asp:BoundField DataField="fg" HeaderText="所属语言" />
                            <asp:BoundField DataField="flag" HeaderText="前台是否显示" />
                            <asp:BoundField DataField="Phone" HeaderText="联系电话" />
                          
                    <asp:TemplateField><HeaderTemplate>修改</HeaderTemplate><ItemTemplate><a href ='ModifyProduct.aspx?id=<%#Eval("Id")%>&action=liuyan'>查看</a></ItemTemplate></asp:TemplateField>
                                                        </Columns>
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:GridView>
                    <br />
                     <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged"
                            Text="全选 " />
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="删除所选"  OnClientClick="javascript:return confirm('确定删除吗？')"/>
                    &nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="取消" />
                    &nbsp; 备注****：ch:代表中文网站； en：代表英文网站！！<br />
                    <br />
                    <webdiyer:AspNetPager ID="AspNetPager1" runat="server" 
                        CustomInfoHTML="共%PageCount%页，当前为第%CurrentPageIndex%页，每页%PageSize%条" 
                        FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页" 
                        ShowCustomInfoSection="Left" SubmitButtonText="Go" TextAfterPageIndexBox="页" 
                        TextBeforePageIndexBox="转到" onpagechanging="AspNetPager1_PageChanging">
                    </webdiyer:AspNetPager>
                    <br />
    
    </div>
    </form>
</body>
</html>
