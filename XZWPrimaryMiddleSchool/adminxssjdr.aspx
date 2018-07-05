<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="adminxssjdr, wrxuanke" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br /><table width=89% border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6"
        align="center"  >
          <tr bgcolor="#FFFFFF"> 
            <td class=a1 height="27" colspan="2"><br /><br />《学生信息样表.xls》<a href="学生信息格式样表.xls" target="_blank">样表格式查看</a>   
                <br /> <br /> <input name="filenum" type=hidden value="" size="4"> 
              （<font color="#FF0000">注</font>：学生信息所在<font color="#FF0000">工作表名必须改</font>为默认值：<font color="#FF0000">Sheet1</font>，且<font color="#FF0000">格式必须和样表一样</font>）  
               <br />
              
               
                <br />
            </td>
          </tr>
           <tr bgcolor="#FFFFFF"> 
            <td  height="27" colspan="2" align="center">
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server"  OnClientClick="return check()"  
                    onclick="Button1_Click" Text="导入" />
                <br />
            </td>
          </tr>
          </table>
</asp:Content>

