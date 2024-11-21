<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="erpSystem.aspx.cs" Inherits="WebApplication7.erpSystem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Comprehensive ERP Solutions | Best ERP Software <%=ecity.ToString() %> - ERP System</title>
    <meta name="description" content="Discover top-notch Enterprise Resource Planning solutions <%=ecity.ToString() %> tailored to your business needs. Explore the best ERP software <%=ecity.ToString() %> for seamless operations and efficiency." />
    <meta name="keywords" content="Enterprise Resource Planning <% =ecity.ToString() %>, ERP system <%=ecity.ToString() %>, best ERP <%=ecity.ToString() %>, ERP software <%=ecity.ToString() %>, enterprise resource planning systems <%=ecity.ToString() %>" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <section id="web-app-about" class="web-app-about-section mt-5">
            <h1 class="text-center font-weight-bold top-text txt-erp-system">Welcome to the forefront of ERP innovation. At Softcron  <% =ecity.ToString() %></h1>
            <p class="text-center slogan font-weight-bold">Where Innovation Meets Efficiency</p>
            <div class="container mt-5">
                <div class="web-app-about-text-img  web-app-about-left-img">
                    <div class="row align-items-center align-content-center justify-content-center">
                        <div class="col-lg-6">
                            <div class="web-app-about-text web-app-headline">
                                <div class="web-app-section-title web-app-headline wow fadeInLeft" data-wow-delay="300ms" data-wow-duration="1000ms">
                                    <div class="web-app-about-txt-content wow fadeFromLeft content d-flex align-items-center justify-content-center" data-wow-delay="600ms" data-wow-duration="1000ms">
                                        <p class="header-line text-justify">
                                            At our core, we transcend the traditional vendor-client relationship.
                                            We position ourselves as your strategic partner in the journey of business 
                                            transformation. With a rich legacy of delivering excellence and an unwavering commitment 
                                            to achieving perfection, we consistently push the boundaries of what's possible 
                                            in the realm of Enterprise Resource Planning (ERP) solutions.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 wow fadeFromRight" data-wow-delay="300ms" data-wow-duration="1000ms">
                            <img src="/assets/img/erp_system/bestErpSoftware.png" height="570" width="570" alt="ERP-System">
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <%--  <div class="container">
                <div class="web-app-about-text-img  web-app-about-left-img">
                    <div class="row align-items-center align-content-center">
                        <div class="col-lg-6">
                            <div class="web-app-about-text web-app-headline">
                                <div class="web-app-section-title web-app-headline wow fadeFromUp" data-wow-delay="300ms" data-wow-duration="1000ms">
                                    <div class="cyb-section_title cyb-headline text-center">
                                        <h2>What is an ERP System
                                        </h2>
                                    </div>
                                    <div class="web-app-about-txt-content wow fadeFromUp content" data-wow-delay="600ms" data-wow-duration="1000ms">
                                        An enterprise resource planning system, commonly called ERP,
                                          is an integrated platform that manages all aspects of production or
                                          distribution operations, whether it is on-premises or cloud-based.
                                          Moreover, ERP systems support all aspects of financial management,
                                          human resources, supply chain management, and manufacturing along with
                                          your core accounting function. ERP systems will also provide
                                          transparency into your complete business process by tracking all
                                          aspects of production, logistics, and financials. An integrated system
                                          acts as a central hub for a company's end-to-end workflow and data,
                                          making it accessible to many departments. ERP Systems and software
                                          support multiple functions across the enterprise, mid-sized, or small
                                          businesses, including customizations for your industry.
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <img src="/assets/img/software_development/software-development-services.webp" height="570" width="570" alt="software-development-services">
                        </div>
                    </div>
                </div>
            </div>--%>

        <section id="it-nw-feature" class="it-nw-feature-section position-relative">
            <div class="container">
                <div class=" headline pera-content text-center middle-align  wow fadeInUp" data-wow-delay="600ms" data-wow-duration="1500ms">
                    <h1 class="font-weight-bold txt-erp-system  wow fadeInUp" data-wow-delay="600ms" data-wow-duration="1500ms">What is an ERP System? <%--<%=ecity.ToString()%>--%></h1>
                </div>
                <div>
                    <div class="row justify-content-center align-items-center">
                        <div class="col-lg-6 wow fadeFromLeft" data-wow-delay="300ms" data-wow-duration="1000ms">
                            <img src="/assets/img/erp_system/what-is-erp-image.png" width="500" alt="ERP-picture" />
                        </div>
                        <div class="col-lg-6 wow fadeFromRight" data-wow-delay="300ms" data-wow-duration="1000ms">
                            <p class="header-lines text-justify">
                                An enterprise resource planning system, commonly called ERP,
                              is an integrated platform that manages all aspects of production or
                              distribution operations, whether it is on-premises or cloud-based.
                            </p>
                            <p class="header-lines text-justify">
                                Moreover, ERP systems support all aspects of financial management,
                              human resources, supply chain management, and manufacturing along with
                              your core accounting function.
                            </p>
                        </div>
                        <div class="second-defination">
                            <div class="col-lg-6 mt-5 wow fadeInLeft" data-wow-delay="600ms" data-wow-duration="1500ms">
                                <p class="header-lines text-justify">
                                    ERP systems will also provide
                                      transparency into your complete business process by tracking all
                                      aspects of production, logistics, and financials. An integrated system
                                      acts as a central hub for a company's end-to-end workflow and data,
                                </p>
                                <p class="header-lines text-justify">
                                    making it accessible to many departments. 
                                        ERP Systems and software
                                          support multiple functions across the enterprise, mid-sized, or small
                                          businesses, including customizations for your industry.
                                </p>
                            </div>
                            <div class="col-lg-6 wow fadeInRight" data-wow-delay="600ms" data-wow-duration="1500ms">
                                <img src="/assets/img/erp_system/erpSolution.png" width="500" height="500" alt="erp solution" />
                            </div>
                        </div>
                    </div>
                </div>




                <%-- <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="400ms" data-wow-duration="1500ms">
                            <div class="it-nw-feature-innerbox text-center position-relative">
                                <div class="it-nw-feature-inner-icon position-absolute d-flex justify-content-center align-items-center">
                                    <i class="fa fa-pencil" aria-hidden="true"></i>
                                </div>
                                <div class="it-nw-feature-inner-text headline pera-content box1">
                                    <h3>Empowering Your SEO Strategy with Keyword Research</h3>
                                    <p class="content">Unlock the potential of your SEO campaign through meticulous keyword research.</p>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
                            <div class="it-nw-feature-innerbox text-center position-relative">
                                <div class="it-nw-feature-inner-icon position-absolute d-flex justify-content-center align-items-center">
                                    <i class="fa fa-search" aria-hidden="true"></i>
                                </div>
                                <div class="it-nw-feature-inner-text headline pera-content box">
                                    <div class="it-nw-feature-inner-text headline pera-content box1">
                                        <h3>Empowering Your Brand with Optimized Content Optimization</h3>
                                        <p class="content">
                                            Elevate your website's impact with our top-notch content writing services that 
                                     perfectly represent your brand or services  
                                        </p>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="200ms" data-wow-duration="1500ms">
                            <div class="it-nw-feature-innerbox text-center position-relative">
                                <div class="it-nw-feature-inner-icon position-absolute d-flex justify-content-center align-items-center">
                                    <i class="fa fa-file-text" aria-hidden="true"></i>
                                </div>
                                <div class="it-nw-feature-inner-text headline pera-content box1">
                                    <div class="it-nw-feature-inner-text headline pera-content box1">
                                        <h3>Unleashing the Power of On-Page SEO</h3>
                                        <p class="content">
                                            On-page optimization is the core of SEO, encompassing various techniques such as keyword usage, content quality, meta tags, and user experience.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="400ms" data-wow-duration="1500ms">
                            <div class="it-nw-feature-innerbox text-center position-relative">
                                <div class="it-nw-feature-inner-icon position-absolute d-flex justify-content-center align-items-center">
                                    <i class="fa fa-file" aria-hidden="true"></i>
                                </div>
                                <div class="it-nw-feature-inner-text headline pera-content box">
                                    <div class="it-nw-feature-inner-text headline pera-content box1">
                                        <h3>Unleashing the Potential of Off-Page SEO</h3>
                                        <p class="content">
                                            Experience the impact of our successful off-page SEO services, as we establish your website's trustworthiness, 
                                     authority, popularity
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>--%>
            </div>
        </section>

        <section id="web-app-banner">
            <div class="container card-parent d-flex justify-content-center align-items-center">
                <h2 class="font-weight-bold  text-center wow fadeInUp" data-wow-delay="600ms" data-wow-duration="1500ms">Why Partner with Softcron?</h2>
                <h3 class="text-center mt-4  wow fadeInUp" data-wow-delay="600ms" data-wow-duration="1500ms">Boost Business Efficiency with Softcron's Customizable ERP System</h3>
                <div class="row d-flex mt-4 justify-content-center align-content-center  wow fadeInUp" data-wow-delay="600ms" data-wow-duration="1500ms">
                    <div class="card  mx-1">
                        <img src="/assets/img/erp_system/solution.png" width="50" alt="logo" />
                        <h4>Innovative Solutions</h4>
                        <p class="text-justify">
                            Our team of experts combines passion with prowess, driving innovation and excellence at every turn. Our solutions redefine industry  standards through innovative technology.
                        </p>
                    </div>
                    <div class="card mx-1">
                        <img src="/assets/img/erp_system/client.png" width="50" alt="logo" />
                        <h4 class="text-nowrap">Client-Centric Approach</h4>
                        <p class="text-justify">
                            We are fully dedicated to ensuring your success, fostering growth. Our team actively listens, adapts to your needs, and consistently delivers exceptional results.
                        </p>
                    </div>
                    <div class="card mx-1">
                        <img src="/assets/img/erp_system/team.png" width="50" alt="logo" />
                        <h4>Trailblazing Team</h4>
                        <p class="text-justify">
                            Our expert team is a formidable force, driven by passion and expertise. They bring unmatched dedication to every project, raising the bar for excellence in their fields.
                        </p>
                    </div>
                    <div class=" card mx-1">
                        <img src="/assets/img/erp_system/support.png" width="50" alt="logo" />
                        <h4>Unparalleled Support</h4>
                        <p class="text-justify">
                            From implementation to ongoing support, we're by your side every
                            step of the way, ensuring your journey to success is smooth and
                            seamless.
                        </p>
                    </div>
                </div>
            </div>
        </section>


        <section id="web-app-banner">
            <div class="container card-parent">
                <h2 class="text-center font-weight-bold  wow fadeInUp" data-wow-delay="600ms" data-wow-duration="1500ms">
                    <img src="/assets/img/erp_system/growth.png" alt="logo" width="35" />
                    Benefits of ERP
                    <img src="/assets/img/erp_system/benefits.png" width="40" /></h2>
                <h3 class="text-center font-weight-bold mt-4  wow fadeInUp" data-wow-delay="600ms" data-wow-duration="1500ms">Unlock Your Business Potential with ERP</h3>
                <p class="text-center mt-4  wow fadeInUp" data-wow-delay="600ms" data-wow-duration="1500ms">
                    Isn't it better to achieve extraordinary things than to settle for
                  ordinary ones?
                    <br />
                    Explore the myriad benefits of ERP and unleash the full
                  potential of your business.
                </p>


                <div class="row mt-5">
                    <div class="col-lg-6 wow fadeInLeft" data-wow-delay="600ms" data-wow-duration="1500ms">
                        <img src="/assets/img/erp_system/erpSystem.png" width="450" alt="ERP Software" />
                    </div>
                    <div class="col-lg-6 wow fadeInRight" data-wow-delay="600ms" data-wow-duration="1500ms">
                        <ul class="slogan ">
                            <li class="text-justify">
                                <strong>Efficiency Redefined: </strong>
                                Say goodbye to inefficiencies
                                and hello to streamlined operations that drive productivity.
                            </li>
                            <li class="text-justify">
                                <strong>Insights That Inspire: </strong>
                                Transform data into insights
                                and insights into action, fueling smarter decisions and strategic
                                growth.
                            </li>
                            <li class="text-justify">
                                <strong>Cost-Efficiency: </strong>
                                Optimize resources, reduce
                                wastage, and watch your bottom line flourish with cost-effective ERP
                                solutions.
                            </li>
                            <li class="text-justify">
                                <strong>Agility & Adaptability: </strong>
                                Scale with confidence,
                                pivot with ease, and stay ahead of the curve in a dynamic business
                                landscape.
                            </li>
                        </ul>
                    </div>

                </div>
            </div>
    </div>
    </section>

        <%--       <section id="web-app-banner" class="web-app-banner-section position-relative">

            <div class="container mt-55 py-4">
                <div class="web-app-banner-content position-relative">
                    <div class="row align-items-center align-content-center">
                        <div class="col-lg-6 order-md-first order-last py-5 py-lg-2">
                            <div class="text-center wow fadeInLeft" data-wow-delay="600ms" data-wow-duration="1500ms">

                                <img src="/assets/img/mobile/mobile-app-development.webp" alt="mobile-app-development" height="570" width="570">
                            </div>

                        </div>
                        <div class="col-lg-6 py-2">
                            <div class="web-app-banner-text web-app-headline ">
                                <h1 class="cd-headline push">Best Mobile App Development Company</h1>

                                <p class="content">
                                    Softcron is renowned as a Best Mobile App Development Company 
                                     dedicated to crafting high-quality native and hybrid Mobile App Development for Android and iOS platforms.
                                     With our expertise, we transform your concepts into feature-rich, user-friendly mobile apps that enhance
                                     your business and captivate your intended audience.
                                </p>
                                <a class="comment-reply" href="/contact-us"><span>Contact us</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>--%>

    <section id="web-app-banner" class="web-app-banner-section position-relative down-margin">
        <div class=" container">
            <h2 class="text-center font-weight-bold mt-4">
                <img width="40" class="erp-icon" src="/assets/img/erp_system/served.png" />
                Industries We Served
                    <img width="40" class="erp-icon" src="/assets/img/erp_system/served.png" /></h2>
            <h5 class="text-center mt-4">Tailored Solution for Every Industry Under the Sun</h5>
            <div class="row d-flex justify-content-center align-items-center ">
                <div class="col-lg-6 mt-4 wow fadeInLeft" data-wow-delay="600ms" data-wow-duration="1500ms">
                    <p class="header-lines">
                        At Softcron, we're not just ERP providers; we're industry experts.
                              Discover how our customized solutions are shaping the future across
                              diverse sectors.
                    </p>
                    <ul class="slogan mb-3">
                        <li>
                            <img src="/assets/img/erp_system/correct.png" width="30" alt="check-logo" />
                            Manufacturing</li>
                        <li>
                            <img src="/assets/img/erp_system/correct.png" width="30" alt="check-logo" />Retail & E-Commerce</li>
                        <li>
                            <img src="/assets/img/erp_system/correct.png" width="30" alt="check-logo" />Healthcare & Pharmaceuticals</li>
                        <li>
                            <img src="/assets/img/erp_system/correct.png" width="30" alt="check-logo" />Education & Academia</li>
                        <li>
                            <img src="/assets/img/erp_system/correct.png" width="30" alt="check-logo" />Financial Services & Banking</li>
                    </ul>
                </div>
                <div class="text-center wow fadeInRight col-lg-6" data-wow-delay="600ms" data-wow-duration="1500ms">
                    <img src="/assets/img/erp_system/erpSoftware.png" alt="erp software" height="500" width="500">
                </div>
            </div>
        </div>
    </section>
</asp:Content>
