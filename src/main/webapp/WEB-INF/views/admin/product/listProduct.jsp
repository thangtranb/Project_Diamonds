<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="dec"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="contextPath"
	value="${pageContext.servletContext.contextPath}" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Products Pages</title>
</head>
<body>
	<div class="container-fluid pt-4 px-4">
		<div class="row">
			<div class="col-sm-12 col-xl-12">
				<div class="bg-light rounded h-100 p-4">
					
					<h6 class="mb-4">
						<spring:message code="courseTable" text="Product Table" />
					</h6>
					
					<div class="card-header mr-3 d-flex justify-content-between">
					<div>
						<a class="btn btn-primary" href="product/insertProduct"
						role="button"><spring:message code="addNewCourse"
							text="Add New Product" /></a>
					</div>
						<form method="post"
							action="${pageContext.request.contextPath}/admin/product/search">
							<div class="input-group">
								<div class="form-outline" data-mdb-input-init>
									<input type="search" id="search" name="key"
										class="form-control" placeholder="Search.." />
								</div>
								<button type="button" class="btn btn-primary"
									data-mdb-ripple-init>
									<i class="fas fa-search"></i>
								</button>
							</div>
						</form>
					</div>
					<table class="table">
						<thead>
							<tr>
								<th scope="col"><spring:message code="courseId"
										text="Product Id" /></th>
								<th scope="col"><spring:message code="courseName"
										text=" Name" /></th>
								<th scope="col"><spring:message code="image"
										text="Image" /></th>
								<%-- <th scope="col"><spring:message code="description"
										text="Description" /></th> --%>
								<th scope="col"><spring:message code="image" text="Price" /></th>
								<th scope="col"><spring:message code="Sale Price"
										text="Sale Price" /></th>
								<th scope="col"><spring:message code="price" text="Carat" /></th>
								<th scope="col"><spring:message code="status"
										text="Clarity" /></th>
								<th scope="col"><spring:message code="status"
										text="Category" /></th>
								<th scope="col"><spring:message code="action" text="Action" /></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${product}" var="p">
								<tr>
									<td>${p.productId }</td>
									<td>${p.name }</td>
									<td><img
										src="${pageContext.servletContext.contextPath}/${p.image}"
										width="60px"></td>
									<%-- <td>${p.description}</td> --%>
									<td><fmt:formatNumber value="${p.price }"
														></fmt:formatNumber>vnđ</td>
									<td><fmt:formatNumber value="${p.salePrice }"
														></fmt:formatNumber>vnđ</td>
									<td>${p.carat }</td>
									<td>${p.clarity }</td>
									<td>${p.cate.name }</td>
									<td class="text-center"><a
										href="${pageContext.request.contextPath}/admin/product/edit?productId=${p.productId}"
										data-toggle="tooltip" title="Edit" data-placement="bottom"
										class="btn btn-outline-warning border-0 btn-sm"> <span
											class="btn-icon-wrapper opacity-8"> <i
												class="fa fa-edit fa-w-20"></i>
										</span>
									</a>
										<form class="d-inline"
											action="${pageContext.request.contextPath}/admin/product/delete?productId=${p.productId}"
											method="post">
											<button
												class="btn btn-hover-shine btn-outline-danger border-0 btn-sm"
												type="submit" data-toggle="tooltip" title="Delete"
												data-placement="bottom"
												onclick="return confirm('Are you sure??')">
												<span class="opacity-8"> <i class="fa fa-trash"></i>
												</span>
											</button>
										</form></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<c:forEach items="${list }" var="page">
						<a href="product?page=${page}">${page}</a>&nbsp;&nbsp;|&nbsp;&nbsp;
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</body>
</html>