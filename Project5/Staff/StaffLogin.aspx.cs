using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EncryptDecryptDll;

public partial class Staff_StaffLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (HttpContext.Current.Session["registration1"] == null)
        {
            Response.Redirect("~/");
        }
        try
        {
            if (Session["registration1"].Equals("success"))
            {
                Label3.Text = "Registration Successful! Please login to access the Member Page.";
                Session["registration1"] = "";
            }
        }
        catch(Exception E)
        {
            Response.Redirect("~/");
        }


    }


    protected void btn_login_Click(object sender, EventArgs e)
    {
        try
        {
            UserRegistrationService.Service1Client client = new UserRegistrationService.Service1Client();
            bool response = client.hasStaff(username_input.Text, Class1.Encrypt(passsword_input.Text));  // Check whether user and password are correct by searching in users.xml file
            if (response.Equals(true))
            {
                HttpCookie mycookies = new HttpCookie("MemberCookieId");  // Clearing the cookies if required
                mycookies.Expires = DateTime.Now.AddMonths(-6);
                Response.Cookies.Add(mycookies);

                //HttpCookie mycookies = new HttpCookie("MemberCookieId");
                mycookies = new HttpCookie("StaffCookieId");
                mycookies["Name"] = username_input.Text;            // Store username and password in cookies
                mycookies["Password"] = Class1.Encrypt(passsword_input.Text);
                mycookies.Expires = DateTime.Now.AddMonths(6);
                Response.Cookies.Add(mycookies);
                Session["staffname"] = username_input.Text;   // Storing username is session so that it could be used in welcome page
                Session["role"] = "3";
                Response.Redirect("~/Protected/Staff.aspx");
            }
            else if (response.Equals(false))
            {
                Error.Text = "User does not exist. Please register first.";
            }
            else
            {
                Error.Text = response.ToString();
            }
        }

        catch (Exception e1)
        {
            Error.Text = e1.Message;
        }
    }
}