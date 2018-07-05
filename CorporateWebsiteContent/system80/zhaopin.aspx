<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhaopin.aspx.cs" Inherits="system80_zhaopin" %>

<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
     <link href ="images/m1.css" rel ="Stylesheet" />
        
   
    <style type="text/css">
        .style1
        {
            width: 100%;
            line-height:20px;
        }
        .style2
        {
            line-height: 20px;
        }
    </style>
        
   
</head>
<body>
<form id ="Form1" runat ="server" >

<table class="style1">
    <tr>
        <td class="style2" colspan="2">
            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style2">
            招聘职位名称：</td>
        <td style ="text-align:left ">
            <asp:TextBox ID="TextBox1" runat="server" Width="600px"></asp:TextBox>
        &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            招聘简介：</td>
        <td style ="text-align:left ">
            <asp:TextBox ID="TextBox2" runat="server" Height="123px" TextMode="MultiLine" 
                Width="600px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2" valign="top">
            招聘详细要求：</td>
        <td style ="text-align:left ">
            <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Height="300px" 
                Width="600px">
            </FCKeditorV2:FCKeditor>*请在这里输入您的招聘详细要求信息。&nbsp;
        </td>
       
    </tr>
    <tr>
        <td class="style2">
            招聘人数：</td>
        <td style ="text-align:left ">
            <asp:TextBox ID="TextBox3" runat="server" Width="52px">1人</asp:TextBox>
        &nbsp;系统默认招聘人数为1人；如不符合您的要求，请更改！</td>
    </tr>
    <tr>
        <td class="style2">
            信息发布单位：</td>
        <td style ="text-align:left ">
            <asp:TextBox ID="TextBox4" runat="server" Width="209px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            联系方式：</td>
        <td style ="text-align:left " valign="middle" >
           <asp:TextBox ID="TextBox5" runat="server" Height="95px" TextMode="MultiLine" 
                Width="594px"></asp:TextBox> 
            <br />
            【请在这里输入您的详细联系方式，方便应聘人员联系您！！】
            </td>
    </tr>
    <tr>
        <td class="style2">
            发布版块：</td>
        <td style ="text-align:left ">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="ch">中文</asp:ListItem>
                <asp:ListItem Value="en">英文</asp:ListItem>
            </asp:DropDownList>
&nbsp; 【选择要发布到的语言网站】&nbsp; 
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td style ="text-align:left ">
            <asp:Button ID="Button2" runat="server" Text="提交" onclick="Button2_Click" 
                style="width: 40px" />
            &nbsp;
            <asp:Button ID="Button3" runat="server" Text="保存" onclick="Button3_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="取消" onclick="Button1_Click" />
        &nbsp;&nbsp; 【信息提交前请仔细检查输入是否有误！！】</td>
    </tr>
</table>

</form>
    </body>
</html>
