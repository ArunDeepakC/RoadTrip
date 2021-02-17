using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Protected_Members : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            lbl_loggedin.Text = Session["username"].ToString();
        }
        catch (Exception)
        {
            Response.Redirect("~/Member/MemberLogin.aspx");
        }

    }

    protected void btn_logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/LogOut.aspx");
    }
}