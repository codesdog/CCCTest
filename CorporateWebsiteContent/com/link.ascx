<%@ Control Language="C#" AutoEventWireup="true" CodeFile="link.ascx.cs" Inherits="com_link" %>       
<table  width="940px" style="margin-left:10px; margin-right:10px">
    <tr>
        <td>
            <strong>友情链接</strong></td>
    </tr>
    <tr>
        <td style="text-align: left">
           <asp:DataList ID ="dl_link" runat ="server"  RepeatColumns="15" 
    style="text-align: center"><ItemTemplate>
    <span style="line-height:25px"><a href ='<%#Eval("linkurl")%>' title='欢迎访问&nbsp;&nbsp;<%#Eval("title")%>' target="_blank"><%#Eval("title")%></a></span>&nbsp;&nbsp;|&nbsp;&nbsp;

</ItemTemplate></asp:DataList>
        </td>
    </tr>
</table>


           
