<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edigdclass.aspx.cs" Inherits="Webwangzhan.admin.goods.edigdclass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>产品类别修改</title>
</head>
<body>
    <form id="form1" runat="server">
   <x:PageManager ID="PageManager1" runat="server" />
  <x:Window ID="Window1" runat="server" Title="类别修改" IsModal="false" EnableClose="false"
        WindowPosition="GoldenSection" Width="350px" FooterBarAlign="Right">
        <Items>
            <x:SimpleForm ID="SimpleForm1" runat="server" ShowBorder="false" BodyPadding="10px"
                LabelWidth="80px" EnableBackgroundColor="true" ShowHeader="false">
                <Items>
                    <x:TextBox ID="classname" Label="产品类别名" Required="true" runat="server">
                    </x:TextBox>
                </Items>
            </x:SimpleForm>
        </Items>
        <Toolbars>
            <x:Toolbar ID="Toolbar1" runat="server" Position="Footer">
                <Items>
                    <x:Button ID="btnLogin" Text="确认，修改" Icon="ApplicationFormEdit" Type="Submit" 
                        ValidateForms="SimpleForm1" ValidateTarget="Top"
                        runat="server" OnClick="btnLogin_Click">
                    </x:Button>
                </Items>
            </x:Toolbar>
        </Toolbars>
    </x:Window>
    </form>
</body>
</html>
