using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class smm : System.Web.UI.Page
    {
        public string ecity, dcity, city = "", url = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            url = "/social-media-marketing-services";
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