<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddChNews.aspx.cs" Inherits="system80_News_AddChNews" %>

<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>

<%@ Register src="fentop.ascx" tagname="fentop" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href ="images/m1.css" rel ="Stylesheet" />
        <link href="css.css" text/css" rel="Stylesheet" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 196px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <uc1:fentop ID="fentop1" runat="server" />
    
        <table class="style1">
            <tr>
                <td class="bx" colspan="2">
                    添加中文网站新闻信息</td>
            </tr>
            <tr>
                <td class="bx">
                    新闻标题：</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="703px"></asp:TextBox>
                &nbsp; 标题不能为空 *</td>
            </tr>
            <tr>
                <td class="bx">
                    新闻分类：</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="bx">
                    发布人：</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="146px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="bx">
                    详细信息：</td>
                <td>
                    <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Height="350px">
                    </FCKeditorV2:FCKeditor>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="提交" />
&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="清空" />
&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
