<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="dec"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Customer</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<h1 class="text-center">Update Customer</h1>
		<form
			action="${pageContext.request.contextPath}/admin/customer/updateCustomer" method="post" enctype="multipart/form-data">
			<input type="hidden" name="customerId" value="${customer.customerId}" />
			<div class="form-group">
				<label for="">User Name</label> <input type="text" name="username"
					class="form-control" value="${customer.username}">
			</div>

			<div class="form-group">
				<label for="">Full Name</label> <input type="text" name="fullName"
					class="form-control" value="${customer.fullName}" />
			</div>

			<div class="form-group">
				<label for="">Avatar</label> <input type="file" name="file"
					class="form-control"> <img alt=""
					src="${pageContext.servletContext.contextPath}/${customer.avatar}"
					width="60px">
			</div>

			<label>Gender</label>
			<div class="form-group">
				<div class="form-check form-check-inline">
					<label class="form-check-label"> <input
						class="form-check-input" type="radio" name="gender" value="1"
						${customer.gender == 1 ? "checked" : "" }> Female
					</label>
				</div>
				<div class="form-check form-check-inline">
					<label class="form-check-label"> <input
						class="form-check-input" type="radio" name="gender" value="0"
						${customer.gender == 0 ? "checked" : "" }> Male
					</label>
				</div>
			</div>
			
			<div class="form-group">
				<label for="">Birthday</label> <input type="date" name="birthday"
					class="form-control" value="${customer.birthday}">
			</div>

			<div class="form-group">
				<label for="">Email</label>
				<input type="text" name="email" class="form-control" value="${customer.email}">
			</div>

			<div class="form-group">
				<label for="">Password</label>
				<input type="password" name="password" class="form-control" value="${customer.password}">
			</div>

			<div class="form-group">
				<label for="">Address</label> <input type="text" name="address"
					class="form-control" value="${customer.address}" />

			</div>

			<div class="form-group">
				<label for="name">Phone</label> <input name="phone" type="number"
					class="form-control" value="${customer.phone}" />
			</div>
			
			<div class="form-group">
				<label for="name">Active</label> <input name="active" type="number"
					class="form-control" value="${customer.active}">
			</div>
			
			<div class="form-group">
			<label for="name">Role</label> <input name="role" type="hidden"
					class="form-control" value="${customer.role}">
			</div>

			<div class="form-group mb-1 p-3">
				<a href="#" class="border-0 btn btn-outline-danger mr-1"> <span
					class="btn-icon-wrapper pr-1 opacity-8"> <i
						class="fa fa-times fa-w-20"></i>
				</span> <span>Cancel</span>
				</a>

				<button type="submit"
					class="btn-shadow btn-hover-shine btn btn-primary">
					<span class="btn-icon-wrapper pr-2 opacity-8"> <i
						class="fa fa-download fa-w-20"></i>
					</span> <span>Save</span>
				</button>
			</div>

			<!-- <button type="submit" class="btn btn-primary">Submit</button> -->
		</form>
	</div>
</body>
</html>