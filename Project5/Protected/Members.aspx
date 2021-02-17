<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Members.aspx.cs" Inherits="Protected_Members" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <h2>Welcome,<asp:Label ID="lbl_loggedin" runat="server" Text="Label"></asp:Label>
&nbsp;! You are on our Members Page!</h2>

    <div class="row">
        <h3 class="message-info">Select any service:</h3>
        <ol class="round">
        <li class="one">
            <h5> <asp:HyperLink ID="HyperLink1" NavigateUrl="http://webstrar5.fulton.asu.edu/page8/FindDistanceAndDuration.aspx" runat="server"><u>Find Distance and Travel Duration Between Two Places.</u></asp:HyperLink></h5>
            Lets you find distance and travel duration between source and destination.</li>
        <li class="two">
            <h5> <asp:HyperLink ID="HyperLink2" NavigateUrl="http://webstrar5.fulton.asu.edu/page8/WeatherConditions.aspx" runat="server"><u>Check Weather Conditions.</u></asp:HyperLink></h5>
            Lets you check the weather conditions. 
        </li>
        <li class="three">
            <h5> <asp:HyperLink ID="HyperLink3" NavigateUrl="http://webstrar5.fulton.asu.edu/page8/NearestStores.aspx" runat="server"><u>Find Tourist Attractions.</u></asp:HyperLink></h5>
            Lets you locate the nearby tourist attractions.
        </li>
        <li class="four">
            <h5> <asp:HyperLink ID="HyperLink4" NavigateUrl="http://webstrar5.fulton.asu.edu/page9/GasStationTryIt.aspx" runat="server"><u>Find Nearby Gas Stations.</u></asp:HyperLink></h5>
            Lets you find the nearby gas stations on your way.&nbsp;&nbsp; 
        </li>
        <li>
          
            <%--<a href="LogOut.aspx" class="btn btn-default btn-flat">Log out</a>--%>
            <asp:Button ID="btn_logout" runat="server" Text="Log Out" OnClick="btn_logout_Click" />
        </li>
    </ol>
    </div>

</asp:Content>