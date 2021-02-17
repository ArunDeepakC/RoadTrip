<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        //AuthConfig.RegisterOpenAuth();
        //RouteConfig.RegisterRoutes(RouteTable.Routes);
        Application["AccessRequestNumber"] = 0;
        Application["AccessTime"] = DateTime.Now.ToString();
    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown
        
    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs
        Application.Lock();
        Application["AccessRequestNumber"] = (int)Application["AccessRequestNumber"]-1;
        Application.UnLock();
    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
    void Application_BeginRequest(object sender, EventArgs e)
    {
        Application.Lock();
        Application["AccessRequestNumber"] = (int)Application["AccessRequestNumber"]+1;
        Application.UnLock();
    }


</script>
