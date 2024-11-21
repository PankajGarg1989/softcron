<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="blogs-details.aspx.cs" Inherits="WebApplication7.blogs_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Start of breadcurmb section
        ============================================= -->

    <!-- End of breadcurmb section
        ============================================= -->

    <!-- Start of blog page section
        ============================================= -->
    <%--<form id="form1" runat="server">--%>
        <section id="news-feed" class="news-feed-section">
            <div class="container">
                <div class="blog-feed-content">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="saasio-blog-details-content">

                                <asp:Repeater ID="rptrBlogDetail" runat="server" OnItemCommand="rptrBlogDetail_ItemCommand" OnItemDataBound="rptrBlogDetail_ItemDataBound">
                                    <HeaderTemplate>
                                    </HeaderTemplate>
                                    <ItemTemplate>

                                        <!--- Blog Imgae Start --->
                                        <div class="blog-details-img">
                                            <asp:Label ID="lblpic" Text='<%#Eval("blog_inner_banner_img")%>' Visible="false" runat="server"></asp:Label>
                                            <asp:Image ID="lblimageurl" runat="server" ImageUrl='<%#Eval("blog_inner_banner_img")%>' alt='<%# Eval("blog_title")%>' />
                                            <%--<img src="../assets/img/d-agency/blog/news-9.jpg" alt="">--%>
                                        </div>
                                        <!--- Blog Imgae End --->

                                        <!--- Blog Detail Start --->
                                        <div class="blog-details-text dia-headline">
                                            <h2>
                                                <asp:Label ID="lblBlogTitle" Text='<%# Eval("blog_title")%>' runat="server"> </asp:Label>
                                            </h2>
                                            <div class="saasio-post-meta">
                                                <a href="#"><i class="fas fa-calendar-alt"></i><%# Eval("created_on","{0: dd MMMM yyyy}")%></a>
                                                <a href="#"><i class="fas fa-user"></i><%# Eval("author_name")%></a>
                                            </div>

                                            <!--- Blog Description Start --->
                                            <asp:Label ID="lblDescription" Text='<%#Eval("blog_description")%>' runat="server"> </asp:Label>



                                            <!--- Blog Description End --->
                                        </div>

                                        <!--- Blog Detail Start --->


                                    </ItemTemplate>
                                </asp:Repeater>


                                <%-- <!--- Blog Imgae Start --->
                            <div class="blog-details-img">
                                <img src="../assets/img/d-agency/blog/news-9.jpg" alt="">
                            </div>
                            <!--- Blog Imgae End --->
                            <!--- Blog Detail Start --->
                            <div class="blog-details-text dia-headline">
                                <h2>Content without backward-compatible data.</h2>
                                <div class="saasio-post-meta">
                                    <a href="#"><i class="fas fa-calendar-alt"></i>September 12, 2021</a>
                                    <a href="#"><i class="fas fa-user"></i>Admin</a>
                                </div>

                                <!--- Blog Description Start --->
                                <article>
                                    It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum The man, who is in a stable condition in hospital, has "potentially life-changing injuries" after the overnight attack in Garvagh, County Lono donderry. He was shot in the arms and legs."What sort of men would think it is accepttable to sub ject a young girl to this level of brutality and violence?
                                </article>
                                <h3>Young girl to this level of brutality.</h3>
                                <article>
                                    It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum The man, who is in a stable condition in hospital, has "potentially life-changing injuries" after the overnight attack in Garvagh, County Lono donderry. He was shot in the arms and legs."What sort of men would think it is accepttable to sub ject a young girl to this level of brutality and violence?
                                </article>
                                <article>
                                    It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum The man, who is in a stable condition in hospital.He was shot in the arms and legs."What sort of men would think it is accepttable to sub ject a young girl to this level of brutality and violence?
                                </article>
                                <div class="row">
                                    <div class="col-md-6">
                                        <img src="../assets/img/d-agency/blog/news-10.jpg" alt="">
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../assets/img/d-agency/blog/news-11.jpg" alt="">
                                    </div>
                                </div>
                                <article>
                                    It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum The man, who is in a stable condition in hospital, has "potentially life-changing injuries" after the overnight attack in Garvagh, County Lono donderry. He was shot in the arms and legs."What sort of men would think it is accepttable to sub ject a young girl to this level of brutality and violence?
                                </article>
                                <blockquote>
                                    the readable content of a page when looking at its layout. The point of using Lorem Ipsum The man, who is in a stable condition in hospital, has "potentially life-changing injuries" after the overnight attack in Garvagh, County Lono donderry.
               <h4>-Jemes Cook</h4>
                                </blockquote>
                                <article>
                                    It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum The man, who is in a stable condition in hospital, has "potentially life-changing injuries" after the overnight attack in Garvagh, County Lono donderry. He was shot in the arms and legs."What sort of men would think it is accepttable to sub ject a young girl to this level of brutality and violence?
                                </article>
                                <article>
                                    It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum The man, who is in a stable condition in hospital.He was shot in the arms and legs."What sort of men would think it is accepttable to sub ject a young girl to this level of brutality and violence?
                                </article>

                                 <!--- Blog Description End --->
                            </div>

                            <!--- Blog Detail Start --->--%>



                                <asp:HiddenField ID="hdnFBlogTagId" runat="server" />
                                <div class="blog-details-tag clearfix">

                                    <!---- Particular Blog Tags Start --->
                                    <div class="blog-feed-tag float-left">
                                        <span>Tags:</span>
                                        <%--<a href="#">Business</a>
                                    <a href="#">Life</a>
                                    <a href="#">SaaSio</a>--%>
                                        <asp:Repeater ID="rptrblogTag" runat="server" OnItemDataBound="rptrblogTag_ItemDataBound" OnItemCommand="rptrblogTag_ItemCommand">
                                            <HeaderTemplate>
                                            </HeaderTemplate>
                                            <ItemTemplate>

                                                <asp:LinkButton ID="lnkView" runat="server" CommandName="view" CommandArgument='<%# Eval("blog_category_id") %>'>

                                                    <asp:Label ID="lblCategoryName" Text='<%# Eval("category_name")%>' runat="server"></asp:Label>

                                                </asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>

                                    <!---- Particular Blog Tags End --->
                                    <div class="blog-feed-share float-right">
                                        <span>Share:</span>
                                        <a href="#"><i class="fb-bg fab fa-facebook-f "></i></a>
                                        <a href="#"><i class="bh-bg fab fa-behance"></i></a>
                                        <a href="#"><i class="tw-bg fab fa-twitter"></i></a>
                                        <a href="#"><i class="dr-bg fab fa-dribbble"></i></a>
                                    </div>
                                </div>

                                <asp:HiddenField ID="HdnfBlogMasterIdForComment" runat="server" />
                                <div class="saasio-comment-field dia-headline">
                                    <h3>Comments (<asp:Label ID="lblCommentTotal" runat="server"> </asp:Label>)</h3>
                                    <div class="comment-list-item">
                                        <asp:Repeater ID="rptrBlogComments" runat="server" OnItemDataBound="rptrBlogComments_ItemDataBound" OnItemCommand="rptrBlogComments_ItemCommand">
                                            <HeaderTemplate>
                                            </HeaderTemplate>
                                            <ItemTemplate>

                                                <div class="comment-inner-box">
                                                    <div class="comment-author-img float-left">
                                                        <img src="../assets/img/d-agency/blog/ca1.jpg" alt="">
                                                        <%--<asp:Label ID="lblpic" Text='<%#Eval("blog_outer_image")%>' Visible="false" runat="server"></asp:Label>
                                                    <asp:Image ID="imageCommentPerson" runat="server" ImageUrl='<%#Eval("user_image")%>' alt='<%# Eval("comment_by_user_name")%>' />--%>
                                                    </div>
                                                    <div class="comment-author-text">
                                                        <h4><a href="#"><%# Eval("comment_by_user_name")%></a></h4>
                                                        <span><%# Eval("created_on","{0: dd MMM,yyyy}")%></span>
                                                        <p>
                                                            <asp:Label ID="lblBlogComment" Text='<%#Eval("blog_comment")%>' runat="server"> </asp:Label>
                                                        </p>
                                                        <asp:LinkButton ID="BtnCommentReply" runat="server" CommandName="view" CommandArgument='<%# Eval("comment_master_id") %>' CssClass="comment-reply">
                                                           <h6 class="text-center">Reply </h6>
                                                        </asp:LinkButton>
                                                        <%--<a class="comment-reply" href="#">Reply</a>--%>
                                                    </div>
                                                </div>

                                            </ItemTemplate>
                                        </asp:Repeater>

                                        <%-- <div class="comment-inner-box">
                                        <div class="comment-author-img float-left">
                                            <img src="../assets/img/d-agency/blog/ca1.jpg" alt="">

                                        </div>
                                        <div class="comment-author-text">
                                            <h4><a href="#">Rolax Fellan</a></h4>
                                            <span>November 25, 2021 at 09:00 am</span>
                                            <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using.</p>
                                            <a class="comment-reply" href="#">Reply</a>
                                        </div>
                                    </div>
                                    <div class="comment-inner-box">
                                        <div class="comment-author-img float-left">
                                            <img src="../assets/img/d-agency/blog/ca2.jpg" alt="">
                                        </div>
                                        <div class="comment-author-text">
                                            <h4><a href="#">Daile Cane</a></h4>
                                            <span>November 25, 2021 at 09:00 am</span>
                                            <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using.</p>
                                            <a class="comment-reply" href="#">Reply</a>
                                        </div>
                                    </div>--%>
                                    </div>
                                    <h3>Post a comment</h3>
                                    <div class="comment-form">
                                        <div action="#">
                                            <%--<input type="text" name="name" placeholder="Enter Your Full Name">
                                        <input type="email" name="email" placeholder="Enter Your  Email Address">
                                        <input type="tetx" name="website" placeholder="Enter Your Website">
                                        <textarea name="message" placeholder="Your Comment here..."></textarea>
                                        <button type="submit">Comment</button>--%>

                                            <asp:TextBox ID="txtName" runat="server" placeholder="Your Full Name"></asp:TextBox>
                                            <asp:TextBox ID="txtEmail" runat="server" placeholder="Your Email Address"></asp:TextBox>
                                            <asp:TextBox ID="txtWebsite" runat="server" placeholder="Your Your Website"></asp:TextBox>
                                            <asp:TextBox ID="txtMsg" runat="server" TextMode="MultiLine" placeholder="Your Comment here..."></asp:TextBox>
                                            <asp:LinkButton ID="btnComment" runat="server" CssClass="btn btn-my">Comment</asp:LinkButton>


                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="saasio-blog-sidebar">
                                <%--<div class="side-bar-widget">
                                <div class="search-widget dia-headline">
                                    <h3 class="widget-title-2">Search</h3>
                                    <div action="#" class="relative-position">
                                        <input type="text" name="search" placeholder="Search Here">
                                        <button type="submit"><i class="fas fa-search"></i></button>
                                    </div>
                                </div>
                            </div>--%>

                                <asp:HiddenField ID="hdnBlogCategoryId" runat="server" />
                                <!---- Category Start --->
                                <div class="side-bar-widget">
                                    <div class="category-widget dia-headline ul-li-block">
                                        <h3 class="widget-title-2">Category</h3>
                                        <ul>
                                            <%-- <li><a href="#">Application <span>(06)</span></a></li>
                    <li><a href="#">Software <span>(06)</span></a></li>
                    <li><a href="#">Landing Page <span>(06)</span></a></li>--%>
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
                                <!---- Category End --->

                                <!---- Recent Post Start --->

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
                                                                <asp:Image ID="imagethumbPreview" runat="server" class="attachment-thumbnail size-thumbnail wp-post-image" ImageUrl='<%#Eval("blog_thumbnail")%>' alt='<%# Eval("blog_title")%>' />
                                                                <%--<img id="imagethumbPreview" src='<%# Eval("pic2")%>' class="attachment-thumbnail size-thumbnail wp-post-image" alt='<%# Eval("blog_heading")%>' />--%>
                                                            </div>
                                                            <div class="recent-post-text dia-headline">
                                                                <h3>
                                                                    <asp:Label ID="lblblogheading" Text='<%#Eval("blog_title")%>' runat="server"> </asp:Label>
                                                                    <%--<a href="#">
                                                                <asp:Label ID="Label1" Text='<%#Eval("blog_title")%>' runat="server"> </asp:Label>
                                                            </a>--%>
                                                                </h3>
                                                                <span class="rec-post-meta"><%# Eval("created_on","{0: dd MMM,yyyy}")%></span>
                                                                <%--<span class="rec-post-meta"><a href="#"><%# Eval("created_on","{0: dd MMM,yyyy}")%></a></span>--%>
                                                            </div>
                                                        </div>

                                                    </asp:LinkButton>

                                                </ItemTemplate>
                                            </asp:Repeater>

                                            <%-- <div class="recent-post-img-text">
                                            <div class="recent-post-img float-left">
                                                <img src="../assets/img/d-agency/blog/rec1.jpg" alt="">
                                            </div>
                                            <div class="recent-post-text dia-headline">
                                                <h3><a href="#">Engaging New  Smart Approach.</a></h3>
                                                <span class="rec-post-meta"><a href="#">December 12, 2021</a></span>
                                            </div>
                                        </div>
                                        <div class="recent-post-img-text">
                                            <div class="recent-post-img float-left">
                                                <img src="../assets/img/d-agency/blog/rec-2.jpg" alt="">
                                            </div>
                                            <div class="recent-post-text dia-headline">
                                                <h3><a href="#">Engaging New  Smart Approach.</a></h3>
                                                <span class="rec-post-meta"><a href="#">December 12, 2021</a></span>
                                            </div>
                                        </div>
                                        <div class="recent-post-img-text">
                                            <div class="recent-post-img float-left">
                                                <img src="../assets/img/d-agency/blog/rec-3.jpg" alt="">
                                            </div>
                                            <div class="recent-post-text dia-headline">
                                                <h3><a href="#">Engaging New  Smart Approach.</a></h3>
                                                <span class="rec-post-meta"><a href="#">December 12, 2021</a></span>
                                            </div>
                                        </div>--%>
                                        </div>
                                    </div>
                                </div>

                                <!---- Recent Post End --->
                                <!---- Popular Tag Start --->

                                <div class="side-bar-widget">
                                    <div class="popular-widget dia-headline ul-li">
                                        <h3 class="widget-title-2">Popular Tag</h3>
                                        <ul>
                                            <%--<li><a href="#">Application </a></li>
                                        <li><a href="#">Software </a></li>
                                        <li><a href="#">Landing </a></li>
                                        <li><a href="#">App </a></li>
                                        <li><a href="#">Design </a></li>--%>

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

                                <!---- Popular Tag End --->

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
