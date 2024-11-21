<%@ Page  Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="404.aspx.cs" Inherits="WebApplication7._404" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title>404 Page</title>
	<link rel="canonical" href="https://www.softcron.com/404">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <%-- <div class="container-fluid bg-white">
        <div class="col-sm-12 centered">
            <img class="width pt-5 pb-5" src="/assets/img/404.gif" alt="softcron-error-404" />
        </div>
        <div class="col-sm-12 centered pb-5 pt-3">
            <a href="<%=ResolveUrl("~/")%>"><span class="x-lg home-color">Go to Home</span></a>
        </div>
    </div>--%>

    <section class="page_404">
	<div class="container">
		<div class="row">	
		<div class="col-sm-12 ">
		<div class="col-sm-10 offset-lg-1  text-center">
		<div class="four_zero_four_bg">
			<h1 class="text-center ">404</h1>
		
		
		</div>
		
		<div class="contant_box_404">
		<h3 class="h2">
		Look like you're lost
		</h3>
		
		<p>but the page you’re trying to reach can’t be found.</p>
		
		<a href="<%=ResolveUrl("~/")%>" class="link_404">Go to Home</a>
	</div>
		</div>
		</div>
		</div>
	</div>
</section>
</asp:Content>
