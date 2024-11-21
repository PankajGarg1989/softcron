using System;
using System.Web.UI;

public partial class international_sms : System.Web.UI.Page
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
}