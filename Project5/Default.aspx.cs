using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Session["registration"] = "";
            Session["registration1"] = "";

            AccessRequest.Text = "Access Request Number: " + (int)Application["AccessRequestNumber"];
            LabelStartTime.Text = "Application accessed at: " + Application["AccessTime"];
        }
        catch (Exception E)
        {
            Response.Redirect("~/");
        }
    }

    protected void Memberpage_Click(object sender, EventArgs e)
    {
        try
        {
            HttpCookie myCookies = Request.Cookies["MemberCookieId"];

            if (HttpContext.Current.Session["role"] == null)
            {
                Response.Redirect("~/Member/MemberLogin.aspx");
            }

            if ((myCookies == null) || (Session["role"].ToString() != "2"))  // Check whetehr cookie stores username and password, based on that re-direct
            {
                Response.Redirect("~/Member/MemberLogin.aspx");
            }
            else if ((Session["role"].ToString() == "2"))
            {
                Response.Redirect("~/Protected/Members.aspx");
            }

        }
        catch (Exception e1)
        {
            // Error.Text = e1.Message;
        }
    }

    protected void RegisterMember_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Member/Verify.aspx");
    }

    protected void Staffpage_Click(object sender, EventArgs e)
    {
        try
        {

            HttpCookie myCookies = Request.Cookies["StaffCookieId"];
            if (HttpContext.Current.Session["role"] == null)
            {
                Response.Redirect("~/Staff/StaffLogin.aspx");
            }
            if ((myCookies == null) || (Session["role"].ToString() != "3") /*|| (myCookies["Name"] == "") || (myCookies["Password"] == "")*/)  // Check whetehr cookie stores username and password, based on that re-direct
            {
                Response.Redirect("~/Staff/StaffLogin.aspx");
            }
            else if (Session["role"].ToString() == "3")
            {
                //Session["username"] = myCookies["Name"];
                //Session["role"] = "3";
                Response.Redirect("~/Protected/Staff.aspx");
            }

        }
        catch (Exception e1)
        {
            // Error.Text = e1.Message;
        }
    }

    protected void RegisterStaff_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Staff/Verify.aspx");
    }
}