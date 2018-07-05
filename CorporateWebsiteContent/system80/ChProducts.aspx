<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChProducts.aspx.cs" Inherits="system80_ChProducts" %>

<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>

<%@ Register src="fentop.ascx" tagname="fentop" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href ="images/M1.css" type ="text/css" rel="Stylesheet" />
    <script   language="javascript" type="text/javascript">  
 function Check_FileType()
{
var str=document.getElementById("FileUpload1").value;
 var pos = str.lastIndexOf(".");
 var lastname = str.substring(pos,str.length)  
 if (lastname.toLowerCase()!=".jpg" && lastname.toLowerCase()!=".gif"&&lastname.toLowerCase()!=".png")
 {
     alert("您上传的文件类型为"+lastname+"，图片必须为.jpg,.gif类型,.png类型");
     return false;
 }
 else 
 {
  return true;
 }
} 
 </script>  
    <style type="text/css">
        .style1
        {
            width: 827px;
            line-height:25px;
        }
        .style2
        {
            width: 124px;
            
        }
    </style>
</head>
<body style ="text-align :center ">
    <form id="form1" runat="server">
    <div >
    
        <table class="style1" style ="line-height:25px; height: 226px;">
            <tr>
                <td class="bx" colspan="2">
                    <uc1:fentop ID="fentop1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="bx">
                    产品名称：</td>
                <td style ="text-align :left ">
                    <asp:TextBox ID="TextBox1" runat="server" Width="428px"></asp:TextBox>
&nbsp; *</td>
            </tr>
            <tr>
                <td class="bx">
                    产品图片：</td>
                <td style ="text-align :left ">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="188px" />
&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="上传图片" 
                        OnClientClick="return Check_FileType()" onclick="Button3_Click" />
&nbsp;&nbsp; **********只能上传格式为为.jpg,.gif类型,.png类型的产品图片***********</td>
            </tr>
            <tr>
                <td class="bx">
                    图片路径：</td>
                <td style ="text-align :left ">
                    <asp:TextBox ID="TextBox2" runat="server" Width="428px"></asp:TextBox>
&nbsp; * 请上传图片,不能为空 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="产品图片不能为空" 
                        ValidationGroup="g"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="bx">
                    产品链接网址：</td>
                <td style ="text-align :left ">
                    <asp:TextBox ID="TextBox4" runat="server" Width="406px"></asp:TextBox>
&nbsp;格式：http://www.</td>
            </tr>
            <tr>
                <td class="bx">
                    产品类别：</td>
                <td style ="text-align :left ">
                    <asp:DropDownList ID="ddlCity" runat="server" >
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="bx">
                    产品简介：</td>
                <td style ="text-align :left ">
                    <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Height="350px">
                    </FCKeditorV2:FCKeditor>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    产品发布人：</td>
                <td style ="text-align :left ">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td style ="text-align :left ">
                    <asp:Button ID="Button1" runat="server" Text="提交" onclick="Button1_Click" 
                        ValidationGroup="g" />
                    <asp:Button ID="Button2" runat="server" Text="取消" onclick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
