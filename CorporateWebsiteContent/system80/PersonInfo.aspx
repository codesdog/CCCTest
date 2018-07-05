<%@ Page Language="C#" AutoEventWireup="true" Debug ="true" CodeFile="PersonInfo.aspx.cs" Inherits="Admin_PersonInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="css.css" rel="stylesheet" type="text/css" />
</head>
<body style="text-align: left">
    <form id="form1" runat="server">
        &nbsp;<asp:Panel ID="Panel1" runat="server" Width="98%">
            <table border="0" cellpadding="0" cellspacing="0" class="bx" width="98%">
                <tr>
                    <td colspan="3">
        修改您的信息</td>
                </tr>
                <tr>
                    <td style="width:8%; height: 32px">
                        用户名：</td>
                    <td style="height: 32px; width:80%; text-align: left;" colspan="2">
                        <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="123px"></asp:TextBox>
                        （用户名不可更改）</td>
                </tr>
                <tr>
                    <td style="width: 8%; height: 32px">
                        用户密码：</td>
                    <td colspan="2" style="width: 80%; height: 32px; text-align: left;">
                        <asp:TextBox ID="TextBox2" runat="server" Width="347px"></asp:TextBox>&nbsp;（此密码请牢记！！）
                        <asp:Button ID="Button1" runat="server" Text="修改" OnClick="Button1_Click" />
                        &nbsp; &nbsp;<a href ="javascript:history.back(-1)"><strong >>>返回<<</strong></a>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td style="width: 8%; height: 32px">
                    </td>
                    <td colspan="2" style="width: 80%; height: 32px">
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Width="98%">
            &nbsp;
<TABLE class="bx" style="width: 100%"><TR><TD style="WIDTH: 100px; TEXT-ALIGN: center">管理员列表信息</TD></TR><TR><TD style="WIDTH: 700px; ;">
    <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" CellPadding="4"
        ForeColor="#333333" GridLines="None" Width="100%" OnDeleteCommand="DataGrid1_DeleteCommand">
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditItemStyle BackColor="#999999" />
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:BoundColumn DataField="Id" HeaderText="编号" ReadOnly="True"></asp:BoundColumn>
            <asp:BoundColumn DataField="AdminName" HeaderText="用户名"></asp:BoundColumn>
            <asp:BoundColumn DataField="AdminPass" HeaderText="用户密码"></asp:BoundColumn>
            <asp:TemplateColumn  HeaderText="修改">
                <EditItemTemplate>
                    <asp:LinkButton runat="server" CommandName="Update" Text="更新"></asp:LinkButton>
                    <asp:LinkButton runat="server" CausesValidation="false" CommandName="Cancel" Text="取消"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                   <asp:ImageButton ImageUrl="~/Images/edit.gif" runat ="server" CausesValidation ="false"  />
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="删除">
                <ItemTemplate>
                  <a href ='del.aspx?Id=<%#Eval("Id") %>&action=del' onclick="javascript:return confirm('确定删除吗？')" ><img src ="../Images/action_delete.gif" style ="border :none"  /></a>
                </ItemTemplate>
            </asp:TemplateColumn>
        </Columns>
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    </asp:DataGrid></TD></TR></TABLE>
            &nbsp;
                <table border="0" cellpadding="0" cellspacing="0" class="bx" width="98%">
            <tr>
                <td colspan="3">
                    添加管理员账号</td>
            </tr>
            <tr>
                <td style="width: 88px; height: 32px">
                    用户名：</td>
                <td colspan="2" style="height: 32px; text-align: left">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>&nbsp;</td>
                </tr>
            <tr>
                <td style="width: 88px; height: 32px">
                    密码：</td>
                <td colspan="2" style="height: 32px; text-align: left">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" Text="添加" OnClick="Button2_Click" /></td>
            </tr>
                    <tr>
                        <td style="width: 88px; height: 32px">
                        </td>
                        <td colspan="2" style="height: 32px; text-align: left">
                            <asp:Label ID="Label1" runat="server"></asp:Label></td>
                    </tr>
        </table>
        </asp:Panel>
    </form>
</body>
</html>
