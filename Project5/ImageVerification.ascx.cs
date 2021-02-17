using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing.Imaging;

public partial class ImageVerification : System.Web.UI.UserControl
{
    public string imgVerifier;
    protected void Page_Load(object sender, EventArgs e)
    {
    }


    protected void btn_img_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Clear();

            ImageVerifier.ServiceClient test1 = new ImageVerifier.ServiceClient();
            if (Session["generatedString"] == null)
            {

                imgVerifier = test1.GetVerifierString(5.ToString());
                Image1.ImageUrl = "http://neptune.fulton.ad.asu.edu/WSRepository/Services/ImageVerifier/Service.svc/GetImage/" + imgVerifier;
                Session["generatedString"] = imgVerifier;        // Storing in the session variable
            }
            else
            {
                imgVerifier = Session["generatedString"].ToString();
            }
        }
        catch (Exception e1)
        {

        }
    }
}