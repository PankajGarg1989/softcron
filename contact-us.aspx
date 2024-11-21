<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="contact-us.aspx.cs" Inherits="WebApplication7.contact__us" %>

<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Contact Page | Softcron</title>
    <link rel="canonical" href="https://www.softcron.com/contact-us">
    <style>
        #call img, #whatsapp img {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="mt-51">
        <div class="saas_two_section_title saas2-headline text-center mb-3">
            <h1 class="title_tag mt-5">We're all ears</h1>
        </div>
        <%--parent--%>
        <div class="container d-flex align-items-center justify-content-between">
            <div class="row">
                <%--FIRST--%>
                <div class=" col-md-6">
                    <section id="sa-contact-inner" class="sa-contact-inner-section inner-page-padding">
                        <div class="container">
                            <div class="sa-contact-inner-form">
                                <asp:Panel ID="submitpanel" runat="server">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <asp:TextBox ID="TextBox_name" runat="server" placeholder="Your Full Name *" required=""></asp:TextBox>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:TextBox ID="TextBox_email" runat="server" placeholder="Your Email Address *" required=""></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="remail" runat="server" ControlToValidate="TextBox_email" ErrorMessage="Please Enter a valid email" ForeColor="red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Group2" Display="Dynamic"></asp:RegularExpressionValidator>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:TextBox ID="TextBox_mobile" runat="server" placeholder="Enter Mobile No. With Country Code" required=""></asp:TextBox>
                                            <asp:RegularExpressionValidator runat="server" ID="rexNumber" ControlToValidate="TextBox_mobile" ValidationExpression="^[0-9\+]*$" ForeColor="red" ErrorMessage="Please enter a valid number!" ValidationGroup="Group2" Display="Dynamic" />
                                        </div>
                                        <div class="col-md-6">
                                            <asp:DropDownList ID="option" class="dropdown" runat="server" AutoPostBack="false" required="">
                                                <asp:ListItem Text="Select option" Selected="True" disabled="" Value=""></asp:ListItem>
                                                <asp:ListItem Text="Inquiry" Value="Inquiry"></asp:ListItem>
                                                <asp:ListItem Text="Demo" Value="Demo"></asp:ListItem>
                                                <asp:ListItem Text="Quote" Value="Quote"></asp:ListItem>
                                                <asp:ListItem Text="Others" Value="Others"></asp:ListItem>

                                            </asp:DropDownList>
                                        </div>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="TextBox_word" class="txt_word" runat="server" TextMode="MultiLine" placeholder="Your Valuable Word"></asp:TextBox>

                                        </div>
                                        <div class="col-md-6">
                                            <div class="sa-refresh-inner-form">
                                                <table border="0" cellpadding="3" cellspacing="0">

                                                    <tr>
                                                        <td colspan="2">
                                                            <cap:CaptchaControl ID="Captcha1" runat="server" CaptchaBackgroundNoise="Low" CaptchaLength="5"
                                                                CaptchaHeight="60" CaptchaWidth="200" CaptchaMinTimeout="5" CaptchaMaxTimeout="240"
                                                                FontColor="#D20B0C" NoiseColor="#B1B1B1" Width="200px" />
                                                        </td>
                                                        <td>
                                                            <asp:ImageButton ImageUrl="/assets/img/refresh.webp" AlternateText="refresh Icon" runat="server" CausesValidation="false" ImageAlign="Left" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3">
                                                            <asp:TextBox ID="txtCaptcha" runat="server" placeholder="Enter captcha Code here *"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:CustomValidator ErrorMessage="Invalid. Please try again."
                                                                runat="server" />
                                                        </td>

                                                    </tr>
                                                </table>

                                            </div>
                                        </div>
                                        <div class="sa-contact-inner-btn text-center  ">
                                            <asp:Button ID="Button_submit" class="comment-reply" Width="150px" OnClick="Button_submit_Click" runat="server" Text="Submit" ValidationGroup="Group2" />
                                        </div>

                                    </div>
                                </asp:Panel>
                            </div>
                        </div>
                    </section>

                </div>
                <div class="col-md-6 d-flex">
                    <div class="col-lg-12 padding-4-rem-lr">
                        <div class="text-area">
                            <div class="sections">
                                <h4>Delhi Office</h4>
                                <div>
                                    <strong>
                                        <img class="mr-2" src="/assets/img/address.png" width="16" />
                                        Address: </strong>NS 21, Mianwali Nagar, Paschim Vihar, Delhi, 110087
                                </div>
                                <div>
                                    <strong>
                                        <img class="mr-2" src="/assets/img/phone-call.png" width="16" />
                                        Phone: </strong>+9190448-93448
                                </div>
                                <div>
                                    <strong>
                                        <img class="mr-2" src="/assets/img/mail.png" width="16" />Mail: </strong><a href="mailto:sales@softcron.com">sales@softcron.com</a>
                                </div>
                                <div>
                                    <strong>
                                        <img class="mr-2" src="/assets/img/site.png" width="16" />Site: </strong><a href="https://www.softcron.com/">softcron.com</a>
                                </div>

                            </div>
                            <div class="sections">
                                <h4>Rohtak Office</h4>
                                <p>
                                    <strong>
                                        <img class="mr-2" src="/assets/img/address.png" width="16" />
                                        Address: </strong>Sector-26, Rohtak, Haryana 124001
                                </p>
                                <p>
                                    <strong>
                                        <img class="mr-2" src="/assets/img/phone-call.png" width="16" />
                                        Phone: </strong>+91 90448-92448
                                </p>
                                <div>
                                    <strong>
                                        <img class="mr-2" src="/assets/img/mail.png" width="16" />
                                        Mail: </strong><a href="mailto:info@softcron.com">info@softcron.com</a>
                                </div>
                                <div>
                                    <strong>
                                        <img class="mr-2" src="/assets/img/site.png" width="16" />
                                        Site: </strong><a href="https://www.softcron.com/">softcron.com</a>
                                </div>

                            </div>
                            <div class="sections">
                                <h4>US United States Office</h4>
                                <p>
                                    <strong>
                                        <img class="mr-2" src="/assets/img/address.png" width="16" />
                                        Address: </strong>6510 Village Park, San Antonio, Texas 78250
                                </p>
                                <p>
                                    <strong>
                                        <img class="mr-2" src="/assets/img/phone-call.png" width="16" />
                                        Phone: </strong>+1 (210) 538-1729
                                </p>
                                <div>
                                    <strong>
                                        <img class="mr-2" src="/assets/img/mail.png" width="16" />
                                        Mail: </strong><a href="mailto:info@softcron.us">info@softcron.us</a>
                                </div>
                                <div>
                                    <strong>
                                        <img class="mr-2" src="/assets/img/site.png" width="16" />
                                        Site: </strong><a href="https://www.softcron.us/">softcron.us</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>

        </div>
    </section>












</asp:Content>
