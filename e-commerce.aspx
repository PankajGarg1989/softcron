<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="e-commerce.aspx.cs" Inherits="WebApplication7.e_commerce" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>"E-commerce Solutions <%= ecity.ToString() %> | E-commerce Website Designing Services</title>
    <meta name="description" content="Discover comprehensive e-commerce solutions for your business needs <%= ecity.ToString() %>. Expert e-commerce website design services to boost your online presence." />
    <meta name="keywords" content="E-commerce Solution <%= ecity.ToString() %>, e-commerce designing<%= ecity.ToString() %>, e-commerce <%= ecity.ToString() %>, e-commerce website <%= ecity.ToString() %>, ecommerce business <%= ecity.ToString() %>" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="crm-banner-section position-relative text-left mt-45">
        <div class="container">
            <div class="sec-title-inner pb--50">

                <h2>E-commerce Solution by Softcron <%= ecity.ToString() %></h2>
            </div>

            <div class="row align-items-center align-content-center pb--50">
                <div class="col-lg-6 col-sm-12 order-md-first order-last">
                    <div class="text-center">
                        <img src="/assets/img/ecommerce/ecommerce-design.png" alt="e-commerce-solution">
                    </div>
                </div>
                <div class="col-lg-6 col-sm-12">
                    <div class="sec-title-inner txt-e-commerce">
                        <h2 class="text-left">E-commerce Website Designing <%= ecity.ToString() %></h2>
                    </div>
                    <div>
                        <p class="text-justify">
                            At Softcron, we specialize in providing robust and scalable E-commerce
                          solutions <%= ecity.ToString() %>.In addition to helping businesses reach a broader audience
                          online, we offer tailored solutions that are customized to each
                          company's needs.
                        </p>
                        <a class="comment-reply mt-4" href="/contact-us"><span>Get Quote</span></a>

                    </div>
                </div>
            </div>
        </div>
    </section>


    <section id="it-nw-feature" class="it-nw-feature-section position-relative mt--10">
        <%--    <div class="it-nw-side-bg text-center position-absolute">
            <%--<img src="/assets/img/side-line.webp" alt="Seo">--%>
        <div class="container">
            <div class="txt-e-commerces it-nw-section-title headline pera-content text-center middle-align wow fadeInUp" data-wow-delay="100ms" data-wow-duration="1500ms">
                <h2>Our E-commerce solutions <%= ecity.ToString() %> come with a lots of features<%--<%=ecity.ToString()%>--%></h2>
            </div>
            <div class="it-nw-feature-content">
                <div class="row justify-content-center">
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="400ms" data-wow-duration="1500ms">
                        <div class="it-nw-feature-innerbox text-center position-relative">
                            <div class="it-nw-feature-inner-icon position-absolute d-flex justify-content-center align-items-center">
                                <i class="fa fa-solid fa-people-arrows" aria-hidden="true"></i>
                            </div>
                            <div class="it-nw-feature-inner-text headline pera-content box1">
                                <h3>User-Friendly Design</h3>
                                <p class="content">
                                    We believe in creating E-commerce platforms that are easy to
                                    navigate, ensuring a seamless shopping experience for your
                                    customers.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
                        <div class="it-nw-feature-innerbox text-center position-relative">
                            <div class="it-nw-feature-inner-icon position-absolute d-flex justify-content-center align-items-center">
                                <i class="fa-solid fa-money-check-dollar"></i>
                            </div>
                            <div class="it-nw-feature-inner-text headline pera-content box">
                                <div class="it-nw-feature-inner-text headline pera-content box1">
                                    <h3>Secure Payment Gateway</h3>
                                    <p class="content">
                                        We integrate multiple secure payment gateways, providing your
                                        customers with a variety of payment options and ensuring their
                                        transactions are safe and secure.
                                    </p>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="200ms" data-wow-duration="1500ms">
                        <div class="it-nw-feature-innerbox text-center position-relative">
                            <div class="it-nw-feature-inner-icon position-absolute d-flex justify-content-center align-items-center">
                                <i class="fa-solid fa-warehouse" aria-hidden="true"></i>
                            </div>
                            <div class="it-nw-feature-inner-text headline pera-content box1">
                                <div class="it-nw-feature-inner-text headline pera-content box1">
                                    <h3>Inventory Management</h3>
                                    <p class="content">
                                        Our E-commerce solutions feature an intuitive inventory management system, allowing you to manage products and track stock levels effortlessly.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="400ms" data-wow-duration="1500ms">
                        <div class="it-nw-feature-innerbox text-center position-relative">
                            <div class="it-nw-feature-inner-icon position-absolute d-flex justify-content-center align-items-center">
                                <i class="fa-solid fa-headset" aria-hidden="true"></i>
                            </div>
                            <div class="it-nw-feature-inner-text headline pera-content box">
                                <div class="it-nw-feature-inner-text headline pera-content box1">
                                    <h3>Customer Support</h3>
                                    <p class="content">
                                        We offer unparalleled customer support to ensure your online store is always up and running smoothly without any interruptions or hiccups.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="it-nw-feature" class="it-nw-feature-section position-relative">
        <div class="container">
            <h2 class="top-text text-center">Why Choose Softcron</h2>
            <p class="top-text text-center">
                When it comes to E-commerce solution, there are several reasons why
                 Softcron stands out
            </p>
            <div class="it-nw-feature-content">
                <div class="row justify-content-center">
                    <div class="col-lg-6 col-md-6 wow fadeInUp " data-wow-delay="0ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 0ms; animation-name: fadeInUp;">
                        <div class="it-nw-feature-innerbox text-center position-relative">
                            <div class="it-nw-feature-inner-icon position-absolute d-flex justify-content-center align-items-center">
                                <i class="fa-solid fa-chess-knight" aria-hidden="true"></i>
                            </div>
                            <div class="it-nw-feature-inner-text headline pera-content">
                                <h3>Experience and Expertise</h3>
                                <p class="content">
                                    With years of experience in the industry, we have the expertise to
                                    deliver high-quality E-commerce solutions that meet your specific
                                    needs.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="200ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 200ms; animation-name: fadeInUp;">
                        <div class="it-nw-feature-innerbox text-center position-relative">
                            <div class="it-nw-feature-inner-icon position-absolute d-flex justify-content-center align-items-center">
                                <i class="fa-solid fa-flask" aria-hidden="true"></i>
                            </div>
                            <div class="it-nw-feature-inner-text headline pera-content">
                                <h3>Custom Solutions</h3>
                                <p class="content">
                                    We understand that every business is unique. That’s why we offer
                                      custom E-commerce solutions tailored to your business requirements.
                                </p>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="400ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 400ms; animation-name: fadeInUp;">
                        <div class="it-nw-feature-innerbox text-center position-relative">
                            <div class="it-nw-feature-inner-icon position-absolute d-flex justify-content-center align-items-center">
                                <i class="fa-solid fa-face-grin-stars" aria-hidden="true"></i>
                            </div>
                            <div class="it-nw-feature-inner-text headline pera-content">
                                <h3>Quality Assurance</h3>
                                <p class="content">
                                    We are committed to delivering top-notch services. Our Solutions
                                    undergo rigorous quality checks to ensure they meet the highest
                                    standards.
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
                                <h3>Customer Satisfaction </h3>
                                <p class="content">
                                    At Softcron, customer satisfaction is our top priority. We strive to
                                          exceed our client's expectations with our services.
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="400ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 400ms; animation-name: fadeInUp;">
                        <div class="it-nw-feature-innerbox text-center position-relative">
                            <div class="it-nw-feature-inner-icon position-absolute d-flex justify-content-center align-items-center">
                                <i class="fa-solid fa-phone-volume" aria-hidden="true"></i>
                            </div>
                            <div class="it-nw-feature-inner-text headline pera-content">
                                <h3>Ongoing Support</h3>
                                <p class="content">
                                    We provide ongoing support and maintenance services to ensure your
                                    E-commerce platform runs smoothly and efficiently.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="400ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 400ms; animation-name: fadeInUp;">
                        <div class="it-nw-feature-innerbox text-center position-relative">
                            <div class="it-nw-feature-inner-icon position-absolute d-flex justify-content-center align-items-center">
                                <i class="fa-solid fa-hand-holding-dollar" aria-hidden="true"></i>
                            </div>
                            <div class="it-nw-feature-inner-text headline pera-content">
                                <h3>Competitive Pricing</h3>
                                <p class="content">
                                    We offer our high-quality services <%= ecity.ToString() %> at competitive prices, providing
                                    you with value for your money.
                                </p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>

    <section id="web-app-banner">
        <div class="container card-parent d-flex justify-content-center align-items-center ">
            <h2 class="font-weight-bold mb-3  text-center  wow fadeInUp" data-wow-delay="600ms" data-wow-duration="1500ms">
                <img src="/assets/img/ecommerce/service.png" width="40" alt="cms-webisite-design" />
                Our E-commerce Services
             <img src="/assets/img/ecommerce/service.png" width="40" alt="cms-webisite-design" />
            </h2>
            <div class="eComm row mt-4 justify-content-center align-content-center  wow fadeInUp" data-wow-delay="600ms" data-wow-duration="1500ms">
                <div class="card  mx-1">
                    <img src="/assets/img/ecommerce/custom-development.png" width="50" alt="logo" />
                    <h4>Custom E-commerce Website Design</h4>
                    <p class="text-justify">
                        We desgin and develop custom E-commerce websites that reflect your
                         brand and meet your business needs.
                    </p>
                </div>
                <div class="card mx-1">
                    <img src="/assets/img/ecommerce/shopping-cart.png" width="50" alt="logo" />
                    <h4>Shopping Cart Development</h4>
                    <p class="text-justify">
                        We provide shopping cart solutions that are easy to use and manage,
                       ensuring a smooth checkout process for your customers.
                    </p>
                </div>
                <div class="card mx-1">
                    <img src="/assets/img/ecommerce/payment-gateway.png" width="50" alt="logo" />
                    <h4>Payment Gateway Integration</h4>
                    <p class="text-justify">
                        We integrate reliable and secure payment gateways into your
                        E-commerce website, providing your customers with a variety of
                        payment options.
                    </p>
                </div>
                <div class=" card mx-1">
                    <img src="/assets/img/erp_system/support.png" width="50" alt="logo" />
                    <h4>E-commerce Care & Support</h4>
                    <p class="text-justify">
                        We offer ongoing maintenance and support services to ensure your
                        E-commerce website is always up-to-date and running smoothly.
                    </p>
                </div>
            </div>

        </div>

    </section>

</asp:Content>
