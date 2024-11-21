using System;

namespace WebApplication7
{
    public partial class web_development : System.Web.UI.Page
    {
        public string ecity, dcity, city = "", url = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            url = "/web-development";
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
    }
}