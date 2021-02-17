using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ClearCookiesTryIt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (HttpContext.Current.Session["username"] == null && HttpContext.Current.Session["staffname"] == null)
        {
            Label10.Text = "";

        }  
        else
        {
            if(Session["role"].ToString() == "2")
            {
                Label10.Text = Session["username"].ToString();   // Use the username stored in session to print welcome message
            }
            else
            {
                Label10.Text = Session["staffname"].ToString();
            }
        }
        
    }

    protected void Clear_cookie(object sender, EventArgs e)
    {

        if (Label10.Text == "")
        {
            lbl_error.Text = "You are not logged in. You'll be soon directed to the main page. Please Log in first!";
            Response.AppendHeader("Refresh", "3;url=Default.aspx");
        }
        else
        {
            try
            {
                
                if (Session["role"].ToString() == "2")
                {

                    HttpCookie currentUserCookie = HttpContext.Current.Request.Cookies["MemberCookieId"];
                    HttpContext.Current.Response.Cookies.Remove("MemberCookieId");
                    currentUserCookie.Expires = DateTime.Now.AddDays(-10);
                    currentUserCookie.Value = null;
                    HttpContext.Current.Response.SetCookie(currentUserCookie);
                }
                else
                {

                    HttpCookie currentUserCookie = HttpContext.Current.Request.Cookies["StaffCookieId"];
                    HttpContext.Current.Response.Cookies.Remove("StaffCookieId");
                    currentUserCookie.Expires = DateTime.Now.AddDays(-10);
                    currentUserCookie.Value = null;
                    HttpContext.Current.Response.SetCookie(currentUserCookie);
                }

                //HttpCookie mycookies = new HttpCookie("myCookieId");  // Clearing the cookies if required 
                //mycookies["Name"] = "";
                //mycookies["Password"] = "";
                //Response.Cookies.Add(mycookies);
                Session.Abandon();
                Session.Clear();
                Session.RemoveAll();
                Label5.Text = "Cookies have been cleared. Click on the member page once directed to test if you are directed to the login page.";
                Button5.Enabled = false;
                Response.AppendHeader("Refresh", "3;url=Default.aspx");
            }

            catch (Exception e1)
            {
                Label5.Text = e1.Message;
            }
        }
    }
}