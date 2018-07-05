<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageYQ.aspx.cs" Inherits="Webwangzhan.admin.youqing.ManageYQ" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>友情链接管理</title>
</head>
<body>
    <form id="form1" runat="server">
  <x:PageManager ID="PageManager1" runat="server" />
    <x:Grid ID="Grid1" Title="友情链接管理" Icon="ApplicationFormMagnify" ShowBorder="true" ShowHeader="true" AutoHeight="true"
        PageSize="3" runat="server" EnableCheckBoxSelect="True" DataKeyNames="yq_id"
        Width="1000px" EnableRowNumber="True">
        <Toolbars>
            <x:Toolbar ID="Toolbar1" runat="server">
                <Items>
                    <x:Button ID="btnNew" Text="新增数据" Icon="Add" EnablePostBack="false" runat="server">
                    </x:Button>
                    <x:Button ID="btnDelete" Text="删除选中行" Icon="Delete" OnClick="btnDelete_Click" runat="server">
                    </x:Button>
                </Items>
            </x:Toolbar>
        </Toolbars>
        <Columns>
            <x:BoundField Width="200px" DataField="yq_name"  HeaderText="url名称" />
            <x:BoundField Width="200px" DataField="yq_url" HeaderText="url地址" />
            <x:BoundField Width="200px" DataField="yq_time" HeaderText="添加时间" />
           <x:WindowField TextAlign="Center" Width="100px" WindowID="Window1" Icon="Pencil"
            ToolTip="编辑" HeaderText="编辑" DataIFrameUrlFields="yq_id" DataIFrameUrlFormatString="ediyq.aspx?id={0}"
             Title="编辑" IFrameUrl="~/ediyq.aspx" />
       <x:LinkButtonField ColumnID="deleteField"  TextAlign="Center" Width="100px" Icon="Delete" ToolTip="删除" HeaderText="删除" ConfirmText="确认删除" CommandName="Delete" />
        </Columns>
    </x:Grid>
   <x:Window ID="Window1" Title="弹出窗体" Popup="false" EnableIFrame="true" IFrameUrl="about:blank"
        EnableMaximize="true" Target="Top" EnableResize="true" runat="server" OnClose="Window1_Close"
        IsModal="true" Width="420" EnableConfirmOnClose="true" Height="260px">
    </x:Window>
    </form>
</body>
</html>
