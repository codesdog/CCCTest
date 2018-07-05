<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Addusers.aspx.cs" Inherits="Admin_Addusers" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>盱眙县第二中学</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Label ID="Label1" runat="server" Text="用户名"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="密码"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    &nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="添加" />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" DataKeyNames="userid" 
        DataSourceID="AccessDataSource1" AllowPaging="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="userid" HeaderText="编号" InsertVisible="False" 
                ReadOnly="True" SortExpression="userid" />
            <asp:BoundField DataField="userName" HeaderText="用户名" 
                SortExpression="userName" />
            <asp:BoundField DataField="Passkey" HeaderText="密码" 
                SortExpression="Passkey" />
        </Columns>
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/#index.mdb" 
        DeleteCommand="DELETE FROM [tb_User] WHERE [userid] = ?"
        InsertCommand="INSERT INTO [tb_User] ([userid], [userName], [Passkey]) VALUES (?, ?, ?)" 
        SelectCommand="SELECT * FROM [tb_User] ORDER BY [userid]" 
        UpdateCommand="UPDATE [tb_User] SET [userName] = ?, [Passkey] = ? WHERE [userid] = ?">
        <DeleteParameters>
            <asp:Parameter Name="userid" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="userName" Type="String" />
            <asp:Parameter Name="Passkey" Type="String" />
            <asp:Parameter Name="userid" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="userid" Type="Int32" />
            <asp:Parameter Name="userName" Type="String" />
            <asp:Parameter Name="Passkey" Type="String" />
        </InsertParameters>
    </asp:AccessDataSource>
    </form>
</body>
</html>
