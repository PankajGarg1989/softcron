using Newtonsoft.Json.Linq;
using Razorpay.Api;
using System;
using System.Collections.Generic;
using System.Net;

namespace WebApplication7
{
    public partial class payments : System.Web.UI.Page
    {
        public string orderId, key = "rzp_live_YYNGqfwoehxOhV", currency, name, description, contact, email, s;
        public float amount, famt;
        protected void Page_Load(object sender, EventArgs e)
        {
            s = Session["payment"].ToString();
            if (s == "payment")
            {
                amount = float.Parse(Session["amount"].ToString());
                //famt = (amount / 100);
                //Session["famt"] = (amount / 100).ToString();
                currency = Session["currency"].ToString();
                name = Session["name"].ToString();
                description = Session["description"].ToString();
                contact = Session["contact"].ToString();
                email = Session["email"].ToString();
                ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
                Dictionary<string, object> input = new Dictionary<string, object>();
                input.Add("amount", amount * 100); // this amount should be same as transaction amount
                input.Add("currency", currency);
                //input.Add("receipt", "13531");
                input.Add("payment_capture", 1);
                try
                {
                    string key = "rzp_live_YYNGqfwoehxOhV";   
                    string secret = "77rMLmwDstXO2r1xoyOJMXIG";
                    RazorpayClient client = new RazorpayClient(key, secret);
                    Order order = client.Order.Create(input);
                    orderId = order["id"].ToString();
                    
                }
                catch (Exception ex)
                {

                }
            }
            else
            {
                Response.Redirect("charge.aspx");
            }

        }
    }
}