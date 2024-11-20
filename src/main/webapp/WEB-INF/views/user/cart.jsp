<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value ="${pageContext.servletContext.contextPath }" scope = "session" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
   <section id="breadcrumbRow" class="row">
         <h2>cart</h2>
         <div class="row pageTitle m0">
            <div class="container">
               <h4 class="fleft">cart</h4>
               <ul class="breadcrumb">
                  <li><a href="index-2.html">home</a></li>
                  <li class="active">cart</li>
               </ul>
            </div>
         </div>
      </section>
      <section class="row contentRowPad">
         <div class="container">
            <div class=" cartPage">
               <h3 class="heading pageHeading">Shopping cart</h3>
               <p style="color:red">${msg}</p>
               <div class="table-responsive cartTable row m0">
                  <table class="table">
                     <thead>
                        <tr>
                           <th class="productImage">Product image</th>
                           <th class="productName">Product name</th>
                           
                           <th>price</th>
                           <th>quantity</th>
                           <th>total</th>
                           <th>remove</th>
                        </tr>
                     </thead>
                     <tbody>
                     <c:forEach items="${carts}" var="c">
                        <tr class="alert" role="alert">
                        
                           <td class="productImage"><img src="${contextPath}/${c.image}" alt=""></td>
                           <td class="productName">
                           
                              <a href="${contextPath}/detail/${c.productId}"><h6 class="heading">${c.name }</h6></a>
                              <div class="row descList m0">
                                 <!-- <dl class="dl-horizontal">
                                    <dt>manufacturer :</dt>
                                    <dd>Tartaan & Co</dd>
                                    <dt>product code :</dt>
                                    <dd>Xuo15</dd>
                                    <dt>color :</dt>
                                    <dd>Black</dd>
                                    <dt>size :</dt>
                                    <dd>Queen</dd>
                                 </dl> -->
                              </div>
                           </td>
                           
                           <td class="price"><fmt:formatNumber value="${c.salePrice}"/>vnđ</td>
                           <td>
                              <div class="input-group spinner">
                                 <input type="number" class="form-control" onchange="updateBasket('${c.productId}',this.value)" value="${c.stockQuantity}" min="1" max="100">
                                 <!-- <div class="input-group-btn-vertical">
                                    <button class="btn btn-default"><i class="fas fa-angle-up"></i></button>
                                    <button class="btn btn-default"><i class="fas fa-angle-down"></i></button>
                                 </div> -->
                              </div>
                           </td>
                           <td class="price"><fmt:formatNumber value="${c.salePrice*c.stockQuantity}"/>vnđ</td>
                           <c:set var="total" value="${total+c.salePrice*c.stockQuantity}" />
                           <td><a href="#" class="edit" onclick="removeItem('${c.productId}')" data-dismiss="alert" aria-label="Close"><i class="far fa-trash-alt"></i></a></td>
                           
                        </tr>
                        </c:forEach>
                        <!-- <tr class="alert" role="alert">
                           <td><img src="images/product/single/l3.png" alt=""></td>
                           <td>
                              <h6 class="heading">office furnitures</h6>
                              <div class="row descList m0">
                                 <dl class="dl-horizontal">
                                    <dt>manufacturer :</dt>
                                    <dd>Tartaan & Co</dd>
                                    <dt>product code :</dt>
                                    <dd>Xuo15</dd>
                                    <dt>color :</dt>
                                    <dd>Black</dd>
                                    <dt>size :</dt>
                                    <dd>Queen</dd>
                                 </dl>
                              </div>
                           </td>
                           <td><a href="#" class="edit"><i class="fas fa-edit"></i></a></td>
                           <td class="price">$420</td>
                           <td>
                              <div class="input-group spinner">
                                 <input type="text" class="form-control" value="1">
                                 <div class="input-group-btn-vertical">
                                    <button class="btn btn-default"><i class="fas fa-angle-up"></i></button>
                                    <button class="btn btn-default"><i class="fas fa-angle-down"></i></button>
                                 </div>
                              </div>
                           </td>
                           <td class="price">$420</td>
                           <td><a href="#" class="edit" data-dismiss="alert" aria-label="Close"><i class="far fa-trash-alt"></i></a></td>
                        </tr>-->
                     </tbody>
                     <tfoot>
                        <tr>
                           <td colspan="7">
                              <a href="${pageContext.servletContext.contextPath }/home" class="btn btn-primary btn-lg">continue shopping</a>
     
                      
                           </td>
                        </tr> 
                     </tfoot>
                  </table>
               </div>
               
                 
                     <form class="row m0 shippingTax" action="ordered" method="post">
                  <div class="row m0">
                    <div class="col-sm-8">
                        <h5 class="heading">order information</h5>
                        
                        
                        <div class="form-group">
                           <label for="country3">Full Name:</label>
                           <input id="country3" type="text" name="fullName" value="${sessionScope.fullName}"  class="form-control">
                        </div>
                        
                         <div class="form-group">
                           <label for="country3">Address:</label>
                           <input type="text" id="country3" name="address" value="${sessionScope.address}" class="form-control">
                        </div>
                        
                        <div class="form-group">
                           <label for="country3">Phone Number:</label>
                           <input type="number" id="country3" name="phone"  value="${sessionScope.phone}" class="form-control">
                        </div>
                      </div>
                      <div class="col-sm-4">
                     <div class="row m0 totalCheckout">
                        <div class="descList row m0">
                           <dl class="dl-horizontal">
                              <!-- <dt>Subtotal</dt>
                              <dd>$1260</dd> -->
                              <dt class="gt">Grand Total</dt>
                              <dd><fmt:formatNumber value="${total}"/>vnđ</dd>
                           </dl>
                        </div>
                        <button class="btn btn-default btn-sm">Proceed to Checkout</a>
                     </div>
                  </div>
                    </div>
                     </form>
                  
                  
               
            </div>
         </div>
      </section>