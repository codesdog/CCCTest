<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="admincsh, wrxuanke" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br><center>
<p><font color="#FF0000">警告：</font>此功能一旦执行，将清除所有的学生名单和选课信息。<br><br>只做为管理员每学年初初始化数据用！一旦系统开始使用，请勿再初始化！</p>
       <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        onclientclick="javascript:return confirm(&#39;你确认要删除?\r\n\r\n此操作一旦执行，将清除所有的学生名单和选课信息。\r\n\r\n该操作将不可恢复!?&#39;);"
        Text="系统初始化" />

        <br />

</asp:Content>

