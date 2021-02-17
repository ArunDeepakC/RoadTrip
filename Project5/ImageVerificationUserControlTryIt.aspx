<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ImageVerificationUserControlTryIt.aspx.cs" Inherits="ImageVerificationUserControlTryIt" %>
<%@ Register TagPrefix="myControl" TagName="ImageVerifier" src="~/ImageVerification.ascx"%>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="message-info">
        <h1 style="color:white;" align="center">Member Verification!!</h1><hr />
        <h3 style="color:white;" align="center">IMAGE CAPTCHA</h3>
    </div>
    <div style="text-align:center">

        <myControl:ImageVerifier ID="Test" runat="Server">
        </myControl:ImageVerifier>
        <h5>Please verify you are not a robot!</h5><br />
        <%--<asp:Image ID="Image1" runat="server"/> <br />
        <asp:Button ID="btn_img" runat="server" Text="Get Captcha" Height="41px" Width="146px" OnClick="btn_img_Click"/> <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br />
        <br />--%>
        <asp:Label ID="lbl_verify" runat="server">Enter the characters in the image:</asp:Label> <br /><br />
        <asp:TextBox ID="txt_verify" runat="server" Height="41px" Width="251px"></asp:TextBox><br /><br />
        <asp:Button ID="btn_verify" runat="server" Text="Verify" Height="41px" Width="146px" OnClick="btn_verify_Click"/><br /><br />
        <asp:Label ID="lbl_error" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>

