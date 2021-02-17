<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ClearCookiesAndSessionsTryIt.aspx.cs" Inherits="ClearCookiesTryIt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="message-info">
        <h1 style="color:white;" align="center">Clear Cookies and Sessions Try It Page !</h1><br />
    </div><br />
    <div>
        <b>PLEASE LOG IN IF YOU ARE NOT LOGGED IN TO TEST THIS PAGE!</b>
    </div><br />
    <div>
        Welcome <asp:Label font-size="20px" ID="Label10" runat="server" Forecolor="#eb7a42" Text=""  ><b></b></asp:Label> ,  

        <p>Click on the button below to clear cookies and sessions. <br />
        It should clear the credentials and redirect you to the main page.</p>
        
        <asp:Button ID="Button5" runat="server" Text="Clear Clear And Sessions" onclick="Clear_cookie" /><br />
        <asp:Label ID="Label5" runat="server" Forecolor="green" Text=""><b></b></asp:Label><br />
        <asp:Label ID="lbl_error" runat="server" Forecolor="red" Text=""><b></b></asp:Label><br /><br />
    </div>
</asp:Content>

