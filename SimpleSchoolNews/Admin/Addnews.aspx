<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Addnews.aspx.cs" Inherits="Admin_Addnews" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>盱眙县第二中学</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Label ID="Label1" runat="server" Text="标题"></asp:Label>
    &nbsp;
    <asp:TextBox ID="txtNewsTitle" runat="server" Height="22px" Width="158px"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="内容"></asp:Label>&nbsp;
    <asp:TextBox ID="txtNewsContent" runat="server" Height="24px" Width="324px"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="样式"></asp:Label>
    &nbsp;
    <asp:TextBox ID="labTitle" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="类别"></asp:Label>
    &nbsp;
    <asp:DropDownList ID="ddlNewsType" runat="server" Height="22px" Width="100px" 
        DataSourceID="AccessDataSource1" DataTextField="newsType" 
        DataValueField="newsType">
    </asp:DropDownList>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/#index.mdb" 
        SelectCommand="SELECT [newsType] FROM [newsType] ORDER BY [ID]">
    </asp:AccessDataSource>
    <br />
    <asp:Label ID="Label5" runat="server" Text="时间"></asp:Label>
    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="添加" 
        onclick="Button1_Click" />&nbsp;&nbsp;<asp:Button ID="Button2" 
        runat="server" Text="取消" onclick="Button2_Click" />
    </form>
</body>
</html>
