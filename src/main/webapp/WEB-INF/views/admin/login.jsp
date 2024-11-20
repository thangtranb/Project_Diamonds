<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="dec"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath }" scope="session" />
<div class="row h-80 align-items-center justify-content-center" >
 <div class="col-12 col-sm-10 col-md-10 col-lg-10 col-xl-10">
 <div class="bg-light rounded p-4 p-sm-5 my-4 mx-3">
                        <div class="d-flex align-items-center justify-content-between mb-3">
                            <h3 style="margin: auto;">Sign In</h3>
                        </div>
                        <p style="text-align:center; text:center; color: red";>${msg}</p>
                        <form action="${pageContext.servletContext.contextPath }/admin/login" method="post">
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="floatingInput" name="username" placeholder="your username...">
                            <label for="floatingInput">User name</label>
                        </div>
                        <div class="form-floating mb-4">
                            <input type="password" class="form-control" id="floatingPassword" name="password" placeholder="your password">
                            <label for="floatingPassword">Password</label>
                        </div>
                        
                        <button type="submit" class="btn btn-primary py-3 w-100 mb-4">Sign In</button>
                      
                        </form>
           </div>
           </div>
           </div>