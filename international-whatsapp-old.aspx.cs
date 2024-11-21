using System;
using System.Web.UI;

public partial class international_whatsapp : System.Web.UI.Page
{
    public string ecity, ecity1, city = "", url = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        url = "/international-whatsapp-services";
        try
        {
            ecity = "in " + System.Globalization.CultureInfo.CurrentUICulture.TextInfo.ToTitleCase(Page.RouteData.Values["estate"].ToString());
            ecity1 = "-" + System.Globalization.CultureInfo.CurrentUICulture.TextInfo.ToLower(Page.RouteData.Values["estate"].ToString());
        }
        catch
        {
            ecity1 = "";
            ecity = "";
            city = "blank";
        }
    }
}