<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"
	value="${pageContext.servletContext.contextPath }" scope="session" />
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
		prefix="dec"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<section class="home-3-slider" >
         <div class="container-fluid">
            <div class="row home-3-slider-row">
               <div class="col-sm-8 p0">
                  <div class="home-3-slider-text text-center">
                     <h1 class="text-center">Diamond of special occasions</h1>
                     <p>We’re excited to introduce a new concept in contemporary fine jewelry: beautiful, buildable essential pieces that everyone can wear, at an accessible price point.</p>
                  </div>
                  <div id="carousel-thum" class="flexslider">
                    <ul class="slides">
                      <li>
                        <div class="home-3-slider-box">
                           <img alt="" src="${contextPath }/user/images/product/nhẫn-1.jpg" />
                           <div class="slider_caption">
                              <h5>new collections</h5>
                              <h3>Exquisite Designer Necklace</h3>
                              <a href="${pageContext.servletContext.contextPath }/shop">Shop now</a>  
                           </div>
                        </div>
                      </li>
                      <li>
                        <div class="home-3-slider-box">
                           <img alt="" src="${contextPath }/user/images/product/vong-1.jpg" />
                           <div class="slider_caption">
                              <h5>new collections</h5>
                              <h3>Exquisite Designer Necklace</h3>
                              <a href="${pageContext.servletContext.contextPath }/shop">Shop now</a>  
                           </div>
                        </div>
                      </li>
                      <li>
                        <div class="home-3-slider-box">
                           <img alt="" src="${contextPath }/user/images/product/day_chuyen_1.jpg" />
                           <div class="slider_caption">
                              <h5>new collections</h5>
                              <h3>Exquisite Designer Necklace</h3>
                              <a href="${pageContext.servletContext.contextPath }/shop">Shop now</a>  
                           </div>
                        </div>
                      </li>
                      <li>
                        <div class="home-3-slider-box">
                           <img alt="" src="${contextPath }/user/images/product/bong_tai_1.jpg" />
                           <div class="slider_caption">
                              <h5>new collections</h5>
                              <h3>Exquisite Designer Necklace</h3>
                              <a href="${pageContext.servletContext.contextPath }/shop">Shop now</a>  
                           </div>
                        </div>
                      </li>
                      <li>
                        <div class="home-3-slider-box">
                           <img alt="" src="${contextPath }/user/images/product/bo_trang_suc_1.jpg" />
                           <div class="slider_caption">
                              <h5>new collections</h5>
                              <h3>Exquisite Designer Necklace</h3>
                              <a href="${pageContext.servletContext.contextPath }/shop">Shop now</a>  
                           </div>
                        </div>
                      </li>                  
                    </ul>
                  </div>
               </div>

               <div class="col-sm-4 p0">
                  <div id="slider-thum" class="flexslider  homepage-3slider">
                       <ul class="slides">
                         <li>
                           <img style="height:700px;" alt="" src="${contextPath }/user/images/product/nhan-kim-cuong-tu-nhien-jemmia.vn_.jpg" />
                         </li>
                         <li>
                           <img style="height:700px;" alt="" src="${contextPath }/user/images/product/vong-tay-kim-cuong-tu-nhien-jemmia.vn_.jpg" />
                         </li>
                         <li>
                           <img style="height:700px;" alt="" src="${contextPath }/user/images/product/mat-day-chuyen-kim-cuong-tu-nhien-jemmia.vn_.jpg" />
                         </li>
                         <li>
                           <img style="height:700px;" alt="" src="${contextPath }/user/images/product/bong-tai-kim-cuong-tu-nhien-jemmia.vn_.jpg" />
                         </li>
                         <li>
                           <img style="height:700px;" alt="" src="${contextPath }/user/images/product/bo-trang-suc-kim-cuong-tu-nhien-jemmia.vn_.jpg" />
                         </li>
                         
                       </ul>
                     </div>
                  </div>

            </div>
         </div>
      </section> 

      


      <!-- Place somewhere in the <body> of your page -->
      

     
      <!-- Feature Products 4 Collumn-->
      <%-- <section id="featureCategory" class="row contentRowPad ">
         <div class="container">
            <div class="row m0 sectionTitle">
               <h3>our featured categories</h3>
               <h5>make easy shop with our categories</h5>
            </div>
            <div class="owl-carousel featureCats row m0">
               <div class="item">
                  <div class="row m0 imgHov">
                     <img src="${contextPath }/user/images/product/category/20.png" alt="">
                     <div class="row m0 hovArea">
                        <i class="fas fa-heart-o"></i><br>
                        <h4>11 items</h4>
                        <a href="product.html">shop now</a>
                     </div>
                  </div>
                  <div class="cat_h">
                     <a href="product.html">
                        <h4>Bracelets</h4>
                        <span>See the Collection</span>
                     </a>
                  </div>
               </div>
               <div class="item">
                  <div class="row m0 imgHov">
                     <img src="${contextPath }/user/images/product/category/17.png" alt="">
                     <div class="row m0 hovArea">
                        <i class="fas fa-heart-o"></i><br>
                        <h4>21 items</h4>
                        <a href="product.html">shop now</a>
                     </div>
                  </div>
                  <div class="cat_h">
                     <a href="product.html">
                        <h4>Rings</h4>
                        <span>See the Collection</span>
                     </a>
                  </div>
               </div>
               <div class="item">
                  <div class="row m0 imgHov">
                     <img src="${contextPath }/user/images/product/category/18.png" alt="">
                     <div class="row m0 hovArea">
                        <i class="fas fa-heart-o"></i><br>
                        <h4>30 items</h4>
                        <a href="product.html">shop now</a>
                     </div>
                  </div>
                  <div class="cat_h">
                     <a href="product.html">
                        <h4>cNecklaces</h4>
                        <span>See the Collection</span>
                     </a>
                  </div>
               </div>
               <div class="item">
                  <div class="row m0 imgHov">
                     <img src="${contextPath }/user/images/product/category/19.png" alt="">
                     <div class="row m0 hovArea">
                        <i class="fas fa-heart-o"></i><br>
                        <h4>55 items</h4>
                        <a href="product.html">shop now</a>
                     </div>
                  </div>
                  <div class="cat_h">
                     <a href="product.html">
                        <h4>Earrings</h4>
                        <span>See the Collection</span>
                     </a>
                  </div>
               </div>
               <div class="item">
                  <div class="row m0 imgHov">
                     <img src="${contextPath }/user/images/product/category/21.png" alt="">
                     <div class="row m0 hovArea">
                        <i class="fas fa-heart-o"></i><br>
                        <h4>21 items</h4>
                        <a href="product.html">shop now</a>
                     </div>
                  </div>
                  <div class="cat_h">
                     <a href="product.html">
                        <h4>Birthstones</h4>
                        <span>See the Collection</span>
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </section> --%>

      <section id="featureProducts" class="row contentRowPad pt-0 ">
         <div class="container">
            <div class="row sectionTitle">
               <h3>featured products</h3>
               <h5>know more about our latest collection</h5>
            </div>
            <div class="row m0">
            <c:forEach items = "${product }" var = "p">
               <div class="col-sm-3 product" style="margin-bottom: 10px;">
                  <div class="productInner row m0">
                     <div class="row m0 imgHov">
                        <img src="${contextPath }/${p.image}" alt="">

                        <div class="row m0 hovArea">
                            <img src="${contextPath }/${p.image}" alt="">
                           <div class="row m0 icons">
                              <ul class="list-inline">
                                 <li><a onclick="addfavourite('${p.productId}')" ><i class="fas fa-heart"></i></a></li>
                                 <li><a href="#"><i class="fas fa-shopping-cart-alt"></i></a></li>
                                 <li><a class="lightbox" href="${contextPath }/${p.image}"><i class="fas fa-expand"></i></a></li>
                              </ul>
                           </div>
                           <div class="row m0 proType"><a href="#">${p.cate.name }</a></div>
                           <div class="row m0 proRating">
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                           </div>
                           <div class="row m0 proPrice"><i class="fas fa-usd"></i><fmt:formatNumber value="${p.salePrice}"/>vnđ</div>
                        </div>
                     </div>
                     <div class="row m0 proName"><a class="title" href="${contextPath}/detail/${p.productId}">${p.name }</a></div>
                     <div class="row m0 proBuyBtn">
                        <button onclick="addBasket('${p.productId}')" class="addToCart btn">add to cart</button>
                     </div>
                  </div>
               </div>
               </c:forEach>
               </div>
               </div>
              <%--  <div class="col-sm-3 product">
                  <div class="productInner row m0">
                     <div class="row m0 imgHov">
                        <img src="${contextPath }/user/images/product/2.png" alt="">
                        <div class="row m0 hovArea">
                           <img src="${contextPath }/user/images/product/2a.png" alt="">
                           <div class="row m0 icons">
                              <ul class="list-inline">
                                 <li><a href="#"><i class="fas fa-heart"></i></a></li>
                                 <li><a href="#"><i class="fas fa-shopping-cart-alt"></i></a></li>
                                 <li><a href="#"><i class="fas fa-expand"></i></a></li>
                              </ul>
                           </div>
                           <div class="row m0 proType"><a href="#">Baccarat</a></div>
                           <div class="row m0 proRating">
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                           </div>
                           <div class="row m0 proPrice"><i class="fas fa-usd"></i>125.00</div>
                        </div>
                     </div>
                     <div class="row m0 proName"><a href="single-product.html">Donec aliquam</a></div>
                     <div class="row m0 proBuyBtn">
                        <a class="addToCart btn" href="#">add to cart</a>
                     </div>
                  </div>
               </div>
               <div class="col-sm-3 product">
                  <div class="productInner row m0">
                     <div class="row m0 imgHov">
                        <img src="${contextPath }/user/images/product/3.png" alt="">
                        <div class="row m0 hovArea">
                           <img src="${contextPath }/user/images/product/3a.png" alt="">
                           <div class="row m0 icons">
                              <ul class="list-inline">
                                 <li><a href="#"><i class="fas fa-heart"></i></a></li>
                                 <li><a href="#"><i class="fas fa-shopping-cart-alt"></i></a></li>
                                 <li><a href="#"><i class="fas fa-expand"></i></a></li>
                              </ul>
                           </div>
                           <div class="row m0 proType"><a href="#">Baccarat</a></div>
                           <div class="row m0 proRating">
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                           </div>
                           <div class="row m0 proPrice"><i class="fas fa-usd"></i>125.00</div>
                        </div>
                     </div>
                     <div class="row m0 proName"><a href="single-product.html">Gravida est</a></div>
                     <div class="row m0 proBuyBtn">
                        <button class="addToCart btn">add to cart</button>
                     </div>
                  </div>
               </div>
               <div class="col-sm-3 product">
                  <div class="productInner row m0">
                     <div class="row m0 imgHov">
                        <img src="${contextPath }/user/images/product/4.png" alt="">
                        <div class="row m0 hovArea">
                           <img src="${contextPath }/user/images/product/4a.png" alt="">
                           <div class="row m0 icons">
                              <ul class="list-inline">
                                 <li><a href="#"><i class="fas fa-heart"></i></a></li>
                                 <li><a href="#"><i class="fas fa-shopping-cart-alt"></i></a></li>
                                 <li><a href="#"><i class="fas fa-expand"></i></a></li>
                              </ul>
                           </div>
                           <div class="row m0 proType"><a href="#">Baccarat</a></div>
                           <div class="row m0 proRating">
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                           </div>
                           <div class="row m0 proPrice"><i class="fas fa-usd"></i>125.00</div>
                        </div>
                     </div>
                     <div class="row m0 proName"><a href="single-product.html">Maximus quam posuere</a></div>
                     <div class="row m0 proBuyBtn">
                        <button class="addToCart btn">add to cart</button>
                     </div>
                  </div>
               </div>
            </div>
         </div> --%>
      </section>

      <!--Feature Categories-->
      <%-- <section id="regalia" class="row contentRowPad pt-0 pb-0">
         <div class="container">
            <div class="row sectionTitle">
               <h3>Shop by brands</h3>
               <h5>shop over our best brands</h5>
            </div>
            <div class="row m0">
               <div class="col-sm-4 product">
                  <div class="productInner row m0">
                     <div class="row m0 imgHov">
                        <img src="${contextPath }/user/images/product/5.png" alt="">
                        
                     </div>
                     <div class="row m0 proName"><a href="product.html" >Maximus quam posuerea</a></div>
                     <div class="row m0 proBuyBtn">
                        <a href="product.html" class="addToCart btn">browse now</a>
                     </div>
                  </div>
               </div>
               <div class="col-sm-4 product">
                  <div class="productInner row m0">
                     <div class="row m0 imgHov">
                        <img src="${contextPath }/user/images/product/6.png" alt="">
                        
                     </div>
                     <div class="row m0 proName"><a href="product.html" >Gravida est</a></div>
                     <div class="row m0 proBuyBtn">
                        <a href="product.html" class="addToCart btn">browse now</a>
                     </div>
                  </div>
               </div>
               
               <div class="col-sm-4 product">
                  <div class="productInner row m0">
                     <div class="row m0 imgHov">
                        <img src="${contextPath }/user/images/product/8.png" alt="">
                        
                     </div>
                     <div class="row m0 proName"><a href="product.html" >Zenon cursus dignis</a></div>
                     <div class="row m0 proBuyBtn">
                       <a href="product.html" class="addToCart btn">browse now</a>
                     </div>
                  </div>
               </div>

               <div class="col-sm-4 product">
                  <div class="productInner row m0">
                     <div class="row m0 imgHov">
                        <img src="${contextPath }/user/images/product/7.png" alt="">
                        
                     </div>
                     <div class="row m0 proName"><a href="product.html" >Donec aliquam</a></div>
                     <div class="row m0 proBuyBtn">
                        <a href="product.html" class="addToCart btn">browse now</a>
                     </div>
                  </div>
               </div>

               <div class="col-sm-4 product">
                  <div class="productInner row m0">
                     <div class="row m0 imgHov">
                        <img src="${contextPath }/user/images/product/9.png" alt="">
                        
                     </div>
                     <div class="row m0 proName"><a href="product.html" >Jurabitur Kursus </a></div>
                     <div class="row m0 proBuyBtn">
                        <a href="product.html" class="addToCart btn">browse now</a>
                     </div>
                  </div>
               </div>
               <div class="col-sm-4 product">
                  <div class="productInner row m0">
                     <div class="row m0 imgHov">
                        <img src="${contextPath }/user/images/product/10.png" alt="">
                        
                     </div>
                     <div class="row m0 proName"><a href="product.html" >Feugiat Ex</a></div>
                     <div class="row m0 proBuyBtn">
                        <a href="product.html" class="addToCart btn">browse now</a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section> --%>
      <!--Feature Products 4 Collumn-->
      <section id="testimonialTabs" class="row contentRowPad pt-0">
         <div class="container">
            <div class="row sectionTitle">
               <h3>some words from our customers</h3>
               <h5>we satisfied more than 700 customers</h5>
            </div>
            <div class="row text-center">
               <div class="tab-content testiTabContent">
                  <div role="tabpanel" class="tab-pane active" id="testi1">
                     <p><span class="t_q_start">“</span> Regalia is really excellent site for jewellery. I am very happy with the Regalia products and dedicated services from them. Regalia is really excellent site for jewellery. <span class="t_q_end">”</span></p>
                     <h5 class="customerName">Dwayne johnson</h5>
                  </div>
                  <div role="tabpanel" class="tab-pane" id="testi2">
                     <p><span class="t_q_start">“</span> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vestibulum justo accumsan felis faucibus vestibulum. Integer a ex orci. Cras sit amet efficitur nisl, et vestibulum orci. <span class="t_q_end">”</span></p>
                     <h5 class="customerName">Jonh add</h5>
                  </div>
                  <div role="tabpanel" class="tab-pane" id="testi3">
                     <p><span class="t_q_start">“</span> Regalia is really excellent site for jewellery. I am very happy with the Regalia products and dedicated services from them. Regalia is really excellent site for jewellery. <span class="t_q_end">”</span></p>
                     <h5 class="customerName">william parker</h5>
                  </div>
                  <div role="tabpanel" class="tab-pane" id="testi4">
                     <p><span class="t_q_start">“</span> Donec in velit eget lacus convallis dapibus. Nulla ultrices nulla sit amet justo pretium, ut tristique diam ultrices. Nunc efficitur mauris sit amet imperdiet <span class="t_q_end">”</span></p>
                     <h5 class="customerName">Will smith</h5>
                  </div>
                  <div role="tabpanel" class="tab-pane" id="testi5">
                     <p><span class="t_q_start">“</span> Regalia is really excellent site for jewellery. I am very happy with the Regalia products and dedicated services from them. Regalia is really excellent site for jewellery. <span class="t_q_end">”</span></p>
                     <h5 class="customerName">Dwayne johnson</h5>
                  </div>
                  

               </div>
               <ul class="nav nav-tabs" role="tablist" id="testiTab">
                  <li role="presentation" class="active">
                     <a href="#testi1" aria-controls="testi1" role="tab" data-toggle="tab">
                     <img src="${contextPath }/user/images/testimonial/1.png" alt="">
                     </a>
                     <div class="testi_rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                     </div>
                  </li>
                  <li role="presentation">
                     <a href="#testi2" aria-controls="testi2" role="tab" data-toggle="tab">
                     <img src="${contextPath }/user/images/testimonial/2.png" alt="">
                     </a>
                     <div class="testi_rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                     </div>
                  </li>
                  <li role="presentation">
                     <a href="#testi3" aria-controls="testi3" role="tab" data-toggle="tab">
                     <img src="${contextPath }/user/images/testimonial/3.png" alt="">
                     </a>
                     <div class="testi_rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                     </div>
                  </li>
                  <li role="presentation">
                     <a href="#testi4" aria-controls="testi4" role="tab" data-toggle="tab">
                     <img src="${contextPath }/user/images/testimonial/4.png" alt="">
                     </a>
                     <div class="testi_rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                     </div>
                  </li>
                  <li role="presentation">
                     <a href="#testi5" aria-controls="testi5" role="tab" data-toggle="tab">
                     <img src="${contextPath }/user/images/testimonial/5.png" alt="">
                     </a>
                     <div class="testi_rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                     </div>
                  </li>
                  <li class=" tab_arrow">
                     
                  </li>
               </ul>
            </div>
         </div>
      </section>
      <!--Testimonial Tabs-->
      <section id="brands" class="row contentRowPad pt-0">
         <div class="container">
            <div class="row sectionTitle">
               <h3>our brands</h3>
               <h5>choose best with our favorite brands</h5>
            </div>
            <div class="row brands">
               <ul class="nav navbar-nav">
                  <li><a href="#"><img src="${contextPath }/user/images/brands/1.png" alt=""></a></li>
                  <li><a href="#"><img src="${contextPath }/user/images/brands/2.png" alt=""></a></li>
                  <li><a href="#"><img src="${contextPath }/user/images/brands/3.png" alt=""></a></li>
                  <li><a href="#"><img src="${contextPath }/user/images/brands/4.png" alt=""></a></li>
                  <li><a href="#"><img src="${contextPath }/user/images/brands/5.png" alt=""></a></li>
                  <li><a href="#"><img src="${contextPath }/user/images/brands/2.png" alt=""></a></li>
               </ul>
            </div>
         </div>
      </section>
      <section id="homeBlog" class="pt-0">
         <div class="container blog_j">
            <div class="row sectionTitle">
               <h3>Blog Updates</h3>
               <h5>we satisfied more than 700 customers</h5>
            </div>
            <div class="row m0">
               <div class="col-sm-12">
                  <div class="blog_inner single d-flex">
                     <div class="blog_j_img">
                        <img alt="" class="img-responsive"  src="${contextPath }/user/images/blog/blog6.png">
                        
                     </div>
                     <div class="blog_j_text">
                        <div class="blog_j_text_inner">
                           <h3><span>December 2021</span> Lovely Necklaces</h3>
                           <p>The DiamondShop Lovely Necklaces collection is a varied and vibrant selection of exceptionally designed pieces adorned with the brand’s renowned precision cut clear and color crystals. Our necklaces can be perfectly matched with a singular selection of earrings and bracelets.</p>
                           

                           <div class="btn_readmore">
                              <a  href="blog.html">Read more</a>
                           </div>

                        </div>
                        
                     </div>
                  </div>
               </div>
               <div class="col-sm-12">
                  <div class="row">
                     <div class="col-md-6">
                        <div class="blog_inner d-flex">
                           <div class="blog_j_img">
                              <img alt="" class="img-responsive"  src="${contextPath }/user/images/blog/blog1.png">
                              
                           </div>
                           <div class="blog_j_text">
                              <div class="blog_j_text_inner">
                           <h3><span>December 2021</span> Lovely Necklaces</h3>
                           <p>The DiamondShop Lovely Necklaces collection is a varied and .</p>
                           

                           <div class="btn_readmore">
                              <a  href="blog.html">Read more</a>
                           </div>

                        </div>
                           </div>
                        </div>
                        <div class="blog_inner d-flex">
                           <div class="blog_j_img">
                              <img alt="" class="img-responsive"  src="${contextPath }/user/images/blog/blog5.png">
                              
                           </div>
                           <div class="blog_j_text">
                              <div class="blog_j_text_inner">
                           <h3><span>December 2021</span> Lovely Necklaces</h3>
                           <p>The DiamondShop Lovely Necklaces collection is a varied and .</p>
                           

                           <div class="btn_readmore">
                              <a  href="blog.html">Read more</a>
                           </div>

                        </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <div class="blog_inner d-flex">
                           <div class="blog_j_img">
                              <img alt="" class="img-responsive"  src="${contextPath }/user/images/blog/blog7.png">
                              
                           </div>
                           <div class="blog_j_text">
                              <div class="blog_j_text_inner">
                           <h3><span>December 2021</span> Lovely Necklaces</h3>
                           <p>The DiamondShop Lovely Necklaces collection is a varied and .</p>
                           

                           <div class="btn_readmore">
                              <a  href="blog.html">Read more</a>
                           </div>

                        </div>
                           </div>
                        </div>
                        <div class="blog_inner d-flex">
                           <div class="blog_j_img">
                              <img alt="" class="img-responsive"  src="${contextPath }/user/images/blog/blog3.png">
                              
                           </div>
                           <div class="blog_j_text">
                              <div class="blog_j_text_inner">
                           <h3><span>December 2021</span> Lovely Necklaces</h3>
                           <p>The DiamondShop Lovely Necklaces collection is a varied and .</p>
                           

                           <div class="btn_readmore">
                              <a  href="blog.html">Read more</a>
                           </div>

                        </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>