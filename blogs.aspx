<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="blogs.aspx.cs" Inherits="WebApplication7.blogs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Blog Page | Softcron</title>
    <link rel="canonical" href="https://www.softcron.com/blogs">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Start of blog page section
        ============================================= -->
    <%--<form id="form1" runat="server">--%>
        <section id="news-feed" class="news-feed-section">
            <div class="container">
                <div class="blog-feed-content">
                    <div class="row">
                        <div class="col-md-8">

                            <asp:Repeater ID="rptrBlog" runat="server" OnItemCommand="rptrBlog_ItemCommand" OnItemDataBound="rptrBlog_ItemDataBound">
                                <HeaderTemplate>
                                </HeaderTemplate>
                                <ItemTemplate>

                                    <div class="blog-feed-post">
                                        <div class="blog-feed-img-txt">
                                            <div class="row">
                                                <div class="col-lg-6 col-md-12 col-sm-12">
                                                    <div class="saasio-blog-img">
                                                        <asp:Label ID="lblpic" Text='<%#Eval("blog_outer_image")%>' Visible="false" runat="server"></asp:Label>
                                                        <%--<img src="<%# Eval("blog_outer_image")%>"  alt='<%# Eval("blog_title")%>' />--%>
                                                        <asp:Image ID="lblimageurl" runat="server" ImageUrl='<%#Eval("blog_outer_image")%>' alt='<%# Eval("blog_title")%>' />
                                                        <%-- <img src="../assets/img/d-agency/blog/news-4.jpg" alt="">--%>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 col-md-12 col-sm-12">
                                                    <div class="saasio-blog-text">
                                                        <h3><a href="#"><%# Eval("blog_title")%></a></h3>
                                                        <div class="saasio-post-meta">
                                                            <a href="#"><i class="fas fa-calendar-alt"></i><%# Eval("created_on","{0: dd MMMM yyyy}")%></a>
                                                            <a href="#"><i class="fas fa-user"></i><%# Eval("author_name")%></a>
                                                        </div>
                                                        <p>
                                                            <asp:Label ID="lblDescription" Text='<%#Eval("blog_description")%>' runat="server"> </asp:Label>

                                                        </p>
                                                        <asp:LinkButton ID="BtnlinkView" runat="server" CommandName="view" CommandArgument='<%# Eval("blog_friendly_url") %>'>
                                                           <h6 class="blog-read-more">Read More </h6>
                                                        </asp:LinkButton>
                                                        <%--<a class="blog-read-more" href="#">Read More</a>--%>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </ItemTemplate>
                            </asp:Repeater>

                            <!-- Pagging Start -->

                            <%--<div class="saasio-pagination text-center ul-li">
                            <ul>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a class="active" href="#">3</a></li>
                                <li><a href="#">...</a></li>
                                <li><a href="#">10</a></li>
                            </ul>
                        </div>--%>

                            <!-- Pagging End -->

                        </div>
                        <div class="col-md-4">
                            <div class="saasio-blog-sidebar">
                                <!-- Search Start -->
                                <%--<div class="side-bar-widget">
                                <div class="search-widget dia-headline">

                                    <h3 class="widget-title-2">Search</h3>
                                    <div action="#" class="relative-position">
                                        <input type="text" name="search" placeholder="Search Here">
                                        <button type="submit"><i class="fas fa-search"></i></button>
                                    </div>
                                </div>
                            </div>--%>

                                <!-- Search End -->
                                <asp:HiddenField ID="hdnBlogCategoryId" runat="server" />
                                <!-- Category Start -->
                                <div class="side-bar-widget">
                                    <div class="category-widget dia-headline ul-li-block">
                                        <h3 class="widget-title-2">Category</h3>
                                        <ul>
                                            <asp:Repeater ID="rptrBlogCategory" runat="server" OnItemDataBound="rptrBlogCategory_ItemDataBound" OnItemCommand="rptrBlogCategory_ItemCommand">
                                                <HeaderTemplate>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <li>
                                                        <asp:LinkButton ID="lnkView" runat="server" CommandName="view" CommandArgument='<%# Eval("blog_category_id")+","+Eval("category_name") %>'>
                                                            <%# Eval("category_name")%>  <span>
                                                                <asp:Label ID="lblCategoryName" Text='<%# "("+Eval("Total") +")"%>' runat="server"></asp:Label>

                                                            </span>
                                                        </asp:LinkButton>

                                                    </li>
                                                </ItemTemplate>
                                            </asp:Repeater>

                                        </ul>
                                    </div>
                                </div>
                                <!-- Category End -->

                                <!-- Recent Post Start -->
                                <div class="side-bar-widget">
                                    <div class="category-widget dia-headline ul-li-block">
                                        <h3 class="widget-title-2">Recent Post</h3>
                                        <div class="recent-post-area">

                                            <asp:Repeater ID="rptrsubblog" runat="server" OnItemCommand="rptrsubblog_ItemCommand" OnItemDataBound="rptrsubblog_ItemDataBound">
                                                <HeaderTemplate>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lnksubview" runat="server" CommandName="view" CommandArgument='<%# Eval("blog_friendly_url") %>'>
                                                        <div class="recent-post-img-text">
                                                            <div class="recent-post-img float-left">
                                                                <%--<img src="../assets/img/d-agency/blog/rec1.jpg" alt="">--%>
                                                                <asp:Label ID="lblpic" Text='<%#Eval("blog_thumbnail")%>' Visible="false" runat="server"></asp:Label>
                                                                <%-- <img  src='<%# Eval("blog_outer_image")%>' class="attachment-thumbnail size-thumbnail wp-post-image" alt='<%# Eval("blog_title")%>' />--%>
                                                                <asp:Image ID="imagethumbPreview" runat="server" class="attachment-thumbnail size-thumbnail wp-post-image" ImageUrl='<%#Eval("blog_thumbnail")%>' alt='<%# Eval("blog_title")%>' />
                                                            </div>
                                                            <div class="recent-post-text dia-headline">
                                                                <h3>
                                                                    <asp:Label ID="lblblogheading" Text='<%#Eval("blog_title")%>' runat="server"> </asp:Label>

                                                                </h3>
                                                                <span class="rec-post-meta"><%# Eval("created_on","{0: dd MMM,yyyy}")%></span>
                                                            </div>
                                                        </div>
                                                    </asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>
                                    </div>
                                </div>

                                <!-- Recent Post End -->
                                <!-- Popular Tag Start -->
                                <div class="side-bar-widget">
                                    <div class="popular-widget dia-headline ul-li">
                                        <h3 class="widget-title-2">Popular Tag</h3>
                                        <ul>
                                            <asp:Repeater ID="rptrTag" runat="server" OnItemDataBound="rptrTag_ItemDataBound" OnItemCommand="rptrTag_ItemCommand">
                                                <HeaderTemplate>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <li>
                                                        <asp:LinkButton ID="lnkView" runat="server" CommandName="view" CommandArgument='<%# Eval("blog_category_id")+","+Eval("category_name") %>'>
                                                            <asp:Label ID="lblCategoryName" Text='<%# Eval("category_name")%>' runat="server"></asp:Label>
                                                        </asp:LinkButton>
                                                    </li>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </ul>
                                    </div>
                                </div>
                                <!-- Popular Tag End -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    <%--</form>--%>
    <!-- End of blog section
        ============================================= -->


</asp:Content>
