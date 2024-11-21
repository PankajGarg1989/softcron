using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class SendMessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                callingApi();
            }
        }

        public async void callingApi()
        {
            string url = Request.Url.ToString();
            string[] segments = url.Split('/');
            string mobileNumber = segments[segments.Length - 1];
           // string accessToken = "EAAItn698bFgBAAqlZB6XSOC0fZAjclEhLZAp0faL9kombFr2mZAzuxmnVbgNu5NwfjFZCnL1dEp2fmHYsk6l4RZCif2xBoi7lvmYtKIwJkA8seuVLYbu4OoQr8IGKETXAy3wM9CZBQLtrezBfLIeuJnuzCfYrldW8SKtrJukgUGcPE0cXHAL9TQ93AjfBgcEd94ZBqGvZBZADaNgZDZD";
            //string apiUrl = "https://graph.facebook.com/v17.0/101334586311391/messages";
            string apiUrl = $"https://connect.pabbly.com/workflow/sendwebhookdata/IjU3NjUwNTZjMDYzNDA0M2M1MjZiNTUzNTUxM2Ii_pc?mobileno={mobileNumber}";

            using (HttpClient client = new HttpClient())
            {
                try
                {
                    string jsonContent = $"{{ \"mobileno\": \"{mobileNumber}\" }}";
                    StringContent content = new StringContent(jsonContent, Encoding.UTF8, "application/json");


                    HttpResponseMessage response = await client.PostAsync(apiUrl, content);


                    if (response.IsSuccessStatusCode)
                    {
                        Console.WriteLine("ok");
                    }
                    else
                    {
                    }
                }
                catch (Exception)
                {

                    throw;
                }
            }


            //using (HttpClient client = new HttpClient())
            //{
            //    client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);

            //    var data = new
            //    {
            //        messaging_product = "whatsapp",
            //        to = mobileNumber,
            //        type = "template",
            //        template = new
            //        {
            //            name = "amorafinal",
            //            language = new
            //            {
            //                code = "hi"
            //            }
            //        }
            //    };


            //    var json = JsonConvert.SerializeObject(data);
            //    var content = new StringContent(json, Encoding.UTF8, "application/json");

            //    HttpResponseMessage response = await client.PostAsync(apiUrl, content);
            //    if (response.IsSuccessStatusCode)
            //    {
            //       // Response.Redirect("/default.aspx");
            //    }
            //    else
            //    {
            //        //string errorMessage = "Error Adding user: " + response.ReasonPhrase;
            //    }
            //}
        }
    }
}