<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ImageVerification.ascx.cs" Inherits="ImageVerification" %>


<%--<div style="border: 1px solid;clear: both;padding: 10px 20px;color: white;background-color: #eb7a42;">
    <h1 style="text-align:center">Image Verification</h1>
</div>--%>
<br />
<div style="text-align:center">
 <asp:Image ID="Image1" runat="server"/> <br /><br />
 <asp:Button ID="btn_img" runat="server" Text="Get Captcha" Height="41px" Width="146px" OnClick="btn_img_Click"/> <br />
 <%--<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br />--%>
</div>


 <%--<asp:Image ID="Image1" runat="server" Visible="true" ImageAlign="Left" /><br /> 
 <asp:Label ID="Label3" runat="server" Text="Enter the string to complete the registration" BorderStyle="Groove"></asp:Label>--%>
<%--<div>
    <p>
    <span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">The TryIt Page allows you to test the image Verifier.<span>&nbsp;</span></span><br style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;" />
    <span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">The Image Verifier Service provides two operations:<span>&nbsp;</span></span><br style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;" />
    <span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">(1) string GetVerifierString(string myLength) : which returns a random string of the given length (Maximum Length = 10) <span>&nbsp;</span></span><br style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;" />
    <span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">(2) Stream GetImage(string myString) : which returns the URI of the image containing the input string<span>&nbsp;</span></span>
    </p>
    <asp:Image ID="Image1" runat="server" Visible="true" ImageAlign="Left" /><br /><br />
    <asp:Label ID="Label2" runat="server" Text="Enter the length of the string you want to generate:" BorderStyle="Groove"></asp:Label><br /><br />
    <asp:TextBox ID="textInput" runat="server" Height="35px" Width="391px" BorderColor="#999999"></asp:TextBox><br /><br />
    <asp:Button ID="button1" runat="server" Text="Get Image" Height="40px" Width="391px" /><br /><br />
    <asp:Label ID="Label3" runat="server" Text="Enter the string that you see in the image:" BorderStyle="Groove"></asp:Label><br /><br />
    <asp:TextBox ID="textInput1" runat="server" Height="35px" Width="391px" BorderColor="#999999"></asp:TextBox><br /><br />
    <asp:Button ID="button2" runat="server" Text="Submit" Height="40px" Width="391px" />

    <br />
    <br />
    <asp:Label ID="Label1" runat="server" forecolor="Blue" Text="" Visible="false"></asp:Label>
</div>--%>
    
