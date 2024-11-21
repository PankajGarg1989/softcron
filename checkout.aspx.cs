using System;

namespace WebApplication7
{
    public partial class checkout : System.Web.UI.Page
    {
        public string orderId = "", currency;
        public float amount;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["payment"] = "";
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            amount = float.Parse(txtbxamount.Text);
            currency = txtbxcurrency.SelectedItem.Value.ToString();
            Session["amount"] = amount;
            Session["currency"] = currency;
            Session["name"] = txtbxname.Text;
            Session["description"] = txtbxdescription.Text;
            Session["contact"] = txtbxcontact.Text;
            Session["email"] = txtbxemail.Text;
            Session["payment"] = "payment";
            Response.Redirect("payment");


        }
    }
}