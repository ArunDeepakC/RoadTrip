<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DllEncryptTryIt.aspx.cs" Inherits="DllEncryptTryIt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
      <div class="message-info">
          <h2 style="text-align:center;color:white;">Encryption and Decryption Library TryIt page !</h2></div>
<br><br>
    <div>
<asp:Label ID="Label1" runat="server">Enter the text to be Encrypted :  </asp:Label>
          <br />
<asp:Textbox ID="txt_encrypt" runat="server" Width="300px"></asp:Textbox>
<br />
<asp:Button ID="btn_encrypt" runat="server" Text="Encrypt" OnClick="btn_encrypt_Click" ></asp:Button>
<br><br>
<asp:Label ID="LabelEncrypted" runat="server">Encrypted Text is :  </asp:Label>
<asp:Label ID="lbl_encrypt" runat="server"></asp:Label>
<br><br>
<asp:Label ID="Label2" runat="server">Enter the text to be Decrypted :  </asp:Label>
          <br />
<asp:Textbox ID="txt_decrypt" runat="server" Width="300px"></asp:Textbox>
<br />
<asp:Button ID="btn_decrypt" runat="server" Text="Decrypt" OnClick="btn_decrypt_Click" ></asp:Button>
<br><br>
<asp:Label ID="LabelDecrypted" runat="server">Decrypted Text is :  </asp:Label>
<asp:Label ID="lbl_decrypt" runat="server"></asp:Label>


        </div>
</asp:Content>

