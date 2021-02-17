using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GlobalTryIt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_time.Text = "" + Application["AccessTime"];
    }

    protected void Btn1_Click(object sender, EventArgs e)
    {
        lbl_count.Text = "" + (int)Application["AccessRequestNumber"];
    }
}