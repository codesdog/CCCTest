<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gdManage.aspx.cs" Inherits="Webwangzhan.admin.goods.gdManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>产品管理</title>
</head>
<body>
    <form id="form1" runat="server">
   <x:PageManager ID="PageManager1" AutoSizePanelID="Panel7" runat="server" />
    <x:Panel ID="Panel7" runat="server" EnableBackgroundColor="true" BodyPadding="3px"
        EnableLargeHeader="true" Title="Panel" ShowBorder="false" ShowHeader="True" Layout="VBox"
        BoxConfigAlign="Stretch">
        <Items>
            <x:Form ID="Form5" ShowBorder="False" BodyPadding="5px" EnableBackgroundColor="true"
                ShowHeader="False" runat="server">
                <Rows>
                    <x:FormRow runat="server">
                        <Items>
                            <x:TwinTriggerBox runat="server" EmptyText="输入要搜索的关键词" ShowLabel="false" ID="ttbSearch"
                                ShowTrigger1="false" OnTrigger1Click="ttbSearch_Trigger1Click" OnTrigger2Click="ttbSearch_Trigger2Click"
                                Trigger1Icon="Clear" Trigger2Icon="Search">
                            </x:TwinTriggerBox>
                            <x:DropDownList ID="DropDownList1" ShowLabel="false" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                                runat="server">
                                <x:ListItem Text="过滤条件一" Value="filter1" />
                                <x:ListItem Text="过滤条件二" Value="filter2" />
                                <x:ListItem Text="过滤条件三" Value="filter3" />
                            </x:DropDownList>
                        </Items>
                    </x:FormRow>
                </Rows>
            </x:Form>
            <x:Panel ID="Panel8" ShowBorder="True" ShowHeader="false" BoxFlex="1" Layout="Fit"
                runat="server">
                <Toolbars>
                    <x:Toolbar ID="Toolbar2" runat="server">
                        <Items>
                            <x:Button ID="btnPopupWindow" Text="新增产品" Icon="ApplicationOsxAdd" runat="server">
                            </x:Button>
                            <x:Button ID="btnConfirmButton" Text="删除选中行" Icon="ApplicationOsxDelete" 
                                runat="server" OnClick="btnConfirmButton_Click">
                            </x:Button>
                        </Items>
                    </x:Toolbar>
                </Toolbars>
                <Items>
                    <x:Grid ID="Grid2" Title="Grid2" PageSize="80" ShowBorder="false" AllowPaging="true"
                        OnPageIndexChange="Grid2_PageIndexChange" ShowHeader="False" runat="server" EnableCheckBoxSelect="True"
                        DataKeyNames="gid" OnSort="Grid2_Sort" EnableRowNumber="True">
                        <Columns>
                            <x:BoundField Width="200px" DataField="gname"  HeaderText="产品名称" />
                            <x:BoundField Width="200px" DataField="gc_name" HeaderText="产品类别" />
                             <x:BoundField Width="300px" DataField="gtime" HeaderText="添加时间" />
                            <x:WindowField TextAlign="Center" Width="100px" WindowID="Window1" Icon="Pencil"  HeaderText="编辑"
                                ToolTip="编辑" DataIFrameUrlFields="gid" DataIFrameUrlFormatString="edigood.aspx?id={0}"
                                Title="编辑" IFrameUrl="~/edigood.aspx" />
                             <x:LinkButtonField ColumnID="deleteField"  TextAlign="Center" Width="100px" Icon="Delete" ToolTip="删除" HeaderText="删除" ConfirmText="确认删除" CommandName="Delete" />
                        </Columns>
                    </x:Grid>
                </Items>
            </x:Panel>
        </Items>
    </x:Panel>
    <x:Window ID="Window1" Title="弹出窗体" Popup="false" EnableIFrame="true" IFrameUrl="about:blank"
        EnableMaximize="true" Target="Top" EnableResize="true" runat="server" OnClose="Window1_Close"
        IsModal="true" Width="1080px" EnableConfirmOnClose="true" Height="750px">
    </x:Window>

    </form>
</body>
</html>
