<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TestCases.aspx.cs" Inherits="TestCases" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2 class="message-info">Test Cases/Inputs for Each Component</h2>
    <asp:Table ID="Table1" runat="server" CellPadding="3" CellSpacing="0" GridLines="both">
            <asp:TableHeaderRow runat="server">
                <asp:TableHeaderCell runat="server">Component</asp:TableHeaderCell>
                <asp:TableHeaderCell runat="server">Test Case/Input</asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Member Login</asp:TableCell>
                <asp:TableCell runat="server">Username: rishti<br />Password: rishti</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Member Registration</asp:TableCell>
                <asp:TableCell runat="server">Username: abc<br />Password: abc</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Staff Login</asp:TableCell>
                <asp:TableCell runat="server">Username: TA<br />Password: Cse445ta!</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Staff Registration</asp:TableCell>
                <asp:TableCell runat="server">Username: xyz<br />Password: xyz</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Find Distance and Travel <br />Duration Between Two Places.</asp:TableCell>
                <asp:TableCell runat="server"><u>Origin:</u><br />Select Zipcode and Enter<br />Zipcode: 07029<br /><u>Destination:</u><br />Select Address and Enter<br />Street Address: Statue of Liberty<br />City: New York</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Check Weather Conditions<br /> for 5 days</asp:TableCell>
                <asp:TableCell runat="server">Enter a U.S Zip Code: 10004</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Find Tourist Attractions<br /> for 5 days</asp:TableCell>
                <asp:TableCell runat="server">Zip Code: 10036<br />Store Name: Times Square</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Find Nearby Gas Stations</asp:TableCell>
                <asp:TableCell runat="server">Enter Address: Harrison, New Jersey</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">RegistrationServiceTryIt Page<br />& XML Manipulation</asp:TableCell>
                <asp:TableCell runat="server"><u>registerUser:</u><br />Username: arun<br />Password: arun<br />
                    <u>hasUser:</u><br />Username: rishti<br />Password: rishti<br />
                    <u>registerStaff:</u><br />Username: admin<br />Password: admin<br />
                    <u>hasStaff:</u><br />Username: TA<br />Password: Cse445ta!
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">DllEncryptTryIt </asp:TableCell>
                <asp:TableCell runat="server">Enter String to be encrypted: TA<br />Enter String to be decrypted: ZVUMj52n4Jk=</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">GlobalTryIt </asp:TableCell>
                <asp:TableCell runat="server">Click on the "Get Count" button to get the number of access requests</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">ClearCookiesAndSessionsTryIt </asp:TableCell>
                <asp:TableCell runat="server">Login first with the following credentials by going to the default page -> Member page (click on "Home" in the navigation bar -> click on "Member Page" button) and then click on "Clear Cookies And Sessions" button to clear the credentials.<br /><u>Username:</u> rishti<br /><u>Password:</u> rishti</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">ImageVerificationUserControlTryIt </asp:TableCell>
                <asp:TableCell runat="server">Click on "Get Captcha" button to get the string image. Enter the string in the text box to verify the string.</asp:TableCell>
            </asp:TableRow>
        </asp:Table>

</asp:Content>

