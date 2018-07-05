<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newsManage.aspx.cs" Inherits="Webwangzhan.admin.news.newsManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>新闻管理</title>
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
                            <x:TwinTriggerBox runat="server" EmptyText="输入新闻标题搜索" ShowLabel="false" Width="500" ID="ttbSearch"
                                ShowTrigger1="false" OnTrigger1Click="ttbSearch_Trigger1Click" OnTrigger2Click="ttbSearch_Trigger2Click"
                                Trigger1Icon="Clear" Trigger2Icon="Search">
                            </x:TwinTriggerBox>
                        </Items>
                    </x:FormRow>
                </Rows>
            </x:Form>
            <x:Panel ID="Panel8" ShowBorder="True" ShowHeader="false" BoxFlex="1" Layout="Fit"
                runat="server">
                <Toolbars>
                    <x:Toolbar ID="Toolbar2" runat="server">
                        <Items>
                            <x:Button ID="btnPopupWindow"  Icon="ApplicationAdd" Text="新增内容" runat="server">
                            </x:Button>
                            <x:Button ID="btnConfirmButton" Icon="ApplicationDelete" Text="删除选中行" 
                                runat="server" OnClick="btnConfirmButton_Click">
                            </x:Button>
                        </Items>
                    </x:Toolbar>
                </Toolbars>
                <Items>
                    <x:Grid ID="Grid2" Title="Grid2" PageSize="60" ShowBorder="false" AllowPaging="true"
                        OnPageIndexChange="Grid2_PageIndexChange" ShowHeader="False" runat="server"  EnableCheckBoxSelect="True"
                        DataKeyNames="n_id"  EnableRowNumber="True">
                        <Columns>
                            <x:BoundField  DataField="n_tname"  Width="200" HeaderText="新闻标题" />
                            <x:BoundField  DataField="n_time"  Width="200" HeaderText="添加时间" />
                            <x:WindowField TextAlign="Center" Width="100px" WindowID="Window1" Icon="Pencil"
                                ToolTip="编辑" HeaderText="编辑" DataIFrameUrlFields="n_id" DataIFrameUrlFormatString="edinew.aspx?id={0}"
                                Title="编辑" IFrameUrl="~/edinew.aspx" />
                           <x:LinkButtonField ColumnID="deleteField"  TextAlign="Center" Width="100px" Icon="Delete" ToolTip="删除" HeaderText="删除" ConfirmText="确认删除" CommandName="Delete" />
                        </Columns>
                    </x:Grid>
                </Items>
            </x:Panel>
        </Items>
    </x:Panel>
    <x:Window ID="Window1" Title="弹出窗体" Popup="false" EnableIFrame="true" IFrameUrl="about:blank"
        EnableMaximize="true" Target="Top" EnableResize="true" runat="server" OnClose="Window1_Close"
        IsModal="true" Width="1020px" EnableConfirmOnClose="true" Height="620px">
    </x:Window>

    </form>
</body>
</html>
