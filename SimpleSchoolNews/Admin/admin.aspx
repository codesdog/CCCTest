<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>盱眙县第二中学</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" width="800px" Height="132px"
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" 
        DataSourceID="AccessDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
        style="margin-top: 0px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" >
                <ItemStyle Height="20px" Width="50px" />
            </asp:CommandField>
            <asp:BoundField DataField="ID" HeaderText="编号" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" >
                <ControlStyle Width="8px" />
            </asp:BoundField>
            <asp:BoundField DataField="Title" HeaderText="标题" SortExpression="Title" >
                <ControlStyle Width="12px" />
            </asp:BoundField>
            <asp:BoundField DataField="Content" HeaderText="内容" SortExpression="Content" >
                <ControlStyle Height="20px" Width="49px" />
            </asp:BoundField>
            <asp:BoundField DataField="Type" HeaderText="类型" SortExpression="Type" >
                <ControlStyle Width="12px" />
            </asp:BoundField>
        </Columns>
        <EditRowStyle Width="50px" />
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/#index.mdb" 
        DeleteCommand="DELETE FROM [tbNews] WHERE [ID] = ?" 
        InsertCommand="INSERT INTO [tbNews] ([ID], [Title], [Content], [Type]) VALUES (?, ?, ?, ?)" 
        SelectCommand="SELECT [ID], [Title], [Content], [Type] FROM [tbNews] ORDER BY [Type], [ID]" 
        
        UpdateCommand="UPDATE [tbNews] SET [Title] = ?, [Content] = ?, [Type] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Content" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Content" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
        </InsertParameters>
    </asp:AccessDataSource>
    &nbsp;<a href ="Addusers.aspx">用户编辑</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href ="Addnews.aspx">添加新闻</a></form>
</body>
</html>
