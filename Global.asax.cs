using System;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;



namespace WebApplication7
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            RouteTable.Routes.MapPageRoute("blogDetails", "blog/{name}", "~/blogs-details.aspx");
            RouteTable.Routes.MapPageRoute("blog", "blogs", "~/UI/blog.aspx");
            RouteTable.Routes.MapPageRoute("blogbyCategory", "blogs/{Id}", "~/blogs.aspx");
            //RouteTable.Routes.MapPageRoute("softcronblogCategory", "blogs/{Id}", "~/blogs.aspx");
            RouteTable.Routes.MapPageRoute("softcronblogTag", "blogs/{tag}", "~/blogs.aspx");
            RouteTable.Routes.MapPageRoute("404", "404", "~/404.aspx");

            RouteTable.Routes.MapPageRoute("", "", "~/default.aspx");
            RouteTable.Routes.MapPageRoute("about-us1", "about-us", "~/about.aspx");
            RouteTable.Routes.MapPageRoute("career1", "career", "~/career.aspx");
            RouteTable.Routes.MapPageRoute("contact-us1", "contact-us", "~/contact-us.aspx");
            RouteTable.Routes.MapPageRoute("service1", "services", "~/services.aspx");

            RouteTable.Routes.MapPageRoute("bulk-sms", "bulk-sms-services-{estate}", "~/sms.aspx");
            RouteTable.Routes.MapPageRoute("ivr-services", "ivr-services-{estate}", "~/ivr-service.aspx");
            RouteTable.Routes.MapPageRoute("missed-call-services", "missed-call-services-{estate}", "~/missed-call.aspx");
            RouteTable.Routes.MapPageRoute("ppc-google-adwords-services", "ppc-google-adwords-services-{estate}", "~/ppc.aspx");
            RouteTable.Routes.MapPageRoute("digital-marketing", "digital-marketing-{estate}", "~/digital-marketing.aspx");
            RouteTable.Routes.MapPageRoute("bulk-voice-call-services", "bulk-voice-call-services-{estate}", "~/voice.aspx");
            RouteTable.Routes.MapPageRoute("bulk-whatsapp-services", "bulk-whatsapp-services-{estate}", "~/bulk-whatsapp.aspx");
            RouteTable.Routes.MapPageRoute("search-engine-marketing", "search-engine-marketing-{estate}", "~/sem.aspx");
            RouteTable.Routes.MapPageRoute("search-engine-optimization", "search-engine-optimization-{estate}", "~/seo.aspx");
            RouteTable.Routes.MapPageRoute("social-media-optimization", "social-media-optimization-{estate}", "~/smo.aspx");
            RouteTable.Routes.MapPageRoute("webdesigning", "website-designing-{estate}", "~/web-designing.aspx");
            RouteTable.Routes.MapPageRoute("software-development", "software-development-{estate}", "~/software-development.aspx");
            RouteTable.Routes.MapPageRoute("web-development", "web-development-{estate}", "~/web-development.aspx");
            RouteTable.Routes.MapPageRoute("international-sms", "international-sms-services-{estate}", "~/internationl-sms.aspx");
            RouteTable.Routes.MapPageRoute("international-whatsapp", "international-whatsapp-services-{estate}", "~/international-whatsap.aspx");
            RouteTable.Routes.MapPageRoute("contentwriting", "content-writing-services-{estate}", "~/content-writing.aspx");
            RouteTable.Routes.MapPageRoute("social-media-marketing", "social-media-marketing-services-{estate}", "~/smm.aspx");
            RouteTable.Routes.MapPageRoute("graphic-designing", "graphic-designing-services-{estate}", "~/graphic-design.aspx");
            RouteTable.Routes.MapPageRoute("mobile-app-development", "mobile-app-development-services-{estate}", "~/mobile-development.aspx");
            RouteTable.Routes.MapPageRoute("asp-net-development", "asp-net-development-services-{estate}", "~/asp.aspx");
            RouteTable.Routes.MapPageRoute("python-development", "python-development-services-{estate}", "~/python.aspx");
            RouteTable.Routes.MapPageRoute("android-app-development", "android-app-development-{estate}", "~/android.aspx");
            RouteTable.Routes.MapPageRoute("ios-app-development", "ios-app-development-{estate}", "~/ios.aspx");
            RouteTable.Routes.MapPageRoute("hybrid-app-development", "hybrid-app-development-{estate}", "~/hybrid.aspx");
            RouteTable.Routes.MapPageRoute("mean-stack-developer", "mean-stack-developer-{estate}", "~/mean.aspx");
            RouteTable.Routes.MapPageRoute("mern-stack-developer", "mern-stack-developer-{estate}", "~/mern.aspx");


            RouteTable.Routes.MapPageRoute("rcs-messages", "rcs-message-{estate}", "~/rcs-message.aspx");


            RouteTable.Routes.MapPageRoute("bulk-sms1", "bulk-sms-services", "~/sms.aspx");
            RouteTable.Routes.MapPageRoute("ivr-services1", "ivr-services", "~/ivr-service.aspx");
            RouteTable.Routes.MapPageRoute("missed-call-services1", "missed-call-services", "~/missed-call.aspx");
            RouteTable.Routes.MapPageRoute("ppc-google-adwords-services1", "ppc-google-adwords-services", "~/ppc.aspx");
            RouteTable.Routes.MapPageRoute("digital-marketing1", "digital-marketing", "~/digital-marketing.aspx");
            RouteTable.Routes.MapPageRoute("bulk-voice-call-services1", "bulk-voice-call-services", "~/voice.aspx");
            RouteTable.Routes.MapPageRoute("bulk-whatsapp-services1", "bulk-whatsapp-services", "~/bulk-whatsapp.aspx");
            RouteTable.Routes.MapPageRoute("search-engine-marketing1", "search-engine-marketing", "~/sem.aspx");
            RouteTable.Routes.MapPageRoute("search-engine-optimization1", "search-engine-optimization", "~/seo.aspx");
            RouteTable.Routes.MapPageRoute("social-media-optimization1", "social-media-optimization", "~/smo.aspx");
            RouteTable.Routes.MapPageRoute("webdesigning1", "website-designing", "~/web-designing.aspx");
            RouteTable.Routes.MapPageRoute("software-development1", "software-development", "~/software-development.aspx");
            RouteTable.Routes.MapPageRoute("web-development1", "web-development", "~/web-development.aspx");
            RouteTable.Routes.MapPageRoute("international-sms1", "international-sms-services", "~/internationl-sms.aspx");
            RouteTable.Routes.MapPageRoute("international-whatsapp1", "international-whatsapp-services", "~/international-whatsap.aspx");
            RouteTable.Routes.MapPageRoute("contentwriting1", "content-writing-services", "~/content-writing.aspx");
            RouteTable.Routes.MapPageRoute("social-media-marketing1", "social-media-marketing-services", "~/smm.aspx");
            RouteTable.Routes.MapPageRoute("graphic-designing1", "graphic-designing-services", "~/graphic-design.aspx");
            RouteTable.Routes.MapPageRoute("mobile-app-development1", "mobile-app-development-services", "~/mobile-development.aspx");
            RouteTable.Routes.MapPageRoute("asp-net-development1", "asp-net-development-services", "~/asp.aspx");
            RouteTable.Routes.MapPageRoute("python-development1", "python-development-services", "~/python.aspx");
            RouteTable.Routes.MapPageRoute("android-app-development1", "android-app-development", "~/android.aspx");
            RouteTable.Routes.MapPageRoute("ios-app-development1", "ios-app-development", "~/ios.aspx");
            RouteTable.Routes.MapPageRoute("hybrid-app-development1", "hybrid-app-development", "~/hybrid.aspx");
            RouteTable.Routes.MapPageRoute("mean-stack-developer1", "mean-stack-developer", "~/mean.aspx");
            RouteTable.Routes.MapPageRoute("mern-stack-developer1", "mern-stack-developer", "~/mern.aspx");
            RouteTable.Routes.MapPageRoute("whatsapp-api-services1", "whatsapp-api-services", "~/whatsappApi.aspx");
            RouteTable.Routes.MapPageRoute("qms", "qms", "~/qms.aspx");



            RouteTable.Routes.MapPageRoute("tnc1", "payment-terms-and-conditions", "~/ptnc.aspx");
            RouteTable.Routes.MapPageRoute("checkout", "checkout", "~/checkout.aspx");
            RouteTable.Routes.MapPageRoute("payment", "payment", "~/payments.aspx");
            RouteTable.Routes.MapPageRoute("privacy-policy", "privacy-policy", "~/privacy.aspx");
            RouteTable.Routes.MapPageRoute("refund-policy", "refund-policy", "~/refund.aspx");
            RouteTable.Routes.MapPageRoute("terms-and-conditions", "terms-and-conditions", "~/tnc.aspx");
            RouteTable.Routes.MapPageRoute("currentopenings", "current-openings", "~/currentopenings.aspx");
            RouteTable.Routes.MapPageRoute("charge", "charge", "~/charge.aspx");
            RouteTable.Routes.MapPageRoute("SendMessage", "sendmessage{number}", "~/SendMessage.aspx");
            RouteTable.Routes.MapPageRoute("wpOfficalAPI", "wpOfficalAPI", "~/wpOfficial.aspx");
            RouteTable.Routes.MapPageRoute("erpSystem", "erpSystem", "~/erpSystem.aspx");
            RouteTable.Routes.MapPageRoute("crmSolution", "crmSolution", "~/crmSolution.aspx");
            RouteTable.Routes.MapPageRoute("hrmSolution", "hrmSolution", "~/hrmSolution.aspx");
            RouteTable.Routes.MapPageRoute("taCRM", "taCRM", "~/taCRM.aspx");
            RouteTable.Routes.MapPageRoute("3rdPartyAPI", "3rdPartyAPI", "~/3rdPartyAPI.aspx");
            RouteTable.Routes.MapPageRoute("api-integrations", "api-integrations", "~/api-integrations.aspx");
            RouteTable.Routes.MapPageRoute("payment-gateway", "payment-gateway", "~/payment-gateway.aspx");
            RouteTable.Routes.MapPageRoute("brand-marketing", "brand-marketing", "~/brand-marketing.aspx");
            RouteTable.Routes.MapPageRoute("business-automation", "business-automation", "~/business-automation.aspx");
            RouteTable.Routes.MapPageRoute("cms-website-design", "cms-website-design", "~/cms-website-design.aspx");
            RouteTable.Routes.MapPageRoute("e-commerce", "e-commerce", "~/e-commerce.aspx");



        }
    }
}