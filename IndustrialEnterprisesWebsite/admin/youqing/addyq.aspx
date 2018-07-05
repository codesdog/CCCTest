<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addyq.aspx.cs" Inherits="Webwangzhan.admin.youqing.addyq" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>添加友情链接</title>
    
<script type="text/javascript" language="javascript">
function checkeURL(URL){
var str=URL;
//在JavaScript中，正则表达式只能使用"/"开头和结束，不能使用双引号
//判断URL地址的正则表达式为:http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?
//下面的代码中应用了转义字符"\"输出一个字符"/"
var Expression=/http(s)?:\/\/([\w-]+\.)+[\w-]+(\/[\w- .\/?%&=]*)?/; 
var objExp=new RegExp(Expression);
if(objExp.test(str)==true){
return true;
}else{
return false;
}
}
function checkuserinfo(){
var yqurl = userinfo.yqurl.value;
if (yqurl == "") {
alert("请输入个人主页地址！");
document.userinfo.yqurl.focus();     
}else{
    if (!checkeURL(yqurl)) {
   alert("您输入的个人主页地址不合法！");
   document.userinfo.yqurl.focus();
   return;
}else{
   alert(" 合法！");
} 
}
} 
</script>


</head>

<body>
    <form id="form1" runat="server">
     <x:PageManager ID="PageManager1" runat="server" />
  <x:Window ID="Window1" runat="server" Title="添加友情链接" IsModal="false" EnableClose="false"
        WindowPosition="GoldenSection" Width="350px" FooterBarAlign="Right">
        <Items>
            <x:SimpleForm ID="SimpleForm1" runat="server" ShowBorder="false" BodyPadding="10px"
                LabelWidth="80px" EnableBackgroundColor="true" ShowHeader="false">
                 <Items>
                    <x:TextBox ID="yqname"  Label="友情名" Required="true"  runat="server">
                    </x:TextBox>
                </Items>
                <Items>
                    <x:TextBox ID="yqurl"  Label="友情url" Required="true"  runat="server">
                    </x:TextBox>
                </Items>
            </x:SimpleForm>
        </Items>
        <Toolbars>
            <x:Toolbar ID="Toolbar1" runat="server" Position="Footer">
                <Items>
                       <x:Button ID="btnLogin" Text="确认，添加" Icon="ApplicationFormAdd" Type="Submit" 
                           ValidateForms="SimpleForm1" ValidateTarget="Top" OnClientClick=""
                        runat="server" OnClick="btnLogin_Click">
                    </x:Button>
                </Items>
            </x:Toolbar>
        </Toolbars>
    </x:Window>
    </form>
</body>
</html>
