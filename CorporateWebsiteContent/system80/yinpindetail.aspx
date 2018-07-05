<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yinpindetail.aspx.cs" Inherits="system80_yinpindetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
     <link href ="images/m1.css" rel ="Stylesheet" />
    <style type="text/css">
        .style2
        {
            line-height:25px;
            text-align:center ;
        }
        .style3
        {
            line-height: 25px;
            text-align: center;
        }
    </style>
</head>
<body>
 
    <form id="form1" runat="server">
    <div style="line-height: 25px">
       <table style ="width:100%; text-align:left ; line-height :25px">
        <tr>
            <td class="style3" colspan="2" 
                style="text-decoration: underline; font-size: large; font-weight: bold">
                查看应聘用户的详细信息</td>
        </tr>
        <tr>
            <td class="style2">
                应聘职位：</td>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                应聘人姓名：</td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 别：</td>
            <td>
                <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
        </tr>
        <tr>
            <td class="style2">
                学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 历：</td>
            <td>
                <asp:Label ID="Label4" runat="server"></asp:Label>
                    </td>
        </tr>
        <tr>
            <td class="style2">
                应聘时间：</td>
            <td>
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                联系地址：</td>
            <td>
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                籍&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 贯：</td>
            <td>
                <asp:Label ID="Label7" runat="server"></asp:Label>
                    </td>
        </tr>
        <tr>
            <td class="style2">
                教育背景：</td>
            <td>
                <asp:Label ID="Label8" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                工作经验：</td>
            <td>
                <asp:Label ID="Label9" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 注：</td>
            <td>
                <asp:Label ID="Label10" runat="server"></asp:Label>
                    </td>
        </tr>
        <tr>
            <td class="style2">
                应聘信息来源：</td>
            <td>
                <asp:Label ID="Label11" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="返回" onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="删除此用户信息"  OnClientClick="javascript:return confirm('确定删除此用户信息吗？不可恢复！')"
                    onclick="Button2_Click" />
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
