<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value ="${pageContext.servletContext.contextPath }" scope = "session" />

    
 <section id="breadcrumbRow" class="row">
        <h2>sinlge post</h2>
        <div class="row pageTitle m0">
            <div class="container">
                <h4 class="fleft">sinlge post</h4>
                <ul class="breadcrumb">
                    <li><a href="${contextPath }/home">home</a></li>
                    <li class="active">sinlge post</li>
                </ul>
            </div>
        </div>
    </section>
    
    <section class="row contentRowPad">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-md-8">                    
                    <div class="blog row m0 single_post">
                        <div class="row m0 titleRow">
                            <div class="fleft date">29<span>Dec</span></div>
                            <div class="fleft titlePart">
                                <a href="single-post.html"><h4 class="blogTitle heading">New products of the week standard post</h4></a>
                                <p class="m0">By <a href="#">Admin</a><span>|</span><a href="#">5 Comments</a></p>
                            </div>
                        </div>
                        <div class="row m0 featureImg">
                            <img src="${contextPath }/user/images/blog/bloglist2.png" alt="">
                        </div>
                        <div class="row m0 excerpt">
                             It's time to light the lights. It's time to meet the Muppets on the Muppet Show tonight. Knight Rider: A shadowy flight into the dangerous world of a man  It's time to light the lights. It's time to meet the Muppets on the Muppet Show tonight. Knight Rider: A shadowy flight into the dangerous world of a man <br><br>There ain't nothin' wrong with that. Love exciting and new. Come aboard were expecting you. Love life's sweetest reward Let it flow it floats back to you. Makin their way the only way they know how. That's just a little bit more than the law will allowThere ain't nothin' wrong with that. Love exciting and new. Come aboard were expecting you. Love life's sweetest reward Let it flow it floats back to you. Makin their way the only way they know how. That's just a little bit more than the law will allowThere ain't nothin' wrong with that.
                        </div>
                    </div> <!--Blog Row End-->
                    <div class="shareRow row m0">
                        <h4 class="heading fleft">Share this post</h4>
                        <ul class="list-inline">
                            <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                            <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fab fa-tumblr"></i></a></li>
                        </ul>
                    </div> <!--Share Widget-->
                    
                    <div class="media authorBox">
                        <div class="media-left authorImg">
                            <a href="#">
                                <img src="${contextPath }/user/images/blog/author.png" alt="">
                            </a>
                        </div>
                        <div class="media-body">
                            <h5 class="heading">About <a href="#">Dwayne Johnson</a></h5>
                            <p>We provide the best Quality of products to you.We are always here to help our lovely customers. We ship our products anywhere with more secure. We provide the best Quality of products to you.</p>
                        </div>
                        <div class="row m0">
                            <ul class="list-inline">
                                <li><a href="#"><i class="fab fa-facebook-f"></i> Facebook</a></li>
                                <li><a href="#"><i class="fab fa-twitter"></i> twitter</a></li>
                                <li><a href="#"><i class="fab fa-google-plus"></i> google+</a></li>
                                <li><a href="#"><i class="fas fa-envelope"></i> Email</a></li>
                            </ul>
                        </div>
                    </div> <!--Author Box - Shortcode Item -> Single Blog Page-->
                    
                    <div class="row m0 comments">
                        <h4 class="heading commentCount">3 Comments</h4>
                    
                        <div class="media commentBox">
                            <div class="media-left">
                                <a href="#">
                                    <img src="${contextPath }/user/images/blog/comenter1.png" alt="">
                                </a>
                            </div>
                            <div class="media-body">
                                <h5 class="heading">Dwayne</h5>
                                <h6>Dec 15, 2021   <span>|</span>   <a href="#replyForm">Reply</a></h6>
                                <p>Beats all you've ever saw been in trouble with the law since the day they was born. Fleeing from the Cylon tyranny the last Battlestar – Galactica - leads a rag-tag fugitive fleet on a lonely Beats all you've ever saw been in trouble with the law.</p>
                            </div>
                        </div> <!--Comment Box - Shortcode Item -> Single Blog Page-->

                        <div class="media commentBox innerComment">
                            <div class="media-left">
                                <a href="#">
                                    <img src="${contextPath }/user/images/blog/comenter2.png" alt="">
                                </a>
                            </div>
                            <div class="media-body">
                                <h5 class="heading">johnson</h5>
                                <h6>Dec 15, 2021   <span>|</span>   <a href="#replyForm">Reply</a></h6>
                                <p>Beats all you've ever saw been in trouble with the law since the day they was born. Fleeing from the Cylon tyranny the last Battlestar – Galactica - leads a rag-tag fugitive fleet on a lonely Beats all you've ever saw been in trouble with the law.</p>
                            </div>
                        </div> <!--Comment Box - Shortcode Item -> Single Blog Page-->
                        <div class="media commentBox">
                            <div class="media-left">
                                <a href="#">
                                    <img src="${contextPath }/user/images/blog/comenter3.png" alt="">
                                </a>
                            </div>
                            <div class="media-body">
                                <h5 class="heading">lisa</h5>
                                <h6>Dec 14, 2021   <span>|</span>   <a href="#replyForm">Reply</a></h6>
                                <p>Beats all you've ever saw been in trouble with the law since the day they was born. Fleeing from the Cylon tyranny the last Battlestar – Galactica - leads a rag-tag fugitive fleet on a lonely Beats all you've ever saw been in trouble with the law.</p>
                            </div>
                        </div> <!--Comment Box - Shortcode Item -> Single Blog Page-->
                    </div> <!--Comments here-->
                    
                    <div class="row m0" id="replyForm">
                        <h4 class="heading">leave a comment</h4>
                        <form action="#" method="post" role="form">
                            <div class="row">
                                <div class="col-sm-4">
                                    <label for="commenterName">Name *</label>
                                    <input type="text" class="form-control" name="commenterName" id="commenterName">
                                </div>
                                <div class="col-sm-4">
                                    <label for="commenterEmail">Email *</label>
                                    <input type="email" class="form-control" name="commenterEmail" id="commenterEmail">
                                </div>
                                <div class="col-sm-4">
                                    <label for="commenterUrl">Website</label>
                                    <input type="url" class="form-control" name="commenterUrl" id="commenterUrl">
                                </div>
                            </div>
                            <div class="row m0">
                                <label for="comments">Comment</label>
                                <textarea name="comments" id="comments" class="form-control"></textarea>
                            </div>
                            <button class="btn btn-primary btn-default filled" type="submit">post comment</button>
                        </form>
                    </div>
                    
                </div>
                <div class="col-sm-4 col-md-4">
                    <div class="row m0 sidebar">
                        <form action="#" class="searchForm row m0">
                            <div class="input-group">
                                <input type="search" class="form-control" placeholder="Search">
                                <span class="input-group-addon p0">
                                    <button type="submit"><i class="fas fa-search"></i></button>
                                </span>
                            </div>
                        </form> <!--Shortcode Element-->
                        <div class="row m0 categories">
                            <h4 class="heading">categories</h4>
                            <ul class="list-unstyled">
                                <li>Architecture</li>
                                <li>Beauty</li>
                                <li>Cars</li>
                                <li>Entertainment</li>
                                <li>People</li>
                                <li>Templates</li>
                                <li>Tour</li>
                            </ul>
                        </div>  <!--Shortcode Element-->
                        
                        <div class="row m0 latestPosts">
                            <h4 class="heading">Latest post</h4>
                            <div class="media latestPost">
                                <div class="media-left">
                                    <a href="#">
                                        <img src="${contextPath }/user/images/blog/lt1.png" alt="">
                                    </a>
                                </div>
                                <div class="media-body">
                                    <h5 class="heading">you can contribute</h5>
                                    <p>Dec 14, 2021</p>
                                </div>
                            </div>
                            <div class="media latestPost">
                                <div class="media-left">
                                    <a href="#">
                                        <img src="${contextPath }/user/images/blog/lt2.png" alt="">
                                    </a>
                                </div>
                                <div class="media-body">
                                    <h5 class="heading">best site for sofas</h5>
                                    <p>Dec 14, 2021</p>
                                </div>
                            </div>
                            <div class="media latestPost">
                                <div class="media-left">
                                    <a href="#">
                                        <img src="${contextPath }/user/images/blog/lt3.png" alt="">
                                    </a>
                                </div>
                                <div class="media-body">
                                    <h5 class="heading">entertainment weeks</h5>
                                    <p>Dec 14, 2021</p>
                                </div>
                            </div>
                            <div class="media latestPost">
                                <div class="media-left">
                                    <a href="#">
                                        <img src="${contextPath }/user/images/blog/lt4.png" alt="">
                                    </a>
                                </div>
                                <div class="media-body">
                                    <h5 class="heading">people you may know</h5>
                                    <p>Dec 14, 2021</p>
                                </div>
                            </div>
                            <div class="media latestPost">
                                <div class="media-left">
                                    <a href="#">
                                        <img src="${contextPath }/user/images/blog/lt5.png" alt="">
                                    </a>
                                </div>
                                <div class="media-body">
                                    <h5 class="heading">manufacture tips -1</h5>
                                    <p>Dec 14, 2021</p>
                                </div>
                            </div>
                        </div> <!--Shortcode Element-->
                        
                        <div class="row m0 tags">
                            <h4 class="heading">tags</h4>
                            <ul class="nav tagsNav">
                                <li><a href="#">Art</a></li>
                                <li><a href="#">Beauty</a></li>
                                <li><a href="#">Business</a></li>
                                <li><a href="#">Gallery</a></li>
                                <li><a href="#">Games</a></li>
                                <li><a href="#">Images</a></li>
                                <li><a href="#">People</a></li>
                                <li><a href="#">Travelling</a></li>
                            </ul>
                        </div> <!--Shortcode Element-->
                        
                        <div class="row m0 flickrPhoto">
                            <h4 class="heading">flickr photostream</h4>
                            <ul class="list-inline">
                                <li><a href="#"><img src="${contextPath }/user/images/flickr/1.png" alt=""></a></li>
                                <li><a href="#"><img src="${contextPath }/user/images/flickr/2.png" alt=""></a></li>
                                <li><a href="#"><img src="${contextPath }/user/images/flickr/3.png" alt=""></a></li>
                                <li><a href="#"><img src="${contextPath }/user/images/flickr/4.png" alt=""></a></li>
                                <li><a href="#"><img src="${contextPath }/user/images/flickr/5.png" alt=""></a></li>
                                <li><a href="#"><img src="${contextPath }/user/images/flickr/6.png" alt=""></a></li>
                            </ul>
                        </div> <!--Shortcode Element-->
                    </div>
                </div>
            </div>
        </div>
    </section>