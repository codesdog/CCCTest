<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addgood.aspx.cs" Inherits="Webwangzhan.admin.goods.addgood" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>产品添加</title>
 <link href="../CSSStype/main1.css" rel="stylesheet" type="text/css" />
<link href="../CSSStype/main.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	background-color: #;
}
-->

</style>
    <script type="text/javascript" language="javascript">
        var flag = false;
        function DrawImage(ImgD) {
            var image = new Image();
            var iwidth = 130; //这里可以修改上传图片的宽和高
            var iheight = 118;
            image.src = ImgD.src;
            if (image.width > 0 && image.height > 0) {
                flag = true;
                if (image.width / image.height >= iwidth / iheight) {
                    if (image.width > iwidth) {
                        ImgD.width = iwidth;
                        ImgD.height = (image.height * iwidth) / image.width;
                    }
                    else {
                        ImgD.width = image.width;
                        ImgD.height = image.height;
                    }

                    ImgD.alt = image.width + "×" + image.height;
                }
                else {
                    if (image.height > iheight) {
                        ImgD.height = iheight;
                        ImgD.width = (image.width * iheight) / image.height;
                    }
                    else {
                        ImgD.width = image.width;
                        ImgD.height = image.height;
                    }
                    ImgD.alt = image.width + "×" + image.height;
                }
            }
        }


        var tijiao = "<%=tijiao.ClientID %>";
        var prm = Sys.WebForms.PageRequestManager.getInstance();
        prm.add_initializeRequest(onInitializeRequest);


        function onInitializeRequest(sender, args) {
            if (prm.get_isInAsyncPostBack() && args.get_postBackElement().id == tijiao) {
                args.set_cancel(true);
                //给用户提示正在处理中
            }
            $get(tijiao).disabled = true;
        } 
  </script> 
</head>
<body>
    <form id="form1" runat="server">
     <table width="1000" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="this_title">产品添加</td>
    <td class="control_btns">&nbsp;</td>
  </tr>
</table>
<table width="1000" border="0" cellspacing="0" cellpadding="0" class="free_table">
  <tr>
    <td >产品类别：
        <asp:DropDownList ID="classname"  runat="server">
        </asp:DropDownList>
    </td>
  </tr>
  <tr>
  <td >产品名称：<asp:TextBox ID="gmingcheng" Width="300" runat="server" class="input_style_001"></asp:TextBox>
	</td>
  </tr>
  	 <tr>
	 <td class="border-bottom" >产品图片:
    <asp:FileUpload ID="FileUploadimg" Width="300" runat="server" />
                            <asp:HiddenField ID="HiddenFieldtu" runat="server" />
                            <asp:Button ID="addbt" runat="server" class="button" 
             Text="上传" onclick="addbt_Click1" />
                         </td>
					    </tr>
					    <tr>
					    <td class="border-bottom">产品图片预览:
                             <img id="img1" src="../../images/src.jpg" height="80" runat="server" />
                         </td>
					    </tr>
  <tr>
  <td class="border-bottom" >产品简介：
   <FCKeditorV2:FCKeditor ID="FCKeditor1" BasePath="~/fckeditor/" Width="1000" Height="450" Value="" runat="server">
    </FCKeditorV2:FCKeditor>
	</td>
  </tr> 
    <tr>
  <td class="border-bottom" >   
      <asp:Button ID="tijiao" runat="server" Text="确认，提交" class="common_btn" 
          onclick="tijiao_Click"/>
      </td>
  </tr>
 </table>
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
