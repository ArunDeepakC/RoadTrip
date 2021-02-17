<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Weekend Getaway!</h1>
                <h3><font color="white">Plan a Short Road Trip</font></h3>
                <h5><a runat="server" href="http://webstrar5.fulton.asu.edu/index.html"><font color="black">Click here to open the Service Directory</font></a></h5>
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h3>Road Trip Planner lets you:</h3>
    <ol class="round">
        <li class="one">
            <h5>Find Distance and Travel Duration Between Two Places.</h5>
            Lets you find distance and travel duration between source and destination. </li>
        <li class="two">
            <h5>Check Weather Conditions.</h5>
            Lets you check the weather conditions. 
        </li>
        <li class="three">
            <h5>Find Tourist Attractions.</h5>
            Lets you locate the nearby tourist attractions.
        </li>
        <li class="four">
            <h5>Find Nearby Gas Stations.</h5>
            Lets you find the nearby gas stations on your way. 
        </li>
        <%--<h4><a runat="server" href="~/Account/Login.aspx">Go to Member Page</a></h4>
        <h4><a runat="server" href="~/Account/Verify.aspx">Sign Up/Register!</a></h4>
        <h3> For Staff Members Only: </h3>
        <h4><a runat="server" href="~/Protected/Staff.aspx">Staff Page</a></h4>
        <h4><a runat="server" href="~/Account/Login.aspx">Staff Login</a></h4> --%> 
    </ol>
    <asp:Button ID="Memberpage" runat="server" Text="Member Page" Height="41px" Width="227px" OnClick="Memberpage_Click"/>&nbsp;&nbsp;
    <asp:Button ID="RegisterMember" runat="server" Text="Member Registration" Height="41px" Width="227px" OnClick="RegisterMember_Click"/><br><br>
    <asp:Button ID="Staffpage" runat="server" Text="Staff Page" Height="41px" Width="227px" OnClick="Staffpage_Click"/>&nbsp;&nbsp;
    <asp:Button ID="RegisterStaff" runat="server" Text="Staff Registration" Height="41px" Width="227px" OnClick="RegisterStaff_Click"/>
    <br />
    <div><a href="TestCases.aspx"><h3 style="color:blue;">Click on this link to view the test cases/inputs.</h3></a></div><br />
    <div>
        <asp:Label ID="AccessRequest" runat="server" style="margin-left: 660px"/>
        <br />
        <asp:Label ID="LabelStartTime" runat="server" style="margin-left: 660px"/>
    </div>
</asp:Content>

