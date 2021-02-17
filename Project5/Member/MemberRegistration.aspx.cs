using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EncryptDecryptDll;

public partial class Member_MemberRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_register_Click(object sender, EventArgs e)
    {
        //save to xml file --> using our service
        try
        {
            UserRegistrationService.Service1Client client = new UserRegistrationService.Service1Client();
            Boolean response = client.registerUser(UserInput.Text, Class1.Encrypt(PasswordInput.Text));  // Adding the user by manipulating XML file
            if (response.Equals(true))
            {
                //  Error.Text = "User has been registered Successfully!";
                Session["registration"] = "success";
                Response.Redirect("MemberLogin.aspx");
            }
            else if (response.Equals(false))
            {
                Error.Text = "Username already exist! Provide a new username";
            }
            else
            {
                Error.Text = "Username or password is incorrect!!";
                //Error.Text = response;
            }
            //}
        }
        catch (Exception e1)
        {
            Error.Text = e1.Message;
        }
    }
}