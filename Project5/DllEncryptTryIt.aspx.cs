using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EncryptDecryptDll;

public partial class DllEncryptTryIt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   

    protected void btn_encrypt_Click(object sender, EventArgs e)
    {
        try
        {
            string text_to_encrypt = txt_encrypt.Text;
            string result = "";
            if (text_to_encrypt != string.Empty)
            {
                result = Class1.Encrypt(text_to_encrypt);
            }
            else
            {
                result = "Please enter valid input string";
            }
            lbl_encrypt.Text = result;
        }
        catch (Exception ex)
        {
            lbl_encrypt.Text = ex.Message;
        }

    }

    protected void btn_decrypt_Click(object sender, EventArgs e)
    {
        try
        {
            string text_to_encrypt = txt_decrypt.Text;
            string result = "";
            if (text_to_encrypt != string.Empty)
            {
                result = Class1.Decrypt(text_to_encrypt);
            }
            else
            {
                result = "Please enter valid input string";
            }
            lbl_decrypt.Text = result;
        }
        catch (Exception ex)
        {
            lbl_decrypt.Text = ex.Message;
        }

    }
}
