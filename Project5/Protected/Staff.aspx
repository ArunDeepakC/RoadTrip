<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Staff.aspx.cs" Inherits="Protected_Staff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
        <h2>Welcome Staff, <asp:Label ID="lbl_loggedin" runat="server" Text="Label"></asp:Label></h2>
        <div class="message-info"><h3 style="color:white">Click here to add staff members</h3></div><br />
        <div>
            <asp:Button ID="btn_register" runat="server" Text="Register a User" OnClick="btn_register_Click" Width="222px"/><br /><br />
            <asp:Button ID="btn_logout" runat="server" Text="Log Out" OnClick="btn_logout_Click" Width="222px" />
            <br />
        </div>
    </div>
</asp:Content>

