<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feed.aspx.cs" Inherits="system80_feed" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="css.css"  type ="text/css" rel="Stylesheet" />
    <link href ="images/m1.css" rel ="Stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="line-height:25px">
    
        留言人:<asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
        <br />
        留言标题:<asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
        留言内容:<asp:Label ID="Label3" runat="server"></asp:Label>
        <br />
        留言时间:<asp:Label ID="Label4" runat="server"></asp:Label>
        <br />
        联系方式:<asp:Label ID="Label5" runat="server"></asp:Label>
        <br />
        联系地址:<asp:Label ID="Label6" runat="server"></asp:Label>
        <br />
        Q&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Q:<asp:Label ID="Label7" 
            runat="server"></asp:Label>
        <br />
        备注信息:<asp:Label ID="Label8" runat="server"></asp:Label>
        <br />
        留言来源:<asp:Label ID="Label9" runat="server"></asp:Label>
        <br />
        您的邮箱:<asp:Label ID="Label10" runat="server"></asp:Label>
        <br />
        前台是否显示:<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>是</asp:ListItem>
            <asp:ListItem>否</asp:ListItem>
        </asp:DropDownList>
        <br />
        管理员回复:<asp:TextBox ID="TextBox1" runat="server" Height="200px" 
             style="width: 400px" TextMode="MultiLine" 
            Width="207px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="提交" onclick="Button1_Click" />
&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="删除" />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
