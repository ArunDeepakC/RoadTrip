using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ImageVerificationUserControlTryIt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_error.Text = "";
    }

    protected void btn_verify_Click(object sender, EventArgs e)
    {
        if (!Session["generatedString"].Equals(txt_verify.Text))    // Comparing input string and random string
        {
            lbl_error.Text = "You have input the wrong string! Please try again!";
            lbl_error.ForeColor = System.Drawing.Color.Red;

        }
        else
        {
            lbl_error.Text = "String Verified Successfully!";
        }
    }
}