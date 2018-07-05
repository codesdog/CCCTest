<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="fenye.aspx.cs" Inherits="fenye" Title="盱眙县第二中学" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <div style="width:100%; text-align:center;">
       <asp:Label ID="title" font-size ="20" runat="server"></asp:Label>
      <br/>
      <br/>
       <asp:Label ID="content" runat="server"></asp:Label>
         </div>
</asp:Content>
