<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_about.aspx.cs" Inherits="system80_add_about" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
     <link href ="images/m1.css" rel ="Stylesheet" />
    <style type="text/css">
        .style1
        {
            width: 100%;
            line-height:25px;
        }
    </style>
</head>
<body>
   
    <form id="form1" runat="server">
    <div>
    <asp:Panel ID ="lxwmclass" runat ="server" >
     <table class="style1">
        <tr>
            <td>
    
        增加 关于我们</td>
        </tr>
        <tr>
            <td>
                输入中文栏目名称：<asp:TextBox ID="TextBox1" runat="server" Width="160px"></asp:TextBox>
&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="增加" 
                    ValidationGroup="g" />
&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*" 
                    ValidationGroup="g"></asp:RequiredFieldValidator>
                不能为空！！<br />
                <br />
                输入英文栏目名称：<asp:TextBox ID="TextBox2" runat="server" Width="153px"></asp:TextBox>
&nbsp;
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="提交" 
                    ValidationGroup="g1" />
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="****" ValidationGroup="g1"></asp:RequiredFieldValidator>
&nbsp; 请输入对应的英文名称！<br />
                <br />
                <br />
                管理关于我们栏目名称： 请慎用删除功能，数据删除不可恢复！！<br />
                <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" 
                    oncancelcommand="DataGrid1_CancelCommand" 
                    ondeletecommand="DataGrid1_DeleteCommand" oneditcommand="DataGrid1_EditCommand" 
                    onupdatecommand="DataGrid1_UpdateCommand">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditItemStyle BackColor="#999999" />
                    <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                    <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundColumn DataField="lxClassId" HeaderText="分类编号" ReadOnly="True">
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="lxClassName" HeaderText="分类名称"></asp:BoundColumn>
                        <asp:ButtonColumn CommandName="Delete" HeaderText="删除" Text="删除">
                        </asp:ButtonColumn>
                        <asp:EditCommandColumn CancelText="取消" EditText="编辑" HeaderText="编辑" 
                            UpdateText="更新"></asp:EditCommandColumn>
                    </Columns>
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                </asp:DataGrid></asp:Panel>
                <asp:Panel ID ="lx" runat ="server" >
                <br />
                管理关于我们的详细信息列表：<br />
                <asp:DataGrid ID="DataGrid2" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditItemStyle BackColor="#999999" />
                    <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                    <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundColumn DataField="lxid" HeaderText="编号" ReadOnly="True">
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="lxTitle" HeaderText="标题"></asp:BoundColumn>
                        <asp:BoundColumn DataField="lxClassName" HeaderText="所属分类"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText ="修改"><ItemTemplate><a href ='abt.aspx?id=<%#Eval("lxid")%>&action=mod'>修改</a></ItemTemplate></asp:TemplateColumn>
                    </Columns>
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                </asp:DataGrid></asp:Panel>
                <br />
&nbsp;&nbsp; </td>
        </tr>
    </table>
        </div>
    </form>
</body>
</html>
