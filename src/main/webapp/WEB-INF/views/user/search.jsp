<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value ="${pageContext.servletContext.contextPath }" scope = "session" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="dec"%>
  <section id="breadcrumbRow" class="row">
        <h2>product page</h2>
        <div class="row pageTitle m0">
            <div class="container">
                <h4 class="fleft">product page</h4>
                <ul class="breadcrumb">
                    <li><a href="index-2.html">home</a></li>
                    <li class="active">product page</li>
                </ul>
            </div>
        </div>
    </section>
    
    <section class="row contentRowPad ">
        <div class="container">
            <div class="row">
             <c:forEach items = "${product }" var = "p">
                <div class="col-sm-4 product2">
                    <div class="row m0 thumbnail">
                        <div class="row m0 imgHov">
                            <img src="${contextPath }/${p.image}" alt="">
                            <div class="hovArea row m0">
                                <div class="links row m0">
                                    <a href="single-product.html"><i class="fas fa-link"></i></a>
                                    <a class="lightbox" href="${contextPath }/${p.image}" data-lightbox="product1" data-title="Maximus quam posuere"><i class="fas fa-expand"></i></a>
                                </div>
                                <div class="row m0 getlike">
                                    <a href="#" onclick="addBasket('${p.productId}')" class="fleft"><i class="fas fa-shopping-cart"></i> Add to cart</a>
                                    <a href="#" class="fright"><i class="fas fa-shopping-cart-alt"></i></a>
                                    <a href="#" class="fright"><i class="far fa-heart"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="row m0 productIntro">
                            <h5 class="heading"><a href="${contextPath}/detail/${p.productId}">${p.name }</a> <span><del><fmt:formatNumber value="${p.price}"/>vnđ</del> <fmt:formatNumber value="${p.salePrice}"/>vnđ</span></h5>
                            <h5 class="proCat">${p.cate.name }</h5>
                            <div class="row stars m0">
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <span class="vote">(8)</span>
                            </div>                            
                        </div>
                    </div>
                </div>
                 <!--Product 2-->
                </c:forEach>
                 
                
                
					</div>
					<div>
					<c:forEach items="${list }" var="page">
						<a href="shop?page=${page}">${page}</a>&nbsp;&nbsp;|&nbsp;&nbsp;
					</c:forEach>
        			</div>  
                <%-- <div class="col-sm-4 product2">
                    <div class="row m0 thumbnail">
                        <div class="row m0 imgHov">
                            <img src="images/product/pro2p/2.png" alt="">
                            <div class="hovArea row m0">
                                <div class="links row m0">
                                    <a href="single-product.html"><i class="fas fa-link"></i></a>
                                    <a class="lightbox" href="${contextPath }/user/images/product/pro2p/2.png" data-lightbox="product2" data-title="Donec aliquam"><i class="fas fa-expand"></i></a>
                                </div>
                                <div class="row m0 getlike">
                                    <a href="#" class="fleft"><i class="fas fa-shopping-cart"></i> Add to cart</a>
                                    <a href="#" class="fright"><i class="fas fa-shopping-cart-alt"></i></a>
                                    <a href="#" class="fright"><i class="far fa-heart"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="row m0 productIntro">
                            <h5 class="heading"><a href="single-product.html">Donec aliquam</a> <span>$180</span></h5>
                            <h5 class="proCat">Nosering</h5>
                            <div class="row stars m0">
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <span class="vote">(8)</span>
                            </div>                            
                         </div>
                    </div>
                </div> <!--Product 2-->
                <div class="col-sm-4 product2">
                    <div class="row m0 thumbnail">
                        <div class="row m0 imgHov">
                            <img src="images/product/pro2p/3.png" alt="">
                            <div class="hovArea row m0">
                                <div class="links row m0">
                                    <a href="single-product.html"><i class="fas fa-link"></i></a>
                                    <a class="lightbox" href="${contextPath }/user/images/product/pro2p/3.png" data-lightbox="product3" data-title="FAMILY DINING TABLE"><i class="fas fa-expand"></i></a>
                                </div>
                                <div class="row m0 getlike">
                                    <a href="#" class="fleft"><i class="fas fa-shopping-cart"></i> Add to cart</a>
                                    <a href="#" class="fright"><i class="fas fa-shopping-cart-alt"></i></a>
                                    <a href="#" class="fright"><i class="far fa-heart"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="row m0 productIntro">
                            <h5 class="heading"><a href="single-product.html">quam posuere</a> <span><del>$240</del> $180</span></h5>
                            <h5 class="proCat">Pendant</h5>
                            <div class="row stars m0">
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <span class="vote">(8)</span>
                            </div>                            
                        </div>
                    </div>
                </div> <!--Product 2-->
                <div class="col-sm-4 product2">
                    <div class="row m0 thumbnail">
                        <div class="row m0 imgHov">
                            <img src="images/product/pro2p/4.png" alt="">
                            <div class="hovArea row m0">
                                <div class="links row m0">
                                    <a href="single-product.html"><i class="fas fa-link"></i></a>
                                    <a class="lightbox" href="${contextPath }/user/images/product/pro2p/4.png" data-lightbox="product4" data-title="WOW SOFAS"><i class="fas fa-expand"></i></a>
                                </div>
                                <div class="row m0 getlike">
                                    <a href="#" class="fleft"><i class="fas fa-shopping-cart"></i> Add to cart</a>
                                    <a href="#" class="fright"><i class="fas fa-shopping-cart-alt"></i></a>
                                    <a href="#" class="fright"><i class="far fa-heart"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="row m0 productIntro">
                            <h5 class="heading"><a href="single-product.html">
quam posuere</a> <span>$1180</span></h5>
                            <h5 class="proCat">Costume Jewellery</h5>
                            <div class="row stars m0">
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <span class="vote">(8)</span>
                            </div>                            
                        </div>
                    </div>
                </div> <!--Product 2-->
                <div class="col-sm-4 product2">
                    <div class="row m0 thumbnail">
                        <div class="row m0 imgHov">
                            <img src="images/product/pro2p/5.png" alt="">
                            <div class="hovArea row m0">
                                <div class="links row m0">
                                    <a href="single-product.html"><i class="fas fa-link"></i></a>
                                    <a class="lightbox" href="${contextPath }/user/images/product/pro2p/5.png" data-lightbox="product5" data-title="JOY OFFICE FURNITURE"><i class="fas fa-expand"></i></a>
                                </div>
                                <div class="row m0 getlike">
                                    <a href="#" class="fleft"><i class="fas fa-shopping-cart"></i> Add to cart</a>
                                    <a href="#" class="fright"><i class="fas fa-shopping-cart-alt"></i></a>
                                    <a href="#" class="fright"><i class="far fa-heart"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="row m0 productIntro">
                            <h5 class="heading"><a href="single-product.html">Maximus quam posuere</a> <span>$780</span></h5>
                            <h5 class="proCat">wedding ring</h5>
                            <div class="row stars m0">
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <span class="vote">(8)</span>
                            </div>                            
                        </div>
                    </div>
                </div> <!--Product 2-->
                <div class="col-sm-4 product2">
                    <div class="row m0 thumbnail">
                        <div class="row m0 imgHov">
                            <img src="images/product/pro2p/6.png" alt="">
                            <div class="hovArea row m0">
                                <div class="links row m0">
                                    <a href="single-product.html"><i class="fas fa-link"></i></a>
                                    <a class="lightbox" href="${contextPath }/user/images/product/pro2p/6.png" data-lightbox="product6" data-title="COMFORTABLE SOFAS"><i class="fas fa-expand"></i></a>
                                </div>
                                <div class="row m0 getlike">
                                    <a href="#" class="fleft"><i class="fas fa-shopping-cart"></i> Add to cart</a>
                                    <a href="#" class="fright"><i class="fas fa-shopping-cart-alt"></i></a>
                                    <a href="#" class="fright"><i class="far fa-heart"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="row m0 productIntro">
                            <h5 class="heading"><a href="single-product.html">Maximus quam posuere</a> <span>$920</span></h5>
                            <h5 class="proCat">nosering</h5>
                            <div class="row stars m0">
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <span class="vote">(8)</span>
                            </div>                            
                        </div>
                    </div>
                </div> <!--Product 2-->
                <div class="col-sm-4 product2">
                    <div class="row m0 thumbnail">
                        <div class="row m0 imgHov">
                            <img src="images/product/pro2p/7.png" alt="">
                            <div class="hovArea row m0">
                                <div class="links row m0">
                                    <a href="single-product.html"><i class="fas fa-link"></i></a>
                                    <a class="lightbox" href="${contextPath }/user/images/product/pro2p/7.png" data-lightbox="product7" data-title="HOME SOFAS"><i class="fas fa-expand"></i></a>
                                </div>
                                <div class="row m0 getlike">
                                    <a href="#" class="fleft"><i class="fas fa-shopping-cart"></i> Add to cart</a>
                                    <a href="#" class="fright"><i class="fas fa-shopping-cart-alt"></i></a>
                                    <a href="#" class="fright"><i class="far fa-heart"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="row m0 productIntro">
                            <h5 class="heading"><a href="single-product.html">Maximus posuere</a> <span><del>$240</del> $180</span></h5>
                            <h5 class="proCat">pendant</h5>
                            <div class="row stars m0">
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <span class="vote">(8)</span>
                            </div>                            
                        </div>
                    </div>
                </div> <!--Product 2-->
                <div class="col-sm-4 product2">
                    <div class="row m0 thumbnail">
                        <div class="row m0 imgHov">
                            <img src="images/product/pro2p/8.png" alt="">
                            <div class="hovArea row m0">
                                <div class="links row m0">
                                    <a href="single-product.html"><i class="fas fa-link"></i></a>
                                    <a class="lightbox" href="${contextPath }/user/images/product/pro2p/8.png" data-lightbox="product8" data-title="PURE QUALITY BED"><i class="fas fa-expand"></i></a>
                                </div>
                                <div class="row m0 getlike">
                                    <a href="#" class="fleft"><i class="fas fa-shopping-cart"></i> Add to cart</a>
                                    <a href="#" class="fright"><i class="fas fa-shopping-cart-alt"></i></a>
                                    <a href="#" class="fright"><i class="far fa-heart"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="row m0 productIntro">
                            <h5 class="heading"><a href="single-product.html">posuere</a> <span>$580</span></h5>
                            <h5 class="proCat">costume jewellery</h5>
                            <div class="row stars m0">
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <span class="vote">(8)</span>
                            </div>                            
                        </div>
                    </div>
                </div> <!--Product 2-->
                <div class="col-sm-4 product2">
                    <div class="row m0 thumbnail">
                        <div class="row m0 imgHov">
                            <img src="images/product/pro2p/9.png" alt="">
                            <div class="hovArea row m0">
                                <div class="links row m0">
                                    <a href="single-product.html"><i class="fas fa-link"></i></a>
                                    <a class="lightbox" href="${contextPath }/user/images/product/pro2p/9.png" data-lightbox="product9" data-title="COLORFUL SOFAS"><i class="fas fa-expand"></i></a>
                                </div>
                                <div class="row m0 getlike">
                                    <a href="#" class="fleft"><i class="fas fa-shopping-cart"></i> Add to cart</a>
                                    <a href="#" class="fright"><i class="fas fa-shopping-cart-alt"></i></a>
                                    <a href="#" class="fright"><i class="far fa-heart"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="row m0 productIntro">
                            <h5 class="heading"><a href="single-product.html">Maximus</a> <span><del>$240</del> $180</span></h5>
                            <h5 class="proCat">category</h5>
                            <div class="row stars m0">
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star stared"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <span class="vote">(8)</span>
                            </div>                            
                        </div>
                    </div> --%>
                </div> <!--Product 2-->
           
    </section>