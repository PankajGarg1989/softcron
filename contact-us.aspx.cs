using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Reflection.Emit;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using WebApplication7.App_Start;

namespace WebApplication7
{
    public partial class contact__us : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button_submit_Click(object sender, EventArgs e)
        {
            Captcha1.ValidateCaptcha(txtCaptcha.Text.Trim());
            if (Captcha1.UserValidated)
            {

                // Create an object of the Mail class
                Mail mailObj = new Mail();

                // Call the Submit_Msg method on the object, passing the required parameters
                mailObj.Submit_Msg(TextBox_name.Text, TextBox_email.Text, TextBox_mobile.Text, TextBox_word.Text, option.Text);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", "alert('Query Submit Successfully! \\n We will contact you as soon as possible.'); window.location.href = window.location.href;", true);
               // Response.Redirect(Request.Url.AbsoluteUri);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid Captcha!');", true);
            }


        }


    }

}