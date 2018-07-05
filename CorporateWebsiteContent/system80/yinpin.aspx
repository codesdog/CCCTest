<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yinpin.aspx.cs" Inherits="system80_yinpin" %>

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
    
        <table  style="width:100%;  text-align:left ; line-height :25px">
            <tr>
                <td class="tb">
                    应聘用户详细信息</td>
            </tr>
            <tr>
                <td class="tb">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                        <Columns>
                        <asp:TemplateField><HeaderTemplate>全选</HeaderTemplate> <ItemTemplate><asp:CheckBox ID ="CheckBox1" runat ="server"  Text ="" /></ItemTemplate></asp:TemplateField>
                            <asp:BoundField DataField="MemberId" HeaderText="编号" />
                            <asp:BoundField DataField="Zhiwei" HeaderText="应聘职位名称" />
                            <asp:BoundField DataField="UserName" HeaderText="应聘人姓名" />
                            <asp:BoundField DataField="Sex" HeaderText="性别" />
                            <asp:BoundField DataField="Xueli" HeaderText="学历" />
                            <asp:BoundField DataField="AddTime" HeaderText="应聘时间" />
                          
                    <asp:TemplateField><HeaderTemplate>查看用户信息</HeaderTemplate><ItemTemplate><a href ='yinpindetail.aspx?id=<%#Eval("Id")%>&action=modify'>查看详细信息</a></ItemTemplate></asp:TemplateField>
                                                        </Columns>
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:GridView>
                    </td>
            </tr>
            <tr>
                <td class="tb">
                     <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged"
                            Text="全选 " />
                        &nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="删除所选"  OnClientClick="javascript:return confirm('确定删除吗？')"/>
                    &nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="取消" />
                    </td>
            </tr>
            <tr>
                <td class="tb">
                    <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize ="10"
                        CustomInfoHTML="共%PageCount%页，当前为第%CurrentPageIndex%页，每页%PageSize%条" 
                        FirstPageText="首页" LastPageText="尾页" NextPageText="后页" 
                        onpagechanging="AspNetPager1_PageChanging" PrevPageText="前页" 
                        ShowCustomInfoSection="Left" ShowPageIndexBox="Always" SubmitButtonText="Go" 
                        TextAfterPageIndexBox="页" TextBeforePageIndexBox="转到">
                    </webdiyer:AspNetPager>
                </td>
            </tr>
            <tr>
                <td class="tb">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
