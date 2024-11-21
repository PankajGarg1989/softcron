using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication7.App_Start;

namespace WebApplication7
{
    public partial class c2 : System.Web.UI.Page
    {
        public string ecity, dcity, city = "", url = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            url = "/international-sms-services";
            try
            {

                ecity = "in " + System.Globalization.CultureInfo.CurrentUICulture.TextInfo.ToTitleCase(Page.RouteData.Values["estate"].ToString());
                dcity = "-" + System.Globalization.CultureInfo.CurrentUICulture.TextInfo.ToLower(Page.RouteData.Values["estate"].ToString());
            }
            catch
            {
                ecity = "";
                dcity = "";
                city = "blank";
            }
        }
        protected void BtnSend_Click(object sender, EventArgs e)
        {
            string result = txtCaptcha.Text;
            if (result == Session["CaptchaValue"].ToString())
            {
                // Create an object of the Mail class
                Mail mailObj = new Mail();

                // Call the Submit_Msg method on the object, passing the required parameters
                mailObj.Submit_Msg(Text_name.Text, Text_email.Text, Text_mobile.Text, Text_rec.Text, option.Text);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid Captcha!');", true);
            }
            txtCaptcha.Text = "";


        }
    }
}