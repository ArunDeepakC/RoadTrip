<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MemberLogin.aspx.cs" Inherits="Member_MemberLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
     
        <div class="message-info"><h1 style="color:white;" align="center">Member Login!!</h1></div><br />
        <div>
            <asp:Label ID="Label3" runat="server" Forecolor="green" Text=""  ><b></b></asp:Label><br />
            <asp:Label ID="Label1" runat="server" Text="Username:" Width="150px"></asp:Label>&nbsp;
            <asp:TextBox ID="username_input" runat="server" Height="25px" width="100%" BorderColor="#999999" ></asp:TextBox><br /><br />
		    <asp:Label ID="Label2" runat="server" Text="Password:" Width="150px"></asp:Label>&nbsp;
            <asp:TextBox ID="passsword_input"  TextMode="Password" runat="server" Height="25px" width="100%" BorderColor="#999999" >
            </asp:TextBox><br /><br />
            <div style="text-align:center">
              <asp:Button ID="btn_login" runat="server" Text="Login" OnClick="btn_login_Click" Width="200px" /><br /><br />
            </div>
            <asp:Label ID="Error" runat="server" Forecolor="red" Text=""  ><b></b></asp:Label>&nbsp;<br /><br />
            <a href="Verify.aspx" class="btn btn-default btn-flat" style="color:blue">Register to create a new account</a>
        </div>
</asp:Content>

