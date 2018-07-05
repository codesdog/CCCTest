<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="teacher.aspx.cs" Inherits="teacher" Title="盱眙县第二中学 - 教育教学" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <asp:DataList ID="jiaoyu" runat="server"  OnItemCommand="jiaoyu_ItemCommand" BackColor="White">
                            <ItemTemplate>
                           &nbsp <table border="0" style=" font-size :9pt; width: 100%; height: 100%;" cellspacing="0"  cellpadding =0 >
                                  <tr>
                                      <td style="width: 90px; height: 20px;">
                                           『
                                              <%# DataBinder.Eval(Container.DataItem,"type")%>
                                             』
                                       </td>
                                       <td colspan="2" >
                                          <asp:LinkButton ID="lbtnTitle3" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem,"title") %></asp:LinkButton>
                                       </td>
                                   </tr>
                                </table>
                       </ItemTemplate>
          <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
       </asp:DataList>
</asp:Content>

