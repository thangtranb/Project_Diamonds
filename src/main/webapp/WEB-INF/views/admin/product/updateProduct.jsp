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
<title>Update Product</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<h1 class="text-center">
			<spring:message code="addNewCourse" text="Update Product" />
		</h1>
		<f:form action="${pageContext.request.contextPath}/admin/product/updateProduct"
			method="post" enctype="multipart/form-data" modelAttribute="product">
			<input type="hidden" name="productId" value="${product.productId}" />
			<div class="form-group">
				<label for=""><spring:message code="courseName"
						text="Product Name" /></label> <input type="text" name="name"
					class="form-control" placeholder="Product Name.." value="${product.name}">
			</div>

			<div class="form-group">
				<label for="">Image</label> <input type="file" name="file"
					class="form-control" /> <img alt=""
					src="${pageContext.servletContext.contextPath}/${product.image}"
					width="60px">

			</div>

			<div class="form-group">
				<label for="description"
					class="col-md-3 text-md-right col-form-label"><spring:message
						code="description" text="Description" /></label>
				<textarea name="description" cols="132" rows="5">${product.description}</textarea>
			</div>

			<div class="form-group">
				<label for="name"><spring:message code="startDate"
						text="Carat" /></label> <input name="carat" type="number"
					class="form-control" value="${product.carat}">
			</div>

			<div class="form-group">
				<label for="name" class="col-md-3 text-md-right col-form-label"><spring:message
						code="endDate" text="Clarity" /></label> <input name="clarity"
					type="text" class="form-control" value="${product.clarity}">
			</div>

			<div class="form-group">
				<label for="name" class="col-md-3 text-md-right col-form-label"><spring:message
						code="numberOfStudent" text="Cut" /></label> <input name="cut"
					type="text" class="form-control" value="${product.cut}">
			</div>
			<div class="form-group">
				<label for="name" class="col-md-3 text-md-right col-form-label"><spring:message
						code="price" text="Luminescent" /></label> <input name="luminescent" type="text"
					class="form-control" value="${product.luminescent}">
			</div>
			<div class="form-group">
				<label for="name" class="col-md-3 text-md-right col-form-label"><spring:message
						code="price" text="Shape" /></label> <input name="shape" type="text"
					class="form-control" value="${product.shape}">
			</div>
			<div class="form-group">
				<label for="name" class="col-md-3 text-md-right col-form-label"><spring:message
						code="price" text="Size" /></label> <input name="size" type="number" value="${product.size}"
					class="form-control">
			</div>
			<div class="form-group">
				<label for="name" class="col-md-3 text-md-right col-form-label"><spring:message
						code="price" text="Height" /></label> <input name="height" type="number"
					class="form-control" value="${product.height}">
			</div>
			<div class="form-group">
				<label for="name" class="col-md-3 text-md-right col-form-label"><spring:message
						code="price" text="Color" /></label> <input name="color" type="text"
					class="form-control" value="${product.color}">
			</div>

			<div class="form-group">
				<label for="name" class="col-md-3 text-md-right col-form-label"><spring:message
						code="price" text="Price" /></label> <input name="price" type="number"
					class="form-control" value="${product.price}">
			</div>
			
			<div class="form-group">
				<label for="name" class="col-md-3 text-md-right col-form-label"><spring:message
						code="price" text="Sale Price" /></label> <input name="salePrice" type="number"
					class="form-control" value="${product.salePrice}">
			</div>
			
			<div class="form-group">
				<label for="name" class="col-md-3 text-md-right col-form-label"><spring:message
						code="price" text="Stock Quantity" /></label> <input name="stockQuantity" type="number"
					class="form-control" value="${product.stockQuantity}">
			</div>

			<div class="form-group">
				<label for="name" class="col-md-3 text-md-right col-form-label"><spring:message
						code="schedule" text="Created At" /></label> <input name="createdAt"
					 type="date" class="form-control" value="${product.createdAt}">${product.createdAt}
			</div>
			
			<div class="form-group">
				<label for="name" class="col-md-3 text-md-right col-form-label"><spring:message
						code="schedule" text="Updated At" /></label> <input name="updatedAt"
					 type="date" class="form-control" value="${product.updatedAt}">${product.updatedAt}
			</div>
			<div class="form-group">
				<label for="name" class="col-md-3 text-md-right col-form-label"><spring:message
						code="schedule" text="Category" /></label> <f:select path="cate.categoryId" class="form-select">
											<f:options items="${listCat }" itemLabel="name"
												itemValue="categoryId" />
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