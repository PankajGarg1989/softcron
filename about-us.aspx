<%@ Page Language="C#" Title="About | Digital marketing Agency | Web Development Services" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="about-us.aspx.cs"
    Inherits="WebApplication7.about_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<title>About us | Web Development and Digital Marketing Company</title>
    <meta name="description" content="Softcron Technology - Best digital marketing, web design & SEO services in India for optimal business growth" />
    <meta name="keywords" content="Best Digital Marketing Agency,Web Designing Services,SEO Services,Top Digital Marketing Solutions,Professional Web Development,Affordable SEO Packages" />
          
    <link rel="canonical" href="https://www.softcron.com/about-us">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section id="web-app-banner" class="web-app-banner-section position-relative">

        <div class="container  py-5">
            <div class="web-app-banner-content position-relative">
                <div class="row align-items-center align-content-center">

                    <div class="col-lg-6 py-2 order-md-first order-last">
                        <div class="web-app-banner-text web-app-headline ">
                          <h1>Empower Your Business with Our <span>Boost</span>astic Solutions!</h1>
                            <p>Unleash Your Potential with the Best Digital Marketing Agency, Expert Web Designing Services, and SEO Packages that Deliver Top-notch Results at Affordable Rates!</p>
                            <p class="content">
                                Softcron Technology is India's Leading Digital Marketing Agency, offering the Best Digital Marketing Agency services that empower businesses to thrive online. Our integrated strategies, which include effective Web Designing Services and result-driven SEO Services, deliver exceptional results. As a Professional Web Development company, we specialize in providing Top Digital Marketing Solutions to meet your specific needs. Trust us for unparalleled growth and explore our Affordable SEO Packages tailored to drive success for your business.
                            </p>


                        </div>
                    </div>
                    <div class="col-lg-6 py-2 ">
                        <div class="text-center wow fadeInRight" data-wow-delay="600ms" data-wow-duration="1500ms">
                          <%-- image 1 --%>
                            <img src="/assets/img/d-agency/slider/BestDigitalMarketingAgency.webp" height="356" width="570" alt="Best-DigitalMarketing-Agency">
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>






    <section id="str-about" class="str-about-section position-relative">
        <div class="container">
            <div class="str-about-content">
                <div class="row ems-center align-content-center">
                    <div class="col-lg-7">
                        <div class="str-about-img position-relative wow fadeFromLeft aboutDevelopment " data-wow-delay="300ms" data-wow-duration="1500ms">
                            <div class="str-about-shape">
                                <%--<img src="/assets/img/d-agency/shape/abs.webp" alt="About_us">--%>
                            </div>
                            <div class="str-about-img-field">
                                <div class="str-about-pic">
                                    <%-- image 2 --%>
                                    <img src="/assets/img/d-agency/about/WebDesigningServices.webp" height="300" width="300" alt="WebDesigning-Services">
                                </div>
                                <div class="str-progress-area str-headline">
                                    <h3>Development</h3>
                                    <div id="progress1" class="barfiller">
                                        <div class="tipWrap aboutUsDev" ><span class="tip aboutUsDev2">75%</span></div>
                                        <span class="fill aboutUsDev3" data-percentage="75"></span>
                                    </div>
                                    <h3>UI/UX </h3>
                                    <div id="progress2" class="barfiller">
                                        <div class="tipWrap uiUx1" ><span class="tip uiUx2" >70%</span></div>
                                        <span class="fill uiUx3" data-percentage="70"></span>
                                    </div>
                                    <h3>Digital Marketing</h3>
                                    <div id="progress3" class="barfiller">
                                        <div class="tipWrap digitalMarketing" ><span class="tip digitalMarketing2" >90%</span></div>
                                        <span class="fill digitalmarketing3" data-percentage="90"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="str-about-img-field">
                                <div class="str-about-pic">
                                    <%-- image 3 --%>
                                    <img src="/assets/img/d-agency/about/SEOServices.webp" height="263" width="300" alt="SEO-Services">
                                </div>
                                <div class="str-about-pic">
                                    <%-- image 4 --%>
                                    <img src="/assets/img/d-agency/about/TopDigitalMarketingSolutions.webp" height="183" width="300" alt="Top-DigitalMarketing-Solutions">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="str-about-text wow fadeFromRight SuccessHub" data-wow-delay="0ms" data-wow-duration="1500ms" >
                            <div class="str-section-title text-left str-title-left str-headline">
                                <span class="str-title-tag">About us</span>
                                <h2>Unlock Success with Our Unbeatable Services</h2>
                            </div>
                            <div class="str-about-textarea">

                                <p class="content">
                                    As India's top digital marketing expert, we specialize in helping organizations maximize their online presence and significance through effective internet promotion strategies. Our Web Designing Services ensure visually appealing and user-friendly websites, while our SEO Services drive organic traffic and improve search engine rankings. With our Professional Web Development solutions and Top Digital Marketing Solutions, businesses experience accelerated growth and enhanced brand visibility. Partner with us and take advantage of our Affordable SEO Packages designed to deliver exceptional results.
                                </p>

                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

  <%--  <section id="dia-team" class="dia-team-section">
        <div class="container">
            <div class="dia-section-title text-center text-capitalize pera-content dia-headline">
               <span>Meet Our Experts</span>
                <h2>India's Premier Digital Marketing and Web Development Company</h2>
                    
                <p>Softcron: Your Trusted Digital Marketing Agency in India, delivering unmatched services without the overhead of in-house hiring.</p>



            </div>
            <div id="dia-team-slide" class="dia-team-content owl-carousel">
                <div class="dia-team-pic-text wow fadeFromLeft" data-wow-delay="300ms" data-wow-duration="1500ms">
                    <div class="dia-team-img position-relative">
                        <div class="team-mem-img-ei text-center position-relative">
                            <img src="/assets/img/team/pankaj_garg.webp" height="233" width="236" alt="Pankaj Garg">
                            <span class="mshape-bg shape-bg1">
                                <img src="/assets/img/d-agency/team/msbg1.webp" height="165" width="236" alt="About_us"></span>
                            <span class="mshape-bg shape-bg2">
                                <img src="/assets/img/d-agency/team/msbg2.webp" height="319" width="236" alt="About_us"></span>
                        </div>
                        <div class="dia-team-social">
                            <a href="#" aria-label="facebook"><i class="fab fa-facebook-f "></i></a>
                            <a href="#" aria-label="behance"><i class="fab fa-behance"></i></a>
                            <a href="#" aria-label="linkedin"><i class="fab fa-linkedin"></i></a>
                            <a href="#" aria-label="behance"><i class="fab fa-twitter"></i></a>
                        </div>
                    </div>
                    <div class="dia-team-text dia-headline text-center pera-content">
                        <h3><a href="#">Pankaj Garg</a></h3>
                    </div>
                </div>
                <div class="dia-team-pic-text wow fadeFromLeft" data-wow-delay="600ms" data-wow-duration="1500ms">
                    <div class="dia-team-img position-relative">
                        <div class="team-mem-img-ei text-center position-relative">
                          
                            <img src="/assets/img/team/mayank_gupta.webp" height="274" width="236" alt="Mayank Gupta">
                            <span class="mshape-bg shape-bg1">
                                <img src="/assets/img/d-agency/team/msbg1.webp" height="165" width="236" alt="About_us"></span>
                            <span class="mshape-bg shape-bg2">
                                <img src="/assets/img/d-agency/team/msbg2.webp" height="319" width="236" alt="About_us"></span>
                        </div>
                        <div class="dia-team-social">
                            <a href="#" aria-label="facebook"><i class="fab fa-facebook-f "></i></a>
                            <a href="#" aria-label="behance"><i class="fab fa-behance"></i></a>
                            <a href="#" aria-label="linkedin"><i class="fab fa-linkedin"></i></a>
                            <a href="#" aria-label="twitter"><i class="fab fa-twitter"></i></a>
                        </div>
                    </div>
                    <div class="dia-team-text dia-headline text-center pera-content">
                        <h3><a href="#">Mayank Gupta</a></h3>
                    </div>
                </div>
               

                <div class="dia-team-pic-text wow fadeFromLeft" data-wow-delay="300ms" data-wow-duration="1500ms">
                    <div class="dia-team-img position-relative">
                        <div class="team-mem-img-ei text-center position-relative">
                            <img src="/assets/img/team/anju.webp" height="236" width="236" alt="Anju">
                            <span class="mshape-bg shape-bg1">
                                <img src="/assets/img/d-agency/team/msbg1.webp" height="165" width="236" alt="About_us"></span>
                            <span class="mshape-bg shape-bg2">
                                <img src="/assets/img/d-agency/team/msbg2.webp" height="319" width="236" alt="About_us"></span>
                        </div>
                        <div class="dia-team-social">
                            <a href="#" aria-label="facebook"><i class="fab fa-facebook-f "></i></a>
                            <a href="#" aria-label="behance"><i class="fab fa-behance"></i></a>
                            <a href="#" aria-label="linkedin"><i class="fab fa-linkedin"></i></a>
                            <a href="#" aria-label="twitter"><i class="fab fa-twitter"></i></a>
                        </div>
                    </div>
                    <div class="dia-team-text dia-headline text-center pera-content">
                        <h3><a href="#">Anju K</a></h3>
                    </div>
                </div>

                <div class="dia-team-pic-text wow fadeFromLeft" data-wow-delay="300ms" data-wow-duration="1500ms">
                    <div class="dia-team-img position-relative">
                        <div class="team-mem-img-ei text-center position-relative">
                            <img src="/assets/img/team/aakash.webp" height="311" width="236" alt="Aakash">
                            <span class="mshape-bg shape-bg1">
                                <img src="/assets/img/d-agency/team/msbg1.webp" height="165" width="236" alt="About_us"></span>
                            <span class="mshape-bg shape-bg2">
                                <img src="/assets/img/d-agency/team/msbg2.webp" height="319" width="236" alt="About_us"></span>
                        </div>
                        <div class="dia-team-social">
                            <a href="#" aria-label="facebook"><i class="fab fa-facebook-f "></i></a>
                            <a href="#" aria-label="behance"><i class="fab fa-behance"></i></a>
                            <a href="#" aria-label="linkedin"><i class="fab fa-linkedin"></i></a>
                            <a href="#" aria-label="twitter"><i class="fab fa-twitter"></i></a>
                        </div>
                    </div>
                    <div class="dia-team-text dia-headline text-center pera-content">
                        <h3><a href="#">Aakash</a></h3>
                    </div>
                </div>

               

                <div class="dia-team-pic-text wow fadeFromLeft" data-wow-delay="300ms" data-wow-duration="1500ms">
                    <div class="dia-team-img position-relative">
                        <div class="team-mem-img-ei text-center position-relative">
                            <img src="/assets/img/team/rupali.webp" height="310" width="236" alt="Rupali">
                            <span class="mshape-bg shape-bg1">
                                <img src="/assets/img/d-agency/team/msbg1.webp" height="165" width="236" alt="About_us"></span>
                            <span class="mshape-bg shape-bg2">
                                <img src="/assets/img/d-agency/team/msbg2.webp" height="319" width="236" alt="About_us"></span>
                        </div>
                        <div class="dia-team-social">
                            <a href="#" aria-label="facebook"><i class="fab fa-facebook-f "></i></a>
                            <a href="#" aria-label="behance"><i class="fab fa-behance"></i></a>
                            <a href="#" aria-label="linkedin"><i class="fab fa-linkedin"></i></a>
                            <a href="#" aria-label="twitter"><i class="fab fa-twitter"></i></a>
                        </div>
                    </div>
                    <div class="dia-team-text dia-headline text-center pera-content">
                        <h3><a href="#">Rupali</a></h3>
                    </div>
                </div>

                <div class="dia-team-pic-text wow fadeFromLeft" data-wow-delay="300ms" data-wow-duration="1500ms">
                    <div class="dia-team-img position-relative">
                        <div class="team-mem-img-ei text-center position-relative">
                            <img src="/assets/img/team/sanjiv.webp" height="286" width="236" alt="Sanjiv">
                            <span class="mshape-bg shape-bg1">
                                <img src="/assets/img/d-agency/team/msbg1.webp" height="165" width="236" alt="About_us"></span>
                            <span class="mshape-bg shape-bg2">
                                <img src="/assets/img/d-agency/team/msbg2.webp" height="319" width="236" alt="About_us"></span>
                        </div>
                        <div class="dia-team-social">
                            <a href="#" aria-label="facebook"><i class="fab fa-facebook-f "></i></a>
                            <a href="#" aria-label="behance"><i class="fab fa-behance"></i></a>
                            <a href="#" aria-label="linkedin"><i class="fab fa-linkedin"></i></a>
                            <a href="#" aria-label="twitter"><i class="fab fa-twitter"></i></a>
                        </div>
                    </div>
                    <div class="dia-team-text dia-headline text-center pera-content">
                        <h3><a href="#">Sanjiv</a></h3>
                    </div>
                </div>

            </div>
        </div>
    </section>--%>


    <%--client review section  --%>
    <section id="dia-testimonial" class="dia-testimonial-section position-relative my-7">
        <div class="tst-side-shape position-absolute" data-parallax='{"y" : 50}'>
          
            <%-- image 5 --%>
            <img src="/assets/img/d-agency/shape/ProfessionalWebDevelopment.webp" height="463" width="244" alt="Professional-WebDevelopment">
        </div>
        <div class="container">
            <div class="dia-section-title text-center text-capitalize dia-headline">
                <span>Hear from Our Delighted Clients</span>
                <h2>Witness the Rave Reviews of Our Work Satisfaction.</h2>
            </div>
            <div class="dia-testimonial_slider-area position-relative">
                <div class="test-shape1 position-absolute wow fadeFromRight" data-wow-delay="300ms" data-wow-duration="1500ms">
                   
                    <%--image 6  --%>
                    <img src="/assets/img/d-agency/shape/AffordableSEOPackages.webp" height="456" width="439" alt="About_us">
                </div>
                <div class="test-shape2 position-absolute wow fadeFromLeft" data-wow-delay="300ms" data-wow-duration="1500ms">
                    
                    
                    <%-- image 7 --%>
                    <img src="/assets/img/d-agency/shape/WebDevelopmentExpertise.webp" height="456" width="439" alt="About_us">


                </div>
                <div id="dia-testimonial_slide" class="carousel slide" data-ride="carousel">
                    <div class="dia-testimonial_indicator relative-position">
                        <ol class="carousel-indicators">
                            <li data-target="#dia-testimonial_slide" data-slide-to="0" class="active">
                                
                                <%-- image 8 --%>
                                <img src="/assets/img/client/sanjeev_kumar.webp" height="76" width="76" alt="About_us">
                            </li>
                            <li data-target="#dia-testimonial_slide" data-slide-to="1">
                                <img src="/assets/img/client/hitesh_narang.webp" height="76" width="76" alt="About_us">
                            </li>
                            <li data-target="#dia-testimonial_slide" data-slide-to="2">
                                <img src="/assets/img/client/abhisek_bansal.webp" height="76" width="76" alt="About_us">
                            </li>

                        </ol>
                    </div>
                    <div class="carousel_preview">
                        <div class="carousel-inner relative-position">
                            <div class="carousel-item active">
                                <div class="dia-testimonial_content">
                                    <div class="dia-testimonial_rating ul-li">
                                        <ul>
                                            <li><i class="fas fa-star"></i></li>
                                            <li><i class="fas fa-star"></i></li>
                                            <li><i class="fas fa-star"></i></li>
                                            <li><i class="fas fa-star"></i></li>
                                            <li><i class="fas fa-star"></i></li>
                                        </ul>
                                    </div>
                                    <div class="dia-testimonial_text relative-position pera-content dia-headline">
                                        <p class="content">
                                            Softcron Technology has truly exceeded our expectations by transforming our company's idea into a website that perfectly aligns with our niche requirements. Their team's technical prowess and creativity are commendable. Without a doubt, I wholeheartedly recommend them for their exceptional services.
                                        </p>
                                    </div>
                                    <div class="dia-testimonial_name_designation">
                                        <div class="dia-testimonial_meta dia-headline pera-content">
                                            <h3>Sanjeev Kumar</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /slide item -->
                            <div class="carousel-item">
                                <div class="dia-testimonial_content">
                                    <div class="dia-testimonial_rating ul-li">
                                        <ul>
                                            <li><i class="fas fa-star"></i></li>
                                            <li><i class="fas fa-star"></i></li>
                                            <li><i class="fas fa-star"></i></li>
                                            <li><i class="fas fa-star"></i></li>
                                            <li><i class="fas fa-star"></i></li>
                                        </ul>
                                    </div>
                                    <div class="dia-testimonial_text relative-position pera-content dia-headline">
                                        <p class="content">
                                            Empower your team with the ability to effortlessly create, send, and track documents within an approval system that seamlessly caters to everyone's needs. With SaaSio, your workflow becomes a streamlined advantage, enabling you to quickly manage and track essential documents. From swift document creation to efficient approval processes, SaaSio works tirelessly for your benefit.
                                        </p>

                                    </div>
                                    <div class="dia-testimonial_name_designation">
                                        <div class="dia-testimonial_meta dia-headline pera-content">
                                            <h3>Hitesh Narang</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /slide item -->
                            <div class="carousel-item">
                                <div class="dia-testimonial_content">
                                    <div class="dia-testimonial_rating ul-li">
                                        <ul>
                                            <li><i class="fas fa-star"></i></li>
                                            <li><i class="fas fa-star"></i></li>
                                            <li><i class="fas fa-star"></i></li>
                                            <li><i class="fas fa-star"></i></li>
                                            <li><i class="fas fa-star"></i></li>
                                        </ul>
                                    </div>
                                    <div class="dia-testimonial_text relative-position pera-content dia-headline">
                                        <p class="content">
                                            Exceptional work!!! The team demonstrated remarkable solidity, efficiency, and expertise. I am thrilled and will undoubtedly engage them again. Thank you for delivering such outstanding results!
                                        </p>
                                    </div>
                                    <div class="dia-testimonial_name_designation">
                                        <div class="dia-testimonial_meta dia-headline pera-content">
                                            <h3>Abhishek Bansal</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /slide item -->
                        </div>
                    </div>
                    <div class="dia-testimonial_indicator-dot">
                        <ol class="carousel-indicators2">
                            <li data-target="#dia-testimonial_slide" data-slide-to="0" class="active"></li>
                            <li data-target="#dia-testimonial_slide" data-slide-to="1"></li>
                            <li data-target="#dia-testimonial_slide" data-slide-to="2"></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
