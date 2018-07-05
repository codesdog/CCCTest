<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductList.aspx.cs" Debug ="true" Inherits="system80_ProductList" %>

<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>

<%@ Register src="fentop.ascx" tagname="fentop" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href ="images/M1.css" type ="text/css" rel="Stylesheet" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
      <asp:Panel ID ="list" runat ="server" >
        <table class="style1">
            <tr>
                <td class="bx">
                    <uc1:fentop ID="fentop1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="bx">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                        <Columns>
                        <asp:TemplateField><HeaderTemplate>全选</HeaderTemplate> <ItemTemplate><asp:CheckBox ID ="CheckBox1" runat ="server"  Text ="" /></ItemTemplate></asp:TemplateField>
                            <asp:BoundField DataField="Id" HeaderText="产品编号" />
                            <asp:BoundField DataField="ProTitle" HeaderText="产品名称" />
                            <asp:BoundField DataField="ProClassName" HeaderText="所属分类" />
                            <asp:BoundField DataField="ProTime" HeaderText="添加时间" />
                            <asp:BoundField DataField="flag" HeaderText="产品语言" />
                            <asp:BoundField DataField="ProAuthor" HeaderText="发布人" />
                            <asp:TemplateField ><HeaderTemplate>删除产品图片</HeaderTemplate><ItemTemplate><a href ='delproimg.aspx?id=<%#Eval("Id")%>' title="删除产品图片"  onclick="javascript:return confirm('确定删除吗？')" >删除产品图片</a></ItemTemplate></asp:TemplateField>
                    <asp:TemplateField><HeaderTemplate>修改</HeaderTemplate><ItemTemplate><a href ='ModifyProduct.aspx?id=<%#Eval("Id")%>&action=pro'>修改</a></ItemTemplate></asp:TemplateField>
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
                <td class="bx">
                     <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged"
                            Text="全选 " />
                        <asp:Button ID="Button5" runat="server" Text="删除" OnClick="Button5_Click" OnClientClick="javascript:return confirm('确定删除吗？')" />
                        <asp:Button ID="Button6" runat="server" Text="取消" OnClick="Button6_Click" />
                     &nbsp;&nbsp;&nbsp;&nbsp; 【ch：中文产品，en：英文产品】</td>
            </tr>
            <tr>
                <td class="bx">
                    <webdiyer:AspNetPager ID="AspNetPager1" runat="server" 
                        CustomInfoHTML="共%PageCount%页，当前为第%CurrentPageIndex%页，每页%PageSize%条" 
                        FirstPageText="首页" LastPageText="尾页" NextPageText="后页" PrevPageText="前页" 
                        ShowCustomInfoSection="Left" ShowPageIndexBox="Always" SubmitButtonText="Go" 
                        TextAfterPageIndexBox="页" TextBeforePageIndexBox="转到" 
                        onpagechanging="AspNetPager1_PageChanging" PageSize="10"></webdiyer:AspNetPager>
                </td>
            </tr>
             </table>
      </asp:Panel>
    <asp:Panel ID ="cat" runat ="server" >
      <table class="style1">
            <tr>
                <td class="bx">
                    后台首页 &gt; 产品管理 &gt; 添加产品分类</td>
            </tr>
            <tr>
                <td class="bx">
                    请输入中文产品分类名称：<asp:TextBox ID="TextBox1" runat="server" Width="210px"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="添加" />
                    &nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="bx">
                    请输入英文产品分类名称：<asp:TextBox ID="TextBox2" runat="server" Width="210px"></asp:TextBox>
                    &nbsp;
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Submit" />
                    &nbsp;点击这里提交产 品分类名称</td>
            </tr>
            <tr>
                <td class="bx">
                    后台首页 &gt; 产品管理 &gt; 产品分类管理</td>
            </tr>
            <tr>
                <td class="bx">
                    <asp:DataGrid ID="DataGrid1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" oncancelcommand="DataGrid1_CancelCommand" 
                        ondeletecommand="DataGrid1_DeleteCommand" oneditcommand="DataGrid1_EditCommand" 
                        onupdatecommand="DataGrid1_UpdateCommand" Width="100%">
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <EditItemStyle BackColor="#999999" BorderStyle="Outset" BorderWidth="50px" 
                            Font-Bold="True" ForeColor="Red" />
                        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <Columns>
                            <asp:BoundColumn DataField="ProClassId" HeaderText="分类编号" ReadOnly="True">
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="ProClassName" HeaderText="类别名称"></asp:BoundColumn>
                            <asp:BoundColumn DataField="flag" HeaderText="所属语言"></asp:BoundColumn>
                            <asp:EditCommandColumn CancelText="取消" EditText="编辑" HeaderText="修改" 
                                UpdateText="更新"></asp:EditCommandColumn>
                            <asp:ButtonColumn CommandName="Delete" HeaderText="删除" Text="删除" >
                            </asp:ButtonColumn>
                        </Columns>
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    </asp:DataGrid>
                    备注：所属语言 ch:中文分类,en：英文分类;若要修改，请将ch -&gt;en或en-&lt;ch;<br />
                </td>
            </tr>
             </table>
    </asp:Panel>
    </div>
    </form>
</body>
</html>
