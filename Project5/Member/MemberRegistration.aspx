<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MemberRegistration.aspx.cs" Inherits="Member_MemberRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="message-info"><h1 style="color:white;" align="center">Member Registration!!</h1></div><br />
    <div>
        <asp:Label ID="Label1" runat="server" Text="Enter UserName:" Width="150px" ></asp:Label>&nbsp;
        <asp:TextBox ID="UserInput" runat="server" Height="25px" width="100%" BorderColor="#999999" ></asp:TextBox>
        <asp:RequiredFieldValidator ForeColor="red"  runat="server" id="RequiredFieldValidator1" controltovalidate="UserInput" errormessage="Please enter the Username!" />
        <br /><br />
	    <asp:Label ID="Label2" runat="server" Text="Enter Password:" Width="150px" ></asp:Label>&nbsp;
        <asp:TextBox ID="PasswordInput" runat="server" TextMode="Password" Height="25px" width="100%" BorderColor="#999999" ></asp:TextBox>
        <asp:RequiredFieldValidator ForeColor="red"  runat="server" id="RequiredFieldValidator2" controltovalidate="PasswordInput" errormessage="Please enter the Password!" />
        <br />
        <div style="text-align:center">
            <asp:Button ID="btn_register" runat="server" Text="Register" OnClick="btn_register_Click" Width="200px"/>
        </div>
        <br />
        <br />
        <asp:Label ID="Error" runat="server" Forecolor="red" Text=""  ><b></b></asp:Label>
    </div>
    
</asp:Content>

