<%@ Page  Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="charge.aspx.cs" Inherits="WebApplication7.charge" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container-fluid img-center" style = "background-color:white">
           <img class="img-center w-50" src="/assets/img/mainpages/payment/payment-successful.gif" />
        <h2 class="text-center pb-5"> Payment Successful! Your Payment id is <%=paymentId %>.</h2>
    </div>
</asp:Content>
