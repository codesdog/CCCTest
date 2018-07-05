<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddNews.aspx.cs" Inherits="system80_AddNews" %>

<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>

<%@ Register src="fentop.ascx" tagname="fentop" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href ="images/M1.css" type ="text/css" rel="Stylesheet" />
    <style type="text/css">
        .style1
        {
            width: 800px;
        }
        </style>
</head>
<body >
    <form id="form1" runat="server">
    <asp:Panel ID ="plAddNews" runat ="server" >
    <table class="style1" style="border: 1px solid #000080"  align="center">
        <tr>
            <td colspan="2" class="bx">
                <asp:Label ID="Label1" runat="server" CssClass="bx" Text="添加新闻"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="bx" width="200px">
                新闻标题：</td>
            <td width="700px">
                <asp:TextBox ID="TextBox1" runat="server" Width="681px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="bx" width="200px">
                请选择中英文：</td>
            <td width="700px">
                <asp:DropDownList ID="dlFlag" runat="server">
                    <asp:ListItem>中文</asp:ListItem>
                    <asp:ListItem>英文</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="bx" width="200px">
                选择新闻分类：</td>
            <td width="700px">
                <asp:DropDownList ID="dlNewsClass" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td   class="bx" width="200px" valign="top">
                新闻内容：</td>
            <td width="700px">
                <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Height="400px">
                </FCKeditorV2:FCKeditor>
            </td>
        </tr>
        <tr>
            <td class="bx" width="200px">
                当前新闻时间：</td>
            <td width="700px">
                <asp:TextBox ID="TextBox2" runat="server" Width="174px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td  class="bx" width="200px">
                发布人：</td>
            <td width="700px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="bx" width="200px">
                &nbsp;</td>
            <td class="bx" width="200px">
                <asp:Button ID="Button1" runat="server" Text="添加" />
&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="修改" />
&nbsp;
                <asp:Button ID="Button3" runat="server" Text="取消" />
            </td>
        </tr>
    </table>
    </asp:Panel>
    &nbsp;<asp:Panel ID ="plNewsClass" runat ="server" >
        <uc1:fentop ID="fentop1" runat="server" />
&nbsp;<table width="900px" align="center">
            <tr>
                <td style="width:900px" class="bx">
                    新闻分类管理--添加新闻分类<br />
                    &nbsp;选择中英文：<asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="ch">中文</asp:ListItem>
                        <asp:ListItem Value="en">英文</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="TextBox4" runat="server" 
                        Width="280px"></asp:TextBox>
                    <asp:Button ID="Button4" runat="server" Text="添加新闻分类" onclick="Button4_Click1" 
                        ValidationGroup="g" />
                    【输入新闻分类名称】<asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                        runat="server" ControlToValidate="TextBox4" EnableViewState="False" 
                        ErrorMessage="分类名称不能为空" ValidationGroup="g" Display="Dynamic"></asp:RequiredFieldValidator>
                    <br />
                    新闻分类管理--注意：ch为中文版本，en为英文版本</td>
            </tr>
            <tr>
                <td 
                <td style="width:900px">
                    <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" ForeColor="#333333" GridLines="None" Width="900px" 
                        oncancelcommand="DataGrid1_CancelCommand" 
                        ondeletecommand="DataGrid1_DeleteCommand" oneditcommand="DataGrid1_EditCommand" 
                        onupdatecommand="DataGrid1_UpdateCommand">
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <EditItemStyle BackColor="#999999" />
                        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                        <Columns>
                            <asp:BoundColumn DataField="NewsClassId" HeaderText="新闻分类编号" ReadOnly="True">
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="NewsClassName" HeaderText="新闻分类名称">
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="flag" HeaderText="所属版本" ReadOnly="True">
                            </asp:BoundColumn>
                            <asp:EditCommandColumn CancelText="取消" EditText="【编辑】" HeaderText="【编辑】" 
                                UpdateText="更新"></asp:EditCommandColumn>
                          <%--  <asp:ButtonColumn CommandName="Delete" HeaderText="【删除】" Text="【删除】">
                            </asp:ButtonColumn>--%>
                        </Columns>
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" 
                            HorizontalAlign="Center" />
                    </asp:DataGrid>
                </td>
            </tr>
        </table>
    
    </asp:Panel>
    
    </form>
</body>
</html>
