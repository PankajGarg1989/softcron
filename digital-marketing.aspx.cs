using System;

namespace WebApplication7
{
    public partial class digital_marketing : System.Web.UI.Page
    {
        public string ecity, dcity, city = "", url = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            url = "/digital-marketing";
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
    }
}