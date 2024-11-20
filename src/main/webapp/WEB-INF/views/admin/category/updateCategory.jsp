<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="dec"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Category</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<h1 class="text-center">
			<spring:message code="addNewCourse" text="Add New Category" />
		</h1>
		<form action="${pageContext.request.contextPath}/admin/category/updateCategory"
			method="post" enctype="multipart/form-data">
			<input type="hidden" name="categoryId" value="${category.categoryId}" />
			<div class="form-group">
				<label for=""><spring:message code="courseName"
						text="Category Name" /></label> <input type="text" name="name"
					class="form-control" placeholder="Category Name.."
					value="${category.name}">
			</div>

			<div class="form-group">
				<label for="">Image</label> <input type="file" name="file"
					class="form-control" /> <img alt=""
					src="${pageContext.servletContext.contextPath}/admin/images/category/${category.image}"
					width="60px">

			</div>
			<div class="form-group mb-1 p-3">
				<a href="#" class="border-0 btn btn-outline-danger mr-1"> <span
					class="btn-icon-wrapper pr-1 opacity-8"> <i
						class="fa fa-times fa-w-20"></i>
				</span> <span><spring:message code="clear" text="Clear" /></span>
				</a>

				<button type="submit"
					class="btn-shadow btn-hover-shine btn btn-primary">
					<span class="btn-icon-wrapper pr-2 opacity-8"> <i
						class="fa fa-download fa-w-20"></i>
					</span> <span><spring:message code="insert" text="Insert" /></span>
				</button>
			</div>

			<!-- <button type="submit" class="btn btn-primary">Submit</button> -->
		</form>
	</div>
</body>
</html>