<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"
	value="${pageContext.servletContext.contextPath }" scope="session" />
<section id="breadcrumbRow" class="row">
	<h2>Login</h2>
	<div class="row pageTitle m0">
		<div class="container">
			<h4 class="fleft">Login</h4>
			<ul class="breadcrumb">
				<li><a href="${contextPath }/home">home</a></li>
				<li class="active">Login</li>
			</ul>
		</div>
	</div>
</section>
<section class="row contentRowPad">
	<div class="container">
	<div style="width:800px;margin:auto;padding:20px;">
		<h4 class="title-group text-uppercase" style="font-size: 30px; margin:auto; text-align:center; color: #c1a89f;">Login</h4>
		<p style="color: red;">${msg}</p>
		<form action="${contextPath}/dang-nhap" method="post">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Tên đăng nhập"
					name="username">
			</div>
			<div class="form-group">
				<input type="password" class="form-control" placeholder="Mật khẩu"
					name="password">
			</div>
			<button type="submit" class="btn btn-primary" style="width:100%;">Login</button>
			<p class="text-muted mt-5 mb-0">
				Have already an account? <a href="${contextPath}/dang-ki"
					class="fw-bold text-body">Register here</a>
			</p>
		</form>
	</div>
	</div>
</section>
