<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="cms-website-design.aspx.cs" Inherits="WebApplication7.cms_website_design" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>CMS Website Design Services <%= ecity.ToString() %>| Content Management Solutions</title>
    <meta name="description" content="Explore our CMS website design services <%= ecity.ToString() %> for efficient content management. We offer top-notch CMS software solutions tailored to your needs." />
    <meta name="keywords" content="CMS <%= ecity.ToString() %>, cms website design <%= ecity.ToString() %>, content management system <%= ecity.ToString() %>, cms software <%= ecity.ToString() %>, content management <%= ecity.ToString() %>" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="web-app-about" class="web-app-about-section my-6">
        <h1 class="text-center font-weight-bold top-text text-cms-website">CMS Website Design Services by Softcron</h1>
        <p class="text-center slogan font-weight-bold">Empower Dynamic Content</p>
        <div class="container mt-5">
            <div class="web-app-about-text-img  web-app-about-left-img my-6">
                <div class="row align-items-center align-content-center justify-content-between my-7">
                    <div class="col-lg-6">
                        <div class="web-app-about-text web-app-headline">
                            <div class="web-app-section-title web-app-headline wow fadeFromUp" data-wow-delay="300ms" data-wow-duration="1000ms">
                                <div class="web-app-about-txt-content wow fadeFromLeft content d-flex align-items-center justify-content-center" data-wow-delay="600ms" data-wow-duration="1000ms">
                                    <p class="header-line">
                                        At Softcron, we specialize in creating stunning and functional
                                      websites using Content Management Systems (CMS). Our team of experts
                                      combines creativity, technical expertise, and user-centric design to
                                      deliver exceptional results. Whether you’re a small business, an
                                      entrepreneur, or an established enterprise, our CMS website design
                                      services <%= ecity.ToString() %> cater to your unique needs.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 wow fadeFromRight" data-wow-delay="300ms" data-wow-duration="1000ms">
                        <img src="/assets/img/cms-website-design/cms-website-design.png" class="seamInte" width="400" alt="cms-website-design">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="it-nw-feature" class="it-nw-feature-section position-relative">
        <div class="it-nw-side-bg text-center position-absolute">
            <%--<img src="/assets/img/side-line.webp" alt="Seo">--%>
        </div>
        <div class="container">
            <div class="it-nw-section-title headline txt-cms-website pera-content text-center middle-align wow fadeInUp" data-wow-delay="100ms" data-wow-duration="1500ms">
                <h2>Why Choose Our CMS Website Design Services<%--<%=ecity.ToString()%>--%></h2>
            </div>
            <div class="it-nw-feature-content">
                <div class="row justify-content-center">
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="400ms" data-wow-duration="1500ms">
                        <div class="it-nw-feature-innerbox text-center position-relative">
                            <div class="it-nw-feature-inner-icon position-absolute d-flex justify-content-center align-items-center">
                                <i class="fa fa-solid fa-people-arrows" aria-hidden="true"></i>
                            </div>
                            <div class="it-nw-feature-inner-text headline pera-content box1">
                                <h3>Tailored Solution</h3>
                                <p class="content">
                                    We understand that every business is different. Our CMS solutions <%= ecity.ToString() %> are
                                    customized to align with your brand identity, business goals, and
                                    target audience.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
                        <div class="it-nw-feature-innerbox text-center position-relative">
                            <div class="it-nw-feature-inner-icon position-absolute d-flex justify-content-center align-items-center">
                                <i class="fa fa-brands fa-figma" aria-hidden="true"></i>
                            </div>
                            <div class="it-nw-feature-inner-text headline pera-content box">
                                <div class="it-nw-feature-inner-text headline pera-content box1">
                                    <h3>User-Friendly Interfaces</h3>
                                    <p class="content">
                                        Say goodbye to complex coding! With our CMS websites <%= ecity.ToString() %>, you can easily
                                          manage content, update pages, and add new features—all through an
                                          intuitive interface.
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
                                    <h3>Responsive Design</h3>
                                    <p class="content">
                                        Your website will look great on any device—desktop, tablet, or mobile.
                                         We prioritize responsive design to enhance user experience.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="400ms" data-wow-duration="1500ms">
                        <div class="it-nw-feature-innerbox text-center position-relative">
                            <div class="it-nw-feature-inner-icon position-absolute d-flex justify-content-center align-items-center">
                                <i class="fa fa-brands fa-searchengin" aria-hidden="true"></i>
                            </div>
                            <div class="it-nw-feature-inner-text headline pera-content box">
                                <div class="it-nw-feature-inner-text headline pera-content box1">
                                    <h3>SEO Optimization</h3>
                                    <p class="content">
                                        We optimize your CMS website for search engines, ensuring better
                                          visibility and higher rankings.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section id="web-app-banner">
        <div class="container card-parent d-flex justify-content-center align-items-center">
            <h2 class="font-weight-bold  text-center  wow fadeFromUp content " data-wow-delay="100ms" data-wow-duration="1000ms">
                <img src="/assets/img/cms-website-design/include.png" width="40" alt="cms-webisite-design" />
                Our CMS Services Include
                <img src="/assets/img/cms-website-design/include.png" width="40" alt="cms-webisite-design" />
            </h2>
            <div class="row d-flex mt-4 justify-content-center align-content-center  wow fadeFromUp content " data-wow-delay="100ms" data-wow-duration="1000ms">
                <div class="card  mx-1">
                    <img src="/assets/img/erp_system/solution.png" width="50" alt="logo" />
                    <h4 class="text-left">Custom Design and Development</h4>
                    <p>
                        Unique and visually appealing website design 
                        Custom themes and templates tailored to your brand.
                    </p>
                </div>
                <div class="card mx-1">
                    <img src="/assets/img/erp_system/client.png" width="50" alt="logo" />
                    <h4 class="text-left">Content Creation and  management</h4>
                    <p>
                        Efficient content organization allows for easy content updates, including effortless addition, editing, or deletion of web pages
                    </p>
                </div>
                <div class="card mx-1">
                    <img src="/assets/img/erp_system/team.png" width="50" alt="logo" />
                    <h4 class="text-left">E-Commerce Integration</h4>
                    <p>
                        Integrate e-commerce features into your CMS website, including catalog setup, payment gateways, and transactions
                    </p>
                </div>
                <div class=" card mx-1">
                    <img src="/assets/img/erp_system/support.png" width="50" alt="logo" />
                    <h4 class="text-left">Security and Maintenance</h4>
                    <p>
                        Regular updates, backups , and security enhancements.
                        Monitoring and performance optimization.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <section id="web-app-about" class="web-app-about-section mt-5">
        <h1 class="text-center font-weight-bold top-text txt-cms-website-design">Our Approach to CMS Website Design</h1>
        <div class="container mt-5">
            <div class="web-app-about-text-img  web-app-about-left-img">
                <div class="row align-items-center align-content-center justify-content-center p-3">
                    <div class="col-lg-6">
                        <div class="web-app-about-text web-app-headline">
                            <div class="web-app-section-title web-app-headline wow fadeFromLeft" data-wow-delay="300ms" data-wow-duration="1000ms">
                                <div class="web-app-about-txt-content wow fadeFromLeft content d-flex align-items-center justify-content-center" data-wow-delay="600ms" data-wow-duration="1000ms">
                                    <p class="header-line">
                                        At Softcron, we strongly believe in adopting a comprehensive and holistic approach to CMS website design. Our dedicated team of experts consistently strives to create exceptional and user-centric digital experiences for our valued clients, ensuring their satisfaction and success.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 wow fadeFromRight" data-wow-delay="300ms" data-wow-duration="1000ms">
                        <img src="/assets/img/cms-website-design/approach.png" class="seamInte" height="450" width="450" alt="cms-website-design">
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section id="it-nw-feature" class="it-nw-feature-section position-relative">
        <div class="container">
            <div class="it-nw-feature-content">
                <div class="row justify-content-center">
                    <div class="col-lg-6 col-md-6 wow fadeInUp " data-wow-delay="0ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 0ms; animation-name: fadeInUp;">
                        <div class="it-nw-feature-innerbox text-center position-relative">
                            <div class="it-nw-feature-inner-icon position-absolute d-flex justify-content-center align-items-center">
                                <i class="fa-solid fa-chess-knight" aria-hidden="true"></i>
                            </div>
                            <div class="it-nw-feature-inner-text headline pera-content">

                                <h3>Discovery and Strategy</h3>

                                <p class="content">
                                    We start by understanding your business objectives, target
                                    audience, and industry landscape.
                                    Our team collaborates with you to define the project scope,
                                    goals, and success metrics.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="200ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 200ms; animation-name: fadeInUp;">
                        <div class="it-nw-feature-innerbox text-center position-relative">
                            <div class="it-nw-feature-inner-icon position-absolute d-flex justify-content-center align-items-center">
                                <i class="fa-solid fa-user" aria-hidden="true"></i>
                            </div>
                            <div class="it-nw-feature-inner-text headline pera-content">
                                <h3>User Research and Persona Development</h3>

                                <p class="content">
                                    Who are your users? What are their pain points and needs?
                                    We conduct user research and create detailed personas to guide
                                    our design decisions.
                                </p>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="400ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 400ms; animation-name: fadeInUp;">
                        <div class="it-nw-feature-innerbox text-center position-relative">
                            <div class="it-nw-feature-inner-icon position-absolute d-flex justify-content-center align-items-center">
                                <i class="fa-solid fa-network-wired" aria-hidden="true"></i>
                            </div>
                            <div class="it-nw-feature-inner-text headline pera-content">
                                <h3>Wireframing and Prototyping</h3>
                                <p class="content">
                                    Before diving into visual design, we create wireframes and
                                    interactive prototypes.
                                    This step ensures that the website’s structure and functionality
                                    align with user expectations.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="400ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 400ms; animation-name: fadeInUp;">
                        <div class="it-nw-feature-innerbox text-center position-relative">
                            <div class="it-nw-feature-inner-icon position-absolute d-flex justify-content-center align-items-center">
                                <i class="fa-brands fa-sketch" aria-hidden="true"></i>
                            </div>
                            <div class="it-nw-feature-inner-text headline pera-content">
                                <h3>Visual Design and Brand Integration </h3>
                                <p class="content">
                                    Our designers work closely with your brand guidelines to create
                                    a cohesive look.
                                    We focus on typography, color schemes, imagery, and iconography
                                    to reinforce your brand identity.
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="400ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 400ms; animation-name: fadeInUp;">
                        <div class="it-nw-feature-innerbox text-center position-relative">
                            <div class="it-nw-feature-inner-icon position-absolute d-flex justify-content-center align-items-center">
                                <i class="fa-solid fa-forward-fast" aria-hidden="true"></i>
                            </div>
                            <div class="it-nw-feature-inner-text headline pera-content">
                                <h3>Content Strategy SEO Integration</h3>
                                <p class="content">
                                    Content is king! We help you plan, create, and optimize content
                                    for your CMS website.
                                    From keyword research to meta tags, we ensure your content ranks
                                    well on search engines.
                                </p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
</asp:Content>
