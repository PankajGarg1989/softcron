using EcmaScript.NET;
using System.Web.Optimization;

namespace WebApplication7
{
    public class BundleConfig
    {
        // For more information on Bundling, visit https://go.microsoft.com/fwlink/?LinkID=303951
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/WebFormsJs").Include(
                           "~/assets/js/jquery.js",
                            "~/assets/js/popper.min.js",
                            "~/assets/js/appear-2.js",
                            "~/assets/js/bootstrap.min.js",
                            "~/assets/js/jquery.fancybox.js",
                            "~/assets/js/tilt.jquery.min.js",
                            "~/assets/js/owl.js",
                            "~/assets/js/aos.js",
                            "~/assets/js/wow.min.js",
                            "~/assets/js/slick.js",
                            "~/assets/js/jquery.barfiller.js",
                            "~/assets/js/typer-new.js",
                            "~/assets/js/jquery.mCustomScrollbar.concat.min.js",
                            "~/assets /js/parallax-scroll.js",
                            "~/assets/js/odometer.js",
                            "~/assets/js/script.js"
                            ));
        }
    }
}