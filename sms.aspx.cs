using System;
using System.Globalization;
using System.IO;
using System.Net;
using System.Web.UI;
using WebApplication7.App_Start;

namespace WebApplication7
{
    public partial class sms : System.Web.UI.Page
    {
        public string ecity, dcity, city = "", url = "", culty;
        protected void Page_Load(object sender, EventArgs e)
        {
            //string ipAddress = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
            //if (string.IsNullOrEmpty(ipAddress))
            //{
            //    ipAddress = Request.ServerVariables["REMOTE_ADDR"];
            //}
            //string APIKey = "<B9B04F33084D9D10CD715BAF47D3A12F>";
            //string apiurl = string.Format("https://api.ip2location.io/?key=B9B04F33084D9D10CD715BAF47D3A12F&ip=" + ipAddress + "={0}&ip={1}&format=json", APIKey, ipAddress);
            //HttpWebRequest r = (HttpWebRequest)WebRequest.Create(apiurl);
            //r.Method = "Get";
            //HttpWebResponse res = (HttpWebResponse)r.GetResponse();
            //Stream sr = res.GetResponseStream();
            //StreamReader sre = new StreamReader(sr);
            //string text = sre.ReadToEnd();
            //string sub = text.Substring(text.IndexOf("country_name") + 15, text.IndexOf(',') - text.IndexOf('"') - 17);
            //if (sub != "India")
            //{
            //    price_rupee.Attributes.Add("style", "display:none");
            //}


            url = "/bulk-sms-services";
            try
            {

                ecity = "in " + System.Globalization.CultureInfo.CurrentUICulture.TextInfo.ToTitleCase(Page.RouteData.Values["estate"].ToString());
                dcity = "-" + System.Globalization.CultureInfo.CurrentUICulture.TextInfo.ToLower(Page.RouteData.Values["estate"].ToString());
            }
            catch
            {
                ecity = "in India";
                dcity = "-india";
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