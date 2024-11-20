<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value ="${pageContext.servletContext.contextPath }" scope = "session" />

    
 <section id="breadcrumbRow" class="row">
         <h2>404</h2>
         <div class="row pageTitle m0">
            <div class="container">
               <h4 class="fleft">404</h4>
               <ul class="breadcrumb">
                  <li><a href="${contextPath }/home">home</a></li>
                  <li class="active">404</li>
               </ul>
            </div>
         </div>
      </section>
      <section id="page404" class="row contentRowPad">
         <div class="container">
            <img src="${contextPath }/user/images/404.png" alt="">
            <h1>Error 404</h1>
            <h2>Oops! page not found</h2>
         </div>
      </section>