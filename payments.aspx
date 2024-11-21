<%@ Page  Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="payments.aspx.cs" Inherits="WebApplication7.payments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<form runat="server" method="post" action="charge.aspx">--%>
        <div id="paycontainer" class="container c-width center mt-50">
            <div class="row">
                <div class="col-sm-12 center">
                    <h1 class="text-center mb-30">Confirm Payment Details</h1>
                </div>
                <div class="col-sm-12 centered">
                    <div class="float-left w-30 lbl  ">
                        <asp:Label ID="Label7" runat="server" Text="Name : "></asp:Label>
                    </div>
                    <div class="float-left w-50 " id="div1">
                        <input type="text" readonly class="w-100" name="prefill[name]" placeholder="Your Name" value="<%:Session["name"]%>" />
                        <%-- <asp:TextBox ID="txtbxname" Class="w-100" runat="server"></asp:TextBox>--%>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 centered mt-20">
                    <div class=" float-left w-30 lbl ">
                        <asp:Label ID="Label8" runat="server" Text="Service : "></asp:Label>
                    </div>
                    <div class="float-left w-50" id="div2">
                        <input type="text" readonly name="description" class="w-100" value="<%:Session["description"]%>" />
                        <%-- <asp:TextBox ID="txtbxdescription" CssClass="w-100" runat="server"></asp:TextBox>--%>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 centered mt-20">
                    <div class=" float-left w-30 lbl">
                        <asp:Label ID="Label9" runat="server" Text="Amount : "></asp:Label>
                    </div>
                    <div class=" float-left w-50 " id="div3">
                        <input type="text" readonly class="w-100" name="amount" value="<%:Session["amount"]%>.00" />
                        <%--    <asp:TextBox ID="txtbxamount" class="w-100" runat="server"></asp:TextBox>--%>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 centered mt-20">
                    <div class="float-left w-30 lbl ">
                        <asp:Label ID="Label10" runat="server" Text="Currency : "></asp:Label>
                    </div>
                    <div class="float-left w-50  " id="div4">
                        <input type="text" readonly class="w-100" name="currency" value="<%:Session["currency"]%>" />
                        <%--      <asp:TextBox ID="txtbxcurrency" class="w-100" runat="server"></asp:TextBox>--%>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 centered mt-20">
                    <div class="float-left w-30 lbl ">
                        <asp:Label ID="Label1" runat="server" Text="Contact: "></asp:Label>
                    </div>
                    <div class="float-left w-50  " id="div5">
                        <input type="text" readonly name="prefill[contact]" class="w-100" value="<%:Session["contact"]%>" />
                        <%-- <asp:TextBox ID="txtbxcontact" class="w-100" runat="server"></asp:TextBox>--%>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12 centered mt-20">
                    <div class="float-left w-30 lbl ">
                        <asp:Label ID="Label2" runat="server" Text="Email: "></asp:Label>
                    </div>
                    <div class="float-left w-50  " id="div6">
                        <input type="text" readonly class="w-100" name="prefill[email]" value="<%:Session["email"]%>" />
                        <%--<asp:TextBox ID="txtbxemail" class="w-100" runat="server"></asp:TextBox>--%>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12 centered mt-20">
                    <div class=" w-100 ">
                        <asp:Button ID="btnpay" class="btnpurchase" runat="server" Text="Proceed to Pay" />
                        <%--<asp:Button ID="btnpurchase" class="btnpurchase" runat="server" Text="Pay" OnClick="btnpurchase_Click" />--%>
                    </div>
                </div>
            </div>
        </div>


        <input type="hidden" name="amount" value="<%# Eval("amount")%>" />
        <input type="hidden" name="currency" value="<%# Eval("currency")%>" />
        <input type="hidden" name="order_id" value="<%# Eval("orderId")%>" />
        <input type="hidden" name="description" placeholder="Description" value="<%# Eval("description")%>" />
        <input type="hidden" name="prefill[name]" placeholder="Your Name" value="<%# Eval("name")%>" />
        <input type="hidden" name="prefill[contact]" placeholder="Contact Number" value="<%# Eval("contact")%>" />
        <input type="hidden" name="prefill[email]" value="<%# Eval("email")%>" />
        <input type="hidden" name="callback_url" value="https://softcron.com/charge" />
     <input type="hidden" name="callback_url" value="response-page.aspx" />
        <input type="hidden" name="cancel_url" value="cancel.aspx" />
        <script
            src="https://checkout.razorpay.com/v1/checkout.js"
            data-key="rzp_live_YYNGqfwoehxOhV"
            data-amount="<%=amount%>"
            data-name="Softcron Technology"
            data-description="<%=description%>"
            data-order_id="<%=orderId%>"
            data-image="https://www.softcron.com/assets/img/fvicon.webp"
            data-prefill.name="<%=name%>"
            data-prefill.email="<%=email%>"
            data-prefill.contact="<%=contact%>"
            data-callback_url="response-page.aspx"
            data-cancel_url="cancel.aspx>"
            data-theme.color="#5044b1"></script>
        <input type="hidden" value="Hidden Element" name="hidden" />
    <%--</form>--%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $(".razorpay-payment-button").hide();
        });
    </script>
</asp:Content>
