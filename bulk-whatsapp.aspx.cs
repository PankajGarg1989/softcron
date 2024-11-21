using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication7.App_Start;

namespace WebApplication7
{
    public partial class bulk_whatsapp : System.Web.UI.Page
    {
        public string ecity, dcity, city = "", url = "";

        #region
        string imageUrl = ConfigurationManager.AppSettings["webapibaseimgurl"].ToString();
        string blogBaseURL = ConfigurationManager.AppSettings["BlogBaseURL"].ToString();

        SqlConnection _sqlConnection = new SqlConnection();
        SqlCommand _sqlCommand = new SqlCommand();
        SqlDataAdapter _sqlDataAdapter;
        DataTable dt_blog = null;

        #endregion
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
            //else
            //{
            //    price_dollar.Attributes.Add("style", "display:none");

            //}

            url = "/bulk-whatsapp-services";
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

            BindBlog();
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


        private void BindBlog()
        {
            try
            {
                string _connectionstring = (ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
                using (SqlConnection _sqlConnection = new SqlConnection(_connectionstring))
                {
                    _sqlConnection.Open();
                    using (SqlCommand _sqlCommand = new SqlCommand("sp_Selectblog", _sqlConnection))
                    {
                        _sqlCommand.CommandTimeout = 600;
                        _sqlDataAdapter = new SqlDataAdapter(_sqlCommand);
                        dt_blog = new DataTable();
                        _sqlDataAdapter.Fill(dt_blog);
                        if (dt_blog.Rows.Count > 0)
                        {
                            Session["bloglist"] = dt_blog;
                            rptrblog.DataSource = dt_blog;
                            rptrblog.DataBind();
                        }
                        else
                        {
                            rptrblog.DataSource = null;
                            rptrblog.DataBind();
                        }
                        _sqlConnection.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                string error = ex.ToString();
                _sqlConnection.Close();
            }
        }
        protected void rptrblog_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string commandname = e.CommandName;
            string url = e.CommandArgument.ToString();

            switch (commandname)
            {
                case "view":
                    try
                    {
                        url = "/blogs/" + url;
                        Response.Redirect(url, false);
                    }
                    catch (Exception ex)
                    {
                        ex.Message.ToString();
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "oopsToast();", true);
                    }
                    break;
                default:
                    break;
            }
        }

        protected void rptrblog_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            try
            {
                if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
                {

                    Label lblpic = (Label)e.Item.FindControl("lblpic");
                    Image lblimageurl = (Image)e.Item.FindControl("lblimageurl");
                    Image Image1 = (Image)e.Item.FindControl("Image1");
                    string url;
                    if (string.IsNullOrEmpty(lblpic.Text))
                    {
                        url = "";
                    }
                    else
                    {
                        url = imageUrl + blogBaseURL + lblpic.Text;
                        // url = lblpic.Text;
                    }
                    lblimageurl.ImageUrl = url;
                    Image1.ImageUrl = url;
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
        }
    }
}