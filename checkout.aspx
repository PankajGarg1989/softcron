<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="WebApplication7.checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Payment Page</title>
    <style>
        #call img, #whatsapp img {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<form id="form1" runat="server">--%>
        <section class="payment-page">
            <div id="paycontainer" class="container c-width center mt-50">
                <div class="row">
                    <div class="col-sm-12 center">
                        <h1 class="text-center mb-30 orange-color">Pay-Now</h1>
                    </div>
                    <div class="col-sm-12 centered">
                        <div class="float-left w-30 lbl  ">
                            <asp:Label ID="Label7" runat="server" Text="Name : "></asp:Label>
                        </div>
                        <div class="float-left w-50 " id="div1">
                            <asp:TextBox ID="txtbxname" Class="w-100" placeholder="Your Name" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 centered mt-20">
                        <div class=" float-left w-30 lbl ">
                            <asp:Label ID="Label8" runat="server" Text="Service : "></asp:Label>
                        </div>
                        <div class="float-left w-50" id="div2">
                            <asp:TextBox ID="txtbxdescription" CssClass="w-100" placeholder="Service" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 centered mt-20">
                        <div class=" float-left w-30 lbl">
                            <asp:Label ID="Label9" runat="server" Text="Amount : "></asp:Label>
                        </div>
                        <div class=" float-left w-50 " id="div3">
                            <asp:TextBox ID="txtbxamount" class="w-100" value="0.00" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 centered mt-20">
                        <div class="float-left w-30 lbl ">
                            <asp:Label ID="Label10" runat="server" Text="Currency : "></asp:Label>
                        </div>
                        <div class="float-left w-50  " id="div4">
                            <asp:DropDownList ID="txtbxcurrency" class="servicelist" runat="server">
                                <asp:ListItem Text="AED" Value="AED"></asp:ListItem>
                                <asp:ListItem Text="ALL" Value="ALL"></asp:ListItem>
                                <asp:ListItem Text="AMD" Value="AMD"></asp:ListItem>
                                <asp:ListItem Text="ARS" Value="ARS"></asp:ListItem>
                                <asp:ListItem Text="AUD" Value="AUD"></asp:ListItem>
                                <asp:ListItem Text="AWG" Value="AWG"></asp:ListItem>
                                <asp:ListItem Text="BBD" Value="BBD"></asp:ListItem>
                                <asp:ListItem Text="BDT" Value="BDT"></asp:ListItem>
                                <asp:ListItem Text="BMD" Value="BMD"></asp:ListItem>
                                <asp:ListItem Text="BND" Value="BND"></asp:ListItem>
                                <asp:ListItem Text="BOB" Value="BOB"></asp:ListItem>
                                <asp:ListItem Text="BSD" Value="BSD"></asp:ListItem>
                                <asp:ListItem Text="BWP" Value="BWP"></asp:ListItem>
                                <asp:ListItem Text="BZD" Value="BZD"></asp:ListItem>
                                <asp:ListItem Text="CAD" Value="CAD"></asp:ListItem>
                                <asp:ListItem Text="CHF" Value="CHF"></asp:ListItem>
                                <asp:ListItem Text="CNY" Value="CNY"></asp:ListItem>
                                <asp:ListItem Text="COP" Value="COP"></asp:ListItem>
                                <asp:ListItem Text="CRC" Value="CRC"></asp:ListItem>
                                <asp:ListItem Text="CUP" Value="CUP"></asp:ListItem>
                                <asp:ListItem Text="CZK" Value="CZK"></asp:ListItem>
                                <asp:ListItem Text="DKK" Value="DKK"></asp:ListItem>
                                <asp:ListItem Text="DOP" Value="DOP"></asp:ListItem>
                                <asp:ListItem Text="DZD" Value="DZD"></asp:ListItem>
                                <asp:ListItem Text="EGP" Value="EGP"></asp:ListItem>
                                <asp:ListItem Text="ETB" Value="ETB"></asp:ListItem>
                                <asp:ListItem Text="EUR" Value="EUR"></asp:ListItem>
                                <asp:ListItem Text="FJD" Value="FJD"></asp:ListItem>
                                <asp:ListItem Text="GBP" Value="GBP"></asp:ListItem>
                                <asp:ListItem Text="GIP" Value="GIP"></asp:ListItem>
                                <asp:ListItem Text="GMD" Value="GMD"></asp:ListItem>
                                <asp:ListItem Text="GTQ" Value="GTQ"></asp:ListItem>
                                <asp:ListItem Text="GYD" Value="GYD"></asp:ListItem>
                                <asp:ListItem Text="HKD" Value="HKD"></asp:ListItem>
                                <asp:ListItem Text="HKD" Value="HKD"></asp:ListItem>
                                <asp:ListItem Text="HNL" Value="HNL"></asp:ListItem>
                                <asp:ListItem Text="HRK" Value="HRK"></asp:ListItem>
                                <asp:ListItem Text="HTG" Value="HTG"></asp:ListItem>
                                <asp:ListItem Text="HUF" Value="HUF"></asp:ListItem>
                                <asp:ListItem Text="IDR" Value="IDR"></asp:ListItem>
                                <asp:ListItem Text="ILS" Value="ILS"></asp:ListItem>
                                <asp:ListItem Selected="True" Text="INR" Value="INR"></asp:ListItem>
                                <asp:ListItem Text="JMD" Value="JMD"></asp:ListItem>
                                <asp:ListItem Text="KES" Value="KES"></asp:ListItem>
                                <asp:ListItem Text="KGS" Value="KGS"></asp:ListItem>
                                <asp:ListItem Text="KHR" Value="KHR"></asp:ListItem>
                                <asp:ListItem Text="KYD" Value="KYD"></asp:ListItem>
                                <asp:ListItem Text="KZT" Value="KZT"></asp:ListItem>
                                <asp:ListItem Text="LAK" Value="LAK"></asp:ListItem>
                                <asp:ListItem Text="LBP" Value="LBP"></asp:ListItem>
                                <asp:ListItem Text="LKR" Value="LKR"></asp:ListItem>
                                <asp:ListItem Text="LRD" Value="LRD"></asp:ListItem>
                                <asp:ListItem Text="LSL" Value="LSL"></asp:ListItem>
                                <asp:ListItem Text="MAD" Value="MAD"></asp:ListItem>
                                <asp:ListItem Text="MDL" Value="MDL"></asp:ListItem>
                                <asp:ListItem Text="MKD" Value="MKD"></asp:ListItem>
                                <asp:ListItem Text="MMK" Value="MMK"></asp:ListItem>
                                <asp:ListItem Text="MNT" Value="MNT"></asp:ListItem>
                                <asp:ListItem Text="MOP" Value="MOP"></asp:ListItem>
                                <asp:ListItem Text="MUR" Value="MUR"></asp:ListItem>
                                <asp:ListItem Text="MVR" Value="MVR"></asp:ListItem>
                                <asp:ListItem Text="MWK" Value="MWK"></asp:ListItem>
                                <asp:ListItem Text="MXN" Value="MXN"></asp:ListItem>
                                <asp:ListItem Text="MYR" Value="MYR"></asp:ListItem>
                                <asp:ListItem Text="NAD" Value="NAD"></asp:ListItem>
                                <asp:ListItem Text="NGN" Value="NGN"></asp:ListItem>
                                <asp:ListItem Text="NIO" Value="NIO"></asp:ListItem>
                                <asp:ListItem Text="NOK" Value="NOK"></asp:ListItem>
                                <asp:ListItem Text="NOK" Value="NOK"></asp:ListItem>
                                <asp:ListItem Text="NPR" Value="NPR"></asp:ListItem>
                                <asp:ListItem Text="NZD" Value="NZD"></asp:ListItem>
                                <asp:ListItem Text="PEN" Value="PEN"></asp:ListItem>
                                <asp:ListItem Text="PGK" Value="PGK"></asp:ListItem>
                                <asp:ListItem Text="PHP" Value="PHP"></asp:ListItem>
                                <asp:ListItem Text="PKR" Value="PKR"></asp:ListItem>
                                <asp:ListItem Text="QAR" Value="QAR"></asp:ListItem>
                                <asp:ListItem Text="RUB" Value="RUB"></asp:ListItem>
                                <asp:ListItem Text="SAR" Value="SAR"></asp:ListItem>
                                <asp:ListItem Text="SCR" Value="SCR"></asp:ListItem>
                                <asp:ListItem Text="SEK" Value="SEK"></asp:ListItem>
                                <asp:ListItem Text="SGD" Value="SGD"></asp:ListItem>
                                <asp:ListItem Text="SLL" Value="SLL"></asp:ListItem>
                                <asp:ListItem Text="SOS" Value="SOS"></asp:ListItem>
                                <asp:ListItem Text="SSP" Value="SSP"></asp:ListItem>
                                <asp:ListItem Text="SVC" Value="SVC"></asp:ListItem>
                                <asp:ListItem Text="SZL" Value="SZL"></asp:ListItem>
                                <asp:ListItem Text="THB" Value="THB"></asp:ListItem>
                                <asp:ListItem Text="TTD" Value="TTD"></asp:ListItem>
                                <asp:ListItem Text="TZS" Value="TZS"></asp:ListItem>
                                <asp:ListItem Text="USD" Value="USD"></asp:ListItem>
                                <asp:ListItem Text="UYU" Value="UYU"></asp:ListItem>
                                <asp:ListItem Text="UZS" Value="UZS"></asp:ListItem>
                                <asp:ListItem Text="YER" Value="YER"></asp:ListItem>
                                <asp:ListItem Text="ZAR" Value="ZAR"></asp:ListItem>
                            </asp:DropDownList>
                            <%--<asp:TextBox ID="txtbxcurrency" class="w-100" runat="server"></asp:TextBox>--%>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 centered mt-20">
                        <div class="float-left w-30 lbl ">
                            <asp:Label ID="Label1" runat="server" Text="Contact: "></asp:Label>
                        </div>
                        <div class="float-left w-50  " id="div5">
                            <asp:TextBox ID="txtbxcontact" class="w-100" placeholder="Contact Number" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12 centered mt-20">
                        <div class="float-left w-30 lbl ">
                            <asp:Label ID="Label2" runat="server" Text="Email: "></asp:Label>
                        </div>
                        <div class="float-left w-50  " id="div6">
                            <asp:TextBox ID="txtbxemail" class="w-100" placeholder="Email" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <%--         <div class="row">
            <div class="col-sm-12 centered mt-20">
                <div class=" float-left w-30 lbl">
                    <asp:Label ID="Label4" runat="server" Text="Remarks : "></asp:Label>
                </div>
                <div class=" float-left w-50" id="div5">
                    <textarea id="txtbxremarks" class="w-100 " cols="20" rows="2" maxlength="250" placeholder="Remarks" runat="server"></textarea>
                </div>
            </div>
        </div>--%>
                <div class="row">
                    <div class="col-sm-12 centered mt-20 ">
                        <p>
                            <asp:CheckBox ID="chkbxagree" runat="server" />
                            I have read and accept the <a class="tnc" href="<%=ResolveUrl("payment-terms-and-conditions")%>">Terms &amp; Conditions.</a>
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 centered mt-20">
                        <div class=" w-100 ">
                            <asp:Button ID="btnpay" class="btnpurchase" runat="server" Text="Pay" OnClick="Button1_Click1" />
                            <%--<asp:Button ID="btnpurchase" class="btnpurchase" runat="server" Text="Pay" OnClick="btnpurchase_Click" />--%>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    <%--</form>--%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            var amount = "";
            var service = "Select";
            $("#ContentPlaceHolder1_txtbxcontact").keypress(function (e) {
                var keyCode = e.which;
                if ((keyCode >= 48) && (keyCode <= 57) || (keyCode == 13)) {
                    return true;
                }
                else {
                    return false;
                }
            });
            $("#ContentPlaceHolder1_txtbxamount").keypress(function (e) {
                var keyCode = e.which;
                if ((keyCode >= 48) && (keyCode <= 57) || (keyCode == 13)) {
                    return true;
                }
                else {
                    return false;
                }
            });
            $("#ContentPlaceHolder1_txtbxamount").focusin(function () {

            });
            $("#ContentPlaceHolder1_txtbxamount").focusout(function () {
                var a = $(this).val();
                if (a.indexOf(".") != -1) {

                }
                else {
                    $(this).val($(this).val() + ".00");
                }
            });


            //$("div").on("contextmenu", function () {
            //    alert("Right Click is disabled..")
            //    return false;               
            //});
            //        $("#ContentPlaceHolder1_txtbxcurrency").change(function () {
            //         service = $('option:selected', this).val();
            // });


            $("#ContentPlaceHolder1_btnpay").click(function (event) {

                if ($("#ContentPlaceHolder1_txtbxname").val() == "") {
                    $("#ContentPlaceHolder1_txtbxname").css('border-color', 'red');
                    event.preventDefault();
                }
                else {
                    $("#ContentPlaceHolder1_txtbxname").css('border-color', '#dcdcdc');
                }

                //       if (service == "Select") {
                //         $("#ContentPlaceHolder1_txtbxcurrency").css('border-color', 'red');
                //           event.preventDefault();
                //       }
                //       else {
                //            $("#ContentPlaceHolder1_txtbxcurrency").css('border-color', '#dcdcdc');
                //     }


                if ($("#ContentPlaceHolder1_txtbxamount").val() == "" || $("#ContentPlaceHolder1_txtbxamount").val() <= 49.00) {
                    $("#ContentPlaceHolder1_txtbxamount").css('border-color', 'red');
                    event.preventDefault();
                }
                else {
                    $("#ContentPlaceHolder1_txtbxamount").css('border-color', '#dcdcdc');
                }

                if ($("#ContentPlaceHolder1_txtbxdescription").val() == "") {
                    $("#ContentPlaceHolder1_txtbxdescription").css('border-color', 'red');
                    event.preventDefault();
                }
                else {
                    $("#ContentPlaceHolder1_txtbxdescription").css('border-color', '#dcdcdc');
                }

                if ($("#ContentPlaceHolder1_txtbxcontact").val() == "" || $("#ContentPlaceHolder1_txtbxcontact").val().length < 8) {
                    $("#ContentPlaceHolder1_txtbxcontact").css('border-color', 'red');
                    $("#ContentPlaceHolder1_txtbxcontact").css('color', 'red');
                    event.preventDefault();
                }
                else {
                    $("#ContentPlaceHolder1_txtbxcontact").css('border-color', '#dcdcdc');
                    $("#ContentPlaceHolder1_txtbxcontact").css('color', '');
                }

                if ($("#ContentPlaceHolder1_txtbxemail").val() == "") {
                    $("#ContentPlaceHolder1_txtbxemail").css('border-color', 'red');
                    event.preventDefault();
                }
                else {
                    $("#ContentPlaceHolder1_txtbxemail").css('border-color', '#dcdcdc');
                }


                if ($("#ContentPlaceHolder1_chkbxagree").prop("checked") == false) {
                    $("#ContentPlaceHolder1_chkbxagree").css('border-color', 'red');
                    $("#ContentPlaceHolder1_chkbxagree").css('color', 'red');
                    event.preventDefault();
                }
                else {
                    $("#ContentPlaceHolder1_chkbxagree").css('border-color', '#dcdcdc');
                    $("#ContentPlaceHolder1_chkbxagree").css('color', '');
                }

            });
        });
    </script>

</asp:Content>
