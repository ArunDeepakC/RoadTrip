<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegistrationServiceTryIt.aspx.cs" Inherits="RegistrationServiceTryIt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="message-info">
        <h1 style="text-align:center; color:white;">
            User Registration TryIt !
        </h1>
    </div> 
   
     <p>
           <b> Description:</b> The WSDL/SOAP service takes user name and password as input, and registers the users by storing user credentials in a XML file named Members.xml for member registration and Staff.xml for staff registration in the server.

     </p>
     <p>
         <h3><u>Register User</u></h3>
         <b>Operation name:</b> registerUser<br />
         <b>Parameters:</b> (string username, string password)<br />
         <b>Returns:</b> boolean value representing whether registration was successful or not.</p>
     <p>
         Enter Member Name</p>
     <p>
           <asp:TextBox ID="txt_register_username" runat="server"></asp:TextBox>

     </p>
     <p>
           Enter Member Password</p>
     <p>
           <asp:TextBox ID="txt_register_userpass" runat="server" TextMode="Password"></asp:TextBox>

     </p>
     <p>
           <asp:Button ID="btn_register_user" runat="server" Text="Register" OnClick="btn_register_user_Click" />

     </p>
     <p>
           <asp:Label ID="Label1" runat="server" Text="" Font-Bold="true"></asp:Label>
     </p>
     <p>
         <h3><u>Has User</u></h3>
           <b>Operation name:</b> hasUser<br />
           <b>Parameters:</b> (string username, string password)<br />
           <b>Returns:</b> boolean value representing whether user credentials are present in Members.xml</p>
     <p>
           Enter Member Name</p>
     <p>
           <asp:TextBox ID="txt_has_username" runat="server"></asp:TextBox>

     </p>
     <p>
           Enter Member Password</p>
     <p>
           <asp:TextBox ID="txt_hasa_pass" runat="server" TextMode="Password"></asp:TextBox>

     </p>
     <p>
           <asp:Button ID="btn_has_user" runat="server" Text="Find" OnClick="btn_has_user_Click" />

     </p>
     <p>
           <asp:Label ID="Label2" runat="server" Text="" Font-Bold="true"></asp:Label>
     </p>
     <p>
         <h3><u>Register Staff</u></h3>
           <b>Operation name:</b>registerStaff<br />
           <b>Parameters:</b> (string username, string password)<br />
           <b>Returns:</b> boolean value representing whether registration was successful or not.</p>
     <p>
           Enter Staff Name</p>
     <p>
           <asp:TextBox ID="txt_register_staffname" runat="server"></asp:TextBox>
     </p>
     <p>
           Enter staff Password</p>
     <p>
           <asp:TextBox ID="txt_register_staffpass" runat="server" TextMode="Password"></asp:TextBox>
     </p>
     <p>
           <asp:Button ID="btn_register_staff" runat="server" Text="Register" OnClick="btn_register_staff_Click" />
     </p>
     <p>
           <asp:Label ID="Label3" runat="server" Text="" Font-Bold="true"></asp:Label>
     </p>
     <p>
         <h3><u>Has Staff</u></h3>
           <b>Operation name:</b> hasStaff<br />
           <b>Parameters:</b> (string username, string password)<br />
           <b>Returns:</b> boolean value representing whether user credentials are present in Staff.xml</p>
     <p>
           Enter Staff Name</p>
     <p>
           <asp:TextBox ID="txt_has_staffuser" runat="server"></asp:TextBox>
     </p>
     <p>
           Enter Password</p>
     <p>
           <asp:TextBox ID="txt_has_staffpass" runat="server" TextMode="Password"></asp:TextBox>
     </p>
     <p>
           <asp:Button ID="btn_has_staff" runat="server" Text="Find" OnClick="btn_has_staff_Click" />
     </p>
     <p>
           <asp:Label ID="Label4" runat="server" Text="" Font-Bold="true"></asp:Label>
     </p>
</asp:Content>

