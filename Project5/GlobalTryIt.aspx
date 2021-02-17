<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GlobalTryIt.aspx.cs" Inherits="GlobalTryIt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="message-info"><h1 style="text-align:center;color:white;">Global.asax Event Handler Try It</h1></div>
<br><br>
    Get the access request count<br />
<asp:Button ID="Btn1" runat="server" Text="Get Count" OnClick="Btn1_Click"></asp:Button>
<br />
<asp:Label ID="lbl_count" runat="server"></asp:Label>
<br><br>
<asp:Label ID="Label3" runat="server">Application accessed at : </asp:Label>
<asp:Label ID="lbl_time" runat="server"></asp:Label>
</asp:Content>

