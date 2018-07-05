<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="Webwangzhan.admin.dingdan.order" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>订单中心</title>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Grid ID="Grid1" Title="订单中心" Icon="ApplicationFormMagnify" ShowBorder="true" 
        ShowHeader="true" AutoHeight="true"
        PageSize="3" runat="server" EnableCheckBoxSelect="True" DataKeyNames="oid"
        Width="940px" EnableRowNumber="True" onrowcommand="Grid1_RowCommand">
        <Toolbars>
            <x:Toolbar ID="Toolbar1" runat="server">
                <Items>
                    <x:Button ID="btnDelete" Text="批量删除" Icon="Delete" OnClick="btnDelete_Click" runat="server">
                    </x:Button>
                </Items>
            </x:Toolbar>
        </Toolbars>
        <Columns>
            <x:BoundField Width="200px" DataField="oname"  HeaderText="产品名称" />
            <x:BoundField Width="200px" DataField="ono"  HeaderText="产品数量" />
            <x:BoundField Width="200px" DataField="oren"  HeaderText="联系人" />
            <x:BoundField Width="200px" DataField="odianhua"  HeaderText="联系电话" />
               <x:LinkButtonField ColumnID="deleteField"  TextAlign="Center" Width="100px" Icon="Delete" ToolTip="删除" HeaderText="删除" ConfirmText="确认删除" CommandName="Delete" />
        </Columns>
    </x:Grid>
    </form>
</body>
</html>
