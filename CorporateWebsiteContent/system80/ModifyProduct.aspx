<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyProduct.aspx.cs" Inherits="system80_ModifyProduct" %>

<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href ="css.css" rel ="Stylesheet" type ="text/css" />
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
            width: 100%;
        }
        .style2
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
     <asp:Panel ID ="pro_panel" runat ="server" >   <table class="style1">
            <tr>
                <td class="bx">
                    产品名称：</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="340px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="bx">
                    产品分类：</td>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="bx">
                    产品图片：</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" Width="247px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;<img src ='../<%=imgurl %>' style="height: 150px; width: 170px" />
                </td>
            </tr>
            <tr>
                <td class="bx">
                    重新上传：</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="278px" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="重新上传" OnClientClick="return Check_FileType()" />
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="bx">
                    产品简介：</td>
                <td>
                    <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Height="350px">
                    </FCKeditorV2:FCKeditor>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="保存" 
                        Width="40px" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="取消返回" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table></asp:Panel>
    <asp:Panel ID ="news_panel" runat ="server" >
       <table class="style1">
            <tr>
                <td class="bx">
                    新闻标题：</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="340px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="bx">
                    所属分类：</td>
                <td>
                    <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="bx">
                    产品简介：</td>
                <td>
                    <FCKeditorV2:FCKeditor ID="FCKeditor2" runat="server" Height="350px">
                    </FCKeditorV2:FCKeditor>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="保存" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID ="liuyanPanel" runat ="server" >
        <span style ="line-height:25px">留言人：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        留言标题：<asp:Label ID="Label4" runat="server"></asp:Label>
        <br />
        留言时间：<span style="line-height:25px"><asp:Label ID="Label5" runat="server"></asp:Label>
        </span><br />
        留言内容：<span style="line-height:25px"><asp:Label ID="Label6" runat="server"></asp:Label>
        </span><br />
        联系电话：<span style="line-height:25px"><asp:Label ID="Label7" runat="server"></asp:Label>
        </span><br />
        留言地址：<span style="line-height:25px"><asp:Label ID="Label8" runat="server"></asp:Label>
        </span><br />
        您的邮箱：<span style="line-height:25px"><asp:Label ID="Label9" runat="server"></asp:Label>
        </span><br />
        您的MSN\QQ:<span style="line-height:25px"><asp:Label ID="Label10" runat="server"></asp:Label>
        </span><br />
        备注信息：<span style="line-height:25px"><asp:Label ID="Label11" runat="server"></asp:Label>
        </span><br />
        留言来源：<span style="line-height:25px"><asp:Label ID="Label12" runat="server"></asp:Label>
        <br />
        管理员回复：<asp:TextBox ID="TextBox5" runat="server" Height="99px" 
            TextMode="MultiLine" Width="501px"></asp:TextBox>
        <br />
        <br />
        前台是否显示：<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="0">是</asp:ListItem>
            <asp:ListItem Value="1">否</asp:ListItem>
        </asp:DropDownList>
        <br />
        &nbsp;
        <asp:Button ID="Button7" runat="server" onclick="Button7_Click" Text="操作" />
        &nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" Text="返回" />
        &nbsp;
        <asp:Button ID="Button6" runat="server" onclick="Button6_Click" 
            onclientclick="javascript:return confirm('确定删除吗')" Text="删除此条信息" />
        <br />
        </span><br />
        <br />
        </span>
    </asp:Panel>
    </div>
    </form>
</body>
</html>
