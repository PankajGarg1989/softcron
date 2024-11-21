<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication7._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>IT Consultancy Services | Web Development Company Softcron</title>
    <meta name="description" content="Softcron provides leading IT consultancy and web development services, including mobile app development and innovative website design for your business." />
    <meta name="keywords" content="Best IT consultancy, Softcron, Website Design Company, Web Development Services, Mobile Application Development, IT Services, Designing and Development" />
    <link rel="canonical" href="https://www.softcron.com">

    <!-- == Open Graph == -->
    <meta charset="UTF-8">
    <meta name="og:type" content="Website">
    <meta name="og:title" content="Softcron - IT Consultancy Services | Web Development Company">
    <meta name="og:description" content="Softcron provides leading IT consultancy and web development services, including mobile app development and innovative website design for your business.">
    <meta name="og:url" content="https://www.softcron.com">
    <meta name="og:image" content="https://www.softcron.com/assets/img/og/OGHome.webp">
    <!-- == Twitter Card == -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:site" content="@softcron">
    <meta name="twitter:creator" content="@softcron">
    <meta name="twitter:title" content="Softcron - IT Consultancy Services | Web Development Company">
    <meta name="twitter:description" content="Softcron provides leading IT consultancy and web development services, including mobile app development and innovative website design for your business.">
    <meta name="twitter:image:src" content="https://www.softcron.com/assets/img/og/OGHome.webp">
    <meta name="twitter:image:alt" content="Softcron">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <!-- Start of Banner section
        ============================================= -->
    <section id="dia-banner" class="dia-banner-section position-relative">
        <div class="banner-side-img banner-img1 position-absolute">
            <%-- image 1 --%>
            <img src="/assets/img/d-agency/banner/DigitalMarketingAgency.webp" alt="Digital-Marketing-Agency" width="1162" height="985">
        </div>
        <div class="banner-side-img banner-img2 position-absolute">
            <%-- image 2 --%>
            <img src="/assets/img/d-agency/banner/DigitalMarketingServices.webp" alt="Digital-Marketing-Services" width="1097" height="960">
        </div>
        <div class="container">
            <div class="dia-banner-content dia-headline pera-content">
                <span class="dia-banner-tag">Softcron</span>

                <h1 class="cd-headline clip is-full-width">We create
                    <br />
                    the best<br />
                    <span class="cd-words-wrapper">
                        <b class="is-visible">ideas.</b>
                        <b>designs.</b>
                        <b>outcomes.</b>
                    </span>
                </h1>
                <p>
                    Boost Your Business with Softcron: Experts in IT Consultancy, Web Development, and Digital Marketing. We create innovative websites, mobile apps, and targeted marketing strategies, including SEO and social media, to help your business thrive. Elevate your online presence and drive growth with Softcron’s cutting-edge solutions!
                </p>
                <div class="dia-banner-btn d-flex">
                    <div class="dia-play-btn text-center d-inline-block">
                        <a href="https://youtu.be/GQV_I8-ut_4" aria-label="Youtube" target="_blank"><i class="fas fa-play"></i></a>
                    </div>
                    <div class="dia-abt-btn text-center d-inline-block">
                        <a href="/about-us">About Us</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="banner-shape1 position-absolute">
            <img src="/assets/img/d-agency/shape/pls2.webp" alt="Default" width="60" height="284">
        </div>
        <div class="banner-shape2 position-absolute" data-parallax='{"y" : 100, "rotateY":500}'>
        </div>
        <div class="banner-side-shape2 position-absolute" data-parallax='{"y" : -30}'>
            <img src="/assets/img/d-agency/shape/bsi2.webp" loading="lazy" alt="Default" width="226" height="508">
        </div>
        <div class="banner-side-shape1 position-absolute" data-parallax='{"y" : 30}'>
            <img src="/assets/img/d-agency/shape/bsi1.webp" loading="lazy" alt="Default" width="229" height="524">
        </div>
    </section>
    <!-- End of Banner section
        ============================================= -->

    <!-- Start of Service section
        ============================================= -->
    <section id="dia-service" class="dia-service-section my-5">
        <div class="container">
            <div class="dia-service-content">
                <div class="row">
                    <div class="col-lg-6 col-md-12 py-5 py-lg-0">
                        <div class="dia-service-img position-relative wow bounceInLeft animated animated">
                            <%-- image 3 --%>
                            <img src="/assets/img/d-agency/service/DigitalMarketing_Provider.webp" alt="Digital-Marketing_Provider" height="570" width="570">
                            <div class="dia-service-shape dia-service-shape1 position-absolute">
                                <%-- image 4 --%>
                                <img src="/assets/img/d-agency/service/DigitalMarketing_Servicing.webp" alt="Digital-Marketing_Servicing" height="570" width="570">
                            </div>
                            <div class=" dia-service-shape dia-service-shape2 position-absolute">
                                <%-- image 5 --%>
                                <img src="/assets/img/d-agency/service/DigitalMarketing_Company.webp" alt="Digital-Marketing_Company" height="570" width="570">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 gs_reveal gs_reveal_fromLeft">
                        <div class="dia-service-text">
                            <div class="dia-section-title text-left text-capitalize dia-headline">
                                <span>Services</span>
                                <h2>Top-Tier Services Customized for Your Growth.</h2>
                            </div>
                            <div class="dia-service-details clearfix">
                                <div class="dia-service-item dia-headline ul-li-block wow fadeFromUp" data-wow-delay="0ms" data-wow-duration="2000ms">
                                    <h3><a href="/website-designing">Designing</a></h3>
                                    <ul>
                                        <li><a href="/graphic-designing-services">UI/UX Design</a></li>
                                        <li><a href="/website-designing">Website Design</a></li>
                                        <li><a href="/mobile-app-development-services">Mobile App Design</a></li>
                                    </ul>
                                </div>

                                <div class="dia-service-item dia-headline ul-li-block wow fadeFromUp" data-wow-delay="300ms" data-wow-duration="1500ms">
                                    <h3><a href="/digital-marketing">Digital Marketing</a></h3>
                                    <ul>
                                        <li><a href="/search-engine-optimization">SEO</a></li>
                                        <li><a href="/ppc-google-adwords-services">PPC</a></li>
                                        <li><a href="/content-writing-services">Social Media</a></li>
                                    </ul>
                                </div>
                                <div class="dia-service-item dia-headline ul-li-block wow fadeFromUp" data-wow-delay="600ms" data-wow-duration="1500ms">
                                    <h3><a href="/web-development">Development</a></h3>
                                    <ul>
                                        <li><a href="/web-development">Web Development</a></li>
                                        <li><a href="/mobile-app-development-services">App Development</a></li>
                                        <li><a href="/e-commerce">Software Development</a></li>
                                    </ul>
                                </div>
                                <div class="dia-service-item dia-headline ul-li-block wow fadeFromUp" data-wow-delay="600ms" data-wow-duration="1500ms">
                                    <h3><a href="/bulk-sms-services">Promotions</a></h3>
                                    <ul>
                                        <li><a href="/bulk-sms-services">SMS Services</a></li>
                                        <li><a href="/bulk-whatsapp-services">Whatsapp API</a></li>
                                        <li><a href="/bulk-voice-call-services">Voice Broadcasting</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="dia-service-btn">
                                <div class="dia-service-more text-center float-left">
                                    <a href="/services">View More Service</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End of Service section
        ============================================= -->

    <!-- Start of Fun fact section
        ============================================= -->
    <section id="dia-fun-fact" class="dia-fun-fact-section">
        <div class="container">
            <div class="dia-fun-fact-content">
                <div class="dia-fun-fact-title text-center dia-headline">
                    <%--<h2>Top Digital Marketing Agency, Software Development & Website Designing Services in India</h2>--%>  <%--  including your brand name at the end for better branding,--%>
                    <h2>Empowering Success with Our Growing Expertise</h2>
                </div>
                <div class="dia-fun-fact-counter">
                    <div class="row">
                        <div class="col-lg-4 col-md-4">
                            <div class="dia-fun-fact-item dia-headline pera-content text-center">
                                <span class="fun-fact-tag text-uppercase">Satisfied Clients</span>
                                <div class="fun-fact-number d-flex">
                                    <h3 class="odometer" data-count="122">0</h3>
                                    <span>+</span>
                                </div>
                                <p>
                                    At Softcron, our success is defined by the success of our clients. With over 120 businesses across various industries, we’ve provided cutting-edge IT consultancy, web development, mobile app solutions, and website design services tailored to meet their unique needs. From startups to established enterprises, our commitment to innovation, reliability, and excellence has helped us build long-lasting relationships with each of our clients.
                                </p>

                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <div class="dia-fun-fact-item dia-headline pera-content text-center">
                                <span class="fun-fact-tag text-uppercase">Team Members</span>
                                <div class="fun-fact-number d-flex">
                                    <h3 class="odometer" data-count="23">0</h3>
                                    <span>+</span>
                                </div>

                                <p>Meet our team of skilled professionals in development, design, and digital marketing. With deep expertise in each field, we provide tailored solutions that elevate your business. From web development and design to SEO, social media marketing, we deliver high-impact, results-driven services to maximize your success. Experience the best in digital innovation with a team that prioritizes excellence and client satisfaction.</p>

                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <div class="dia-fun-fact-item dia-headline pera-content text-center">
                                <span class="fun-fact-tag text-uppercase">Active Work</span>
                                <div class="fun-fact-number d-flex">
                                    <h3 class="odometer" data-count="200">0</h3>
                                    <span>+</span>
                                </div>
                                <p>
                                    Our active projects reflect the trust of our clients, with many new referrals and repeat projects from satisfied customers. By leveraging cutting-edge technology, we deliver solutions that exceed expectations. From web design and development to SEO and digital marketing, we’re dedicated to driving success for every client. Experience seamless project execution and service that goes beyond the ordinary, setting your business up for sustained growth.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End of Fun fact section
        ============================================= -->

    <!-- Start of about section
        ============================================= -->
    <section id="dia-about">
        <div class="container my-7">
            <div class="dia-about-content">
                <div class="row">
                    <div class="col-lg-6 col-md-12 order-md-first order-last">
                        <div class="dia-about-text-area">
                            <div class="wow bounceInLeft animated animated " data-wow-delay="0ms" data-wow-duration="1500ms">
                                <div class="dia-section-title text-left text-capitalize dia-headline">
                                    <span>How we can help</span>
                                    <h2>Transform Your Business with Expert Services</h2>
                                </div>
                                <div class="dia-about-text">

                                    <p>
                                        Elevate your business with Softcron, the Best IT Consultancy and a leading Website Design Company. Specializing in Web Development Services, Mobile Application Development, and comprehensive IT Services, we bridge your business to digital success. With expert Designing and Development solutions, we harness the latest tools and technologies to propel you to industry leadership. Experience exceptional results across website design, mobile app development, digital marketing, social media, and SEO with Softcron.
                                    </p>
                                </div>
                            </div>
                            <div class="dia-about-list ul-li-block wow bounceInUp animated animated" data-wow-delay="0ms" data-wow-duration="1500ms">
                                <ul>
                                    <li>Digital Mastery: Delivering Outstanding Results.</li>
                                    <li>Expert Precision: Ensuring Success</li>
                                    <li>Innovative Solutions: Driving Your Growth</li>
                                    <li>Trusted Partnerships: Bridging the Gap</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 wow bounceInRight animated animated my-7" data-wow-delay="300ms" data-wow-duration="1500ms">
                        <div class="dia-about-img position-relative">
                            <%-- image6 --%>
                            <img src="/assets/img/d-agency/about/BestDigitalMarketingAgency_Team.webp" loading="lazy" alt="Best-Digital-MarketingAgency_Team" height="520" width="510">
                            <div class="ab-shape1 position-absolute" data-parallax='{"x" : -30}'>
                                <%-- image7 --%>
                                <img src="/assets/img/d-agency/shape/DigitalMarketingServices.webp" loading="lazy" alt="Digital-Marketing-Services" width="185" height="185">
                            </div>
                            <div class="ab-shape2 position-absolute" data-parallax='{"x" : 30}'>
                                <%-- image 8 --%>
                                <img src="/assets/img/d-agency/shape/DigitalMarketingServices.webp" loading="lazy" alt="Digital-Marketing-Services" width="185" height="185">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End of About section
        ============================================= -->

    <!-- Start of Experience section
        ============================================= -->
    <section id="dia-exp" class="dia-exp-section">
        <div class="container">
            <div class="dia-exp-content">
                <div class="row align-items-center align-content-center">
                    <div class="col-lg-6 col-md-12 wow bounceInLeft animated animated" data-wow-delay="0ms" data-wow-duration="1500ms">
                        <div class="dia-exp-img text-center position-relative">
                            <%-- image 9 --%>
                            <img src="/assets/img/d-agency/about/BusinessAutomation.webp" loading="lazy" alt="Business-Automation" width="522" height="538">
                            <%--by commiting this line total links are 20 including all links--%>

                            <div class="ab-shape1 position-absolute" data-parallax='{"x" : -30}'>
                                <%-- image 10 --%>
                                <img src="/assets/img/d-agency/shape/DigitalMarketingServices.webp" alt="Digital-Marketing-Services" width="185" height="185">
                            </div>
                            <div class="ab-shape2 position-absolute" data-parallax='{"x" : 30}'>
                                <%-- image 11 --%>
                                <img src="/assets/img/d-agency/shape/DigitalMarketingServices.webp" alt="Digital-Marketing-Services" width="185" height="185">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 wow fadeFromRight" data-wow-delay="300ms" data-wow-duration="1500ms">
                        <div class="dio-exp-text-area">
                            <div class="dia-exp-text wow bounceInRight animated animated" data-wow-delay="0ms" data-wow-duration="1500ms">
                                <div class="dia-about-title-text">
                                    <div class="dia-section-title text-left text-capitalize dia-headline">
                                        <span>About Softcron</span>
                                        <h2>Empowering Your Digital Journey with Expert Solutions.
                                        </h2>
                                    </div>
                                    <div class="dia-about-text">
                                        At Softcron, we bring together an experienced team of specialists, each mastering technologies like ASP.NET, PHP, Java, and modern stacks such as MERN, MEAN, LAMP, and Flutter. With over 9 years of successfully serving global clients, we deliver innovative IT solutions tailored to diverse business needs.
                                        <br />
                                        Our expertise spans across web development, digital marketing, SEO, Pay Per Click Advertising, Bulk Marketing (WhatsApp and SMS), and Social Media Strategies. Softcron is your trusted partner for integrated, result-driven digital strategies that foster growth. Explore affordable solutions with us and let’s redefine your digital journey!
                                    </div>
                                </div>
                            </div>
                            <div class="skill-progress-bar wow bounceInUp animated animated" data-wow-delay="0ms" data-wow-duration="1500ms">
                                <div class="skill-set-percent dio-headline">
                                    <h4><a href="/graphic-designing-services">UI/UX Design</a></h4>
                                    <div class="progress">
                                        <div class="progress-bar" data-percent="92"></div>
                                    </div>
                                </div>
                                <div class="skill-set-percent dio-headline">
                                    <h4><a href="/web-development">Web Development</a></h4>
                                    <div class="progress">
                                        <div class="progress-bar" data-percent="85"></div>
                                    </div>
                                </div>
                                <div class="skill-set-percent dio-headline">
                                    <h4><a href="/digital-marketing">Marketing & Branding</a></h4>
                                    <div class="progress">
                                        <div class="progress-bar" data-percent="99"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="dia-exp-btn text-center">
                                <a href="/about-us/#dia-team">Our Team</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End of Experience section
        ============================================= -->
    <!-- Start of blog section
        ============================================= -->
    <%--<form id="form1" runat="server">--%>
    <section id="dia-blog" class="dia-blog-section">
        <div class="container">
            <div class="dia-section-title text-left text-capitalize pera-content dia-headline">
                <span>Our Blogs</span>
                <h2>Our blog & article</h2>

            </div>
            <div class="dia-blog-content">
                <div class="row">
                    <asp:Repeater ID="rptrblog" runat="server" OnItemCommand="rptrblog_ItemCommand" OnItemDataBound="rptrblog_ItemDataBound">
                        <HeaderTemplate>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <div class="col-lg-4 wow fadeFromUp" data-wow-delay="0ms" data-wow-duration="1500ms">
                                <div class="dia-blog-img-text">

                                    <asp:Label ID="lblpic" Text='<%#Eval("blog_outer_image")%>' Visible="false" runat="server"></asp:Label>

                                    <asp:Image ID="lblimageurl" runat="server" ImageUrl='<%#Eval("blog_outer_image")%>' Height="463" Width="370" loading="lazy" alt='<%# Eval("blog_title")%>' />
                                    <div class="dia-blog-text">

                                        <h3>
                                            <asp:LinkButton ID="LinkButto_view1" CommandName="view" CommandArgument='<%# Eval("blog_friendly_url") %>' runat="server"><%# Eval("blog_title")%></asp:LinkButton>
                                        </h3>
                                    </div>
                                    <div class="dia-blog-meta">
                                        <div class="dia-author-area d-inline-block">
                                            <div class="dia-athur-img float-left">
                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("blog_outer_image")%>' Height="54" Width="43" loading="lazy" alt='<%# Eval("blog_title")%>' />
                                            </div>
                                            <div class="dia-author-name">
                                                <span>Posted By <a href="#"><%# Eval("author_name")%></a></span>
                                            </div>
                                        </div>
                                        <div class="dia-date-meta float-right">
                                            <a href="#"><%# Eval("created_on","{0: dd MMMM yyyy}")%></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </section>





</asp:Content>
