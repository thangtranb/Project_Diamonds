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
<title>Insert Product</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<h1 class="text-center">
			<spring:message code="addNewCourse" text="Add New Product" />
		</h1>
		<f:form action="${pageContext.request.contextPath}/admin/product/save"
			method="post" enctype="multipart/form-data" modelAttribute="product">
			<div class="form-group">
				<label for=""><spring:message code="courseName"
						text="Product Name" /></label> 
						<f:input type="text" path="name"
					class="form-control"/>
			</div>

			<div class="form-group">
				<label for=""><spring:message code="image" text="Image" /></label>
				<input type="file" name="file" class="form-control"/>

			</div>

			<div class="form-group">
				<label for="description"
					class="col-md-3 text-md-right col-form-label"><spring:message
						code="description" text="Description" /></label>
				<f:textarea path="description" cols="132" rows="5"></f:textarea>
			</div>

			<div class="form-group">
				<label for="name"><spring:message code="startDate"
						text="Carat" /></label> <f:input path="carat" type="number"
					class="form-control"/>
			</div>

			<div class="form-group">
				<label for="name" class="col-md-3 text-md-right col-form-label"><spring:message
						code="endDate" text="Clarity" /></label> <f:input path="clarity"
					type="text" class="form-control"/>
			</div>

			<div class="form-group">
				<label for="name" class="col-md-3 text-md-right col-form-label"><spring:message
						code="numberOfStudent" text="Cut" /></label> <f:input path="cut"
					type="text" class="form-control"/>
			</div>
			<div class="form-group">
				<label for="name" class="col-md-3 text-md-right col-form-label"><spring:message
						code="price" text="Luminescent" /></label> <f:input path="luminescent" type="text"
					class="form-control"/>
			</div>
			<div class="form-group">
				<label for="name" class="col-md-3 text-md-right col-form-label"><spring:message
						code="price" text="Shape" /></label> <f:input path="shape" type="text"
					class="form-control"/>
			</div>
			<div class="form-group">
				<label for="name" class="col-md-3 text-md-right col-form-label"><spring:message
						code="price" text="Size" /></label> <f:input path="size" type="number"
					class="form-control"/>
			</div>
			<div class="form-group">
				<label for="name" class="col-md-3 text-md-right col-form-label"><spring:message
						code="price" text="Height" /></label> <f:input path="height" type="number"
					class="form-control"/>
			</div>
			<div class="form-group">
				<label for="name" class="col-md-3 text-md-right col-form-label"><spring:message
						code="price" text="Color" /></label> <f:input path="color" type="text"
					class="form-control"/>
			</div>

			<div class="form-group">
				<label for="name" class="col-md-3 text-md-right col-form-label"><spring:message
						code="price" text="Price" /></label> <f:input path="price" type="number"
					class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="name" class="col-md-3 text-md-right col-form-label"><spring:message
						code="price" text="Sale Price" /></label> <f:input path="salePrice" type="number"
					class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="name" class="col-md-3 text-md-right col-form-label"><spring:message
						code="price" text="Stock Quantity" /></label> <f:input path="stockQuantity" type="number"
					class="form-control"/>
			</div>

			<div class="form-group">
				<label for="name" class="col-md-3 text-md-right col-form-label"><spring:message
						code="schedule" text="Created At" /></label> <f:input path="createdAt"
					 type="date" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="name" class="col-md-3 text-md-right col-form-label"><spring:message
						code="schedule" text="Updated At" /></label> <f:input path="updatedAt"
					 type="date" class="form-control"/>
			</div>
			<div class="form-group">
				<label for="name" class="col-md-3 text-md-right col-form-label"><spring:message
						code="schedule" text="Category" /></label> 
						<f:select path="cate.categoryId" class="form-select">
						<f:options items="${listCat}" itemLabel="name" itemValue="categoryId"/>
					</f:select>
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
		</f:form>
	</div>
</body>
</html>