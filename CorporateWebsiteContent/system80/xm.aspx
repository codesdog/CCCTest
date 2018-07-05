<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xm.aspx.cs" Inherits="Admin_xm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="css.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
    function Check_FileType()
{
var str=document.getElementById("FileUpload1").value;
 var pos = str.lastIndexOf(".");
 var lastname = str.substring(pos,str.length)  
 if (lastname.toLowerCase()!=".jpg" && lastname.toLowerCase()!=".gif"&&lastname.toLowerCase()!=".png"&&lastname.toLowerCase()!=".rar"&&lastname.toLowerCase()!=".doc"&&lastname.toLowerCase()!=".ppt")
 {
     alert("您上传的文件类型为"+lastname+"，图片必须为.jpg,.gif类型,.png类型,doc,.rar");
     return false;
 }
 else 
 {
  return true;
 }
} 
 </script>  
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: left">
        <asp:Panel ID="Panel1" runat="server" Height="50px" Width="100%">
            链接名称：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;
            <br />
            链接地址：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
            链接ＬＯＧＯ：<asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="Button2" runat="server" Text="上传LOGO" OnClick="Button2_Click" />
            &nbsp;
            <asp:Label ID="Label1" runat="server"></asp:Label><br />
            <asp:TextBox ID="TextBox3" runat="server" Width="386px"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" /></asp:Panel>
    
    </div>
        <asp:Panel ID="Panel2" runat="server" Height="50px" Width="100%">
            <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow"
                BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None"
                Width="100%">
                <FooterStyle BackColor="Tan" />
                <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <AlternatingItemStyle BackColor="PaleGoldenrod" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <Columns>
                    <asp:BoundColumn DataField="id" HeaderText="链接ID"></asp:BoundColumn>
                    <asp:BoundColumn DataField="title" HeaderText="链接名称"></asp:BoundColumn>
                    <asp:BoundColumn DataField="linkurl" HeaderText="链接地址"></asp:BoundColumn>
                    <asp:TemplateColumn HeaderText ="网站LOGO" ><ItemTemplate><img src ='../<%#Eval("linkimg")%>' /></ItemTemplate></asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="删除"><ItemTemplate><a href ='delink.aspx?id=<%#Eval("id")%>'  onclick="javascript:return confirm('确定删除吗？')">【删除】</a></ItemTemplate></asp:TemplateColumn>
                </Columns>
            </asp:DataGrid></asp:Panel>
    </form>
</body>
</html>
