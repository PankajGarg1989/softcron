using Razorpay.Api;
using System;
using System.Collections.Generic;

namespace WebApplication7
{
    public partial class charge : System.Web.UI.Page
    {
        public string paymentId;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["payment"].ToString() == "payment")
                {
                    paymentId = Request.Form["razorpay_payment_id"];
                    Dictionary<string, object> input = new Dictionary<string, object>();
                    input.Add("amount", Session["amount"].ToString()); // this amount should be same as transaction amount
                    string key = "rzp_live_YYNGqfwoehxOhV";
                    string secret = "77rMLmwDstXO2r1xoyOJMXIG";
                    RazorpayClient client = new RazorpayClient(key, secret);
                    Dictionary<string, string> attributes = new Dictionary<string, string>();
                    attributes.Add("razorpay_payment_id", paymentId);
                    attributes.Add("razorpay_order_id", Request.Form["razorpay_order_id"]);
                    attributes.Add("razorpay_signature", Request.Form["razorpay_signature"]);

                    Utils.verifyPaymentSignature(attributes);
                    //Refund refund = new Razorpay.Api.Payment((string)paymentId).Refund();
                    //Response.Write("<script>alert('Payment successfully')</script>");
                    //Console.WriteLine(refund["id"]);
                }
                else
                {
                    Response.Redirect("checkout.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("checkout.aspx");
            }


        }
    }
}