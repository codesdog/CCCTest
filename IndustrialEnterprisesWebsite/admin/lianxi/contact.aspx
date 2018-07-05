<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Webwangzhan.admin.lianxi.contact" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>联系我们</title>
     <link href="../../Styles/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
   <x:PageManager ID="PageManager1" runat="server" />
    <x:ContentPanel ID="ContentPanel1" runat="server" BodyPadding="5px"
        EnableBackgroundColor="true" ShowBorder="true" ShowHeader="true" Width="1000px" Height="500px" Icon="ApplicationForm" Title="联系我们">
        <FCKeditorV2:FCKeditor ID="FCKeditor1" BasePath="~/fckeditor/" Height="450" Value="" runat="server">
        </FCKeditorV2:FCKeditor>
    </x:ContentPanel>
      <x:Button ID="tijiao" runat="server" CssClass="inline" Icon="ApplicationAdd" 
        Text="确认，提交" onclick="tijiao_Click">
    </x:Button>

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
