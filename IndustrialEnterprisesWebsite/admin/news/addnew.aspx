<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addnew.aspx.cs" Inherits="Webwangzhan.admin.news.addnew" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>新闻添加</title>
     <link href="../../Styles/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" BodyPadding="5px" runat="server" EnableBackgroundColor="true"
        ShowBorder="True" Title="新闻添加" Width="1000px" ShowHeader="True">
        <Items>
            <x:TextBox runat="server" Label="新闻标题" Width="500" ID="tbxUseraName">
            </x:TextBox>
    <x:ContentPanel ID="ContentPanel1" runat="server" BodyPadding="5px"
        EnableBackgroundColor="true" ShowBorder="true" ShowHeader="true" Width="1100px" Height="500px" Icon="ApplicationForm" Title="新闻内容">
        <FCKeditorV2:FCKeditor ID="FCKeditor1" BasePath="~/fckeditor/" Height="450" Value="" runat="server">
        </FCKeditorV2:FCKeditor>
    </x:ContentPanel>
            <x:Button ID="btnSubmit" Icon="ApplicationAdd" CssClass="inline" 
                runat="server"  Text="确认，提交" OnClick="btnSubmit_Click">
            </x:Button>
        </Items>
    </x:SimpleForm>

    </form>
    <script type="text/javascript">
        // 更新编辑器内容
        function updateFCKEditor(content) {
            var editor = FCKeditorAPI.GetInstance('<%= FCKeditor1.UniqueID %>');
            editor.SetData(content);
        }
    </script>
</body>
</html>
