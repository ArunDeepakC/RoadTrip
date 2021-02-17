using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EncryptDecryptDll;

public partial class RegistrationServiceTryIt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_register_user_Click(object sender, EventArgs e)
    {
        UserRegistrationService.Service1Client proxy = new UserRegistrationService.Service1Client();

        //Ensure entry not null
        if (!String.IsNullOrWhiteSpace(txt_register_username.Text) && !String.IsNullOrWhiteSpace(txt_register_userpass.Text))
        {
            //Call the operation to register
            Boolean created = proxy.registerUser(txt_register_username.Text, Class1.Encrypt(txt_register_userpass.Text));

            //Set label to the apt response
            if (created)
            {
                Label1.Text = "User successfully Registered in Member.xml!";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Label1.Text = "User already registered in Member.xml!";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
        else
        {
            Label1.Text = "Enter Valid Username and password!";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
    }

    protected void btn_has_user_Click(object sender, EventArgs e)
    {
        UserRegistrationService.Service1Client proxy = new UserRegistrationService.Service1Client();

        //Ensure entry not null
        if (!String.IsNullOrWhiteSpace(txt_has_username.Text) && !String.IsNullOrWhiteSpace(txt_hasa_pass.Text))
        {
            //Call the operation to register
            Boolean created = proxy.hasUser(txt_has_username.Text, Class1.Encrypt(txt_hasa_pass.Text));

            //Set label to the apt response
            if (created)
            {
                Label2.Text = "User found in Member.xml!";
                Label2.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Label2.Text = "User not found in Member.xml please register first!";
                Label2.ForeColor = System.Drawing.Color.Red;
            }
        }
        else
        {
            Label2.Text = "Enter Valid Username and password!";
            Label2.ForeColor = System.Drawing.Color.Red;
        }
    }

    protected void btn_register_staff_Click(object sender, EventArgs e)
    {
        UserRegistrationService.Service1Client proxy = new UserRegistrationService.Service1Client();

        //Ensure entry not null
        if (!String.IsNullOrWhiteSpace(txt_register_staffname.Text) && !String.IsNullOrWhiteSpace(txt_register_staffpass.Text))
        {
            //Call the operation to register
            Boolean created = proxy.registerStaff(txt_register_staffname.Text, Class1.Encrypt(txt_register_staffpass.Text));

            //Set label to the apt response
            if (created)
            {
                Label3.Text = "User successfully Registered in Staff.xml!";
                Label3.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Label3.Text = "User already registered in Staff.xml!";
                Label3.ForeColor = System.Drawing.Color.Red;

            }
        }
        else
        {
            Label3.Text = "Enter Valid Username and password!";
            Label3.ForeColor = System.Drawing.Color.Red;
        }

    }

    protected void btn_has_staff_Click(object sender, EventArgs e)
    {
        UserRegistrationService.Service1Client proxy = new UserRegistrationService.Service1Client();

        //Ensure entry not null
        if (!String.IsNullOrWhiteSpace(txt_has_staffuser.Text) && !String.IsNullOrWhiteSpace(txt_has_staffpass.Text))
        {
            //Call the operation to register
            Boolean created = proxy.hasStaff(txt_has_staffuser.Text, Class1.Encrypt(txt_has_staffpass.Text));

            //Set label to the apt response
            if (created)
            {
                Label4.Text = "User found in Staff.xml!";
                Label4.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Label4.Text = "User not found in Staff.xml please register first!";
                Label4.ForeColor = System.Drawing.Color.Red;
            }
        }
        else
        {
            Label4.Text = "Enter Valid Username and password!";
            Label4.ForeColor = System.Drawing.Color.Red;
        }

    }
}