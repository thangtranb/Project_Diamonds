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
<title>User Pages</title>
</head>
<body>
	<div class="container-fluid pt-4 px-4">
		<div class="row">
			<div class="col-sm-12 col-xl-12">
				<div class="bg-light rounded h-100 p-4">
					
					<h6 class="mb-4">
						<spring:message code="courseTable" text="Customer Table" />
					</h6>
					
					<table class="table">
						<thead>
							<tr>
								<th scope="col"><spring:message code="courseId"
										text="Order Id" /></th>
								<th scope="col"><spring:message code="courseName"
										text="Customer Name" /></th>
								<th scope="col"><spring:message code="description"
										text="Order Date" /></th>
								<th scope="col"><spring:message code="image"
										text=" Phone" /></th>
								<th scope="col"><spring:message code="status"
										text=" Status" /></th>	
								<th scope="col"><spring:message code="description"
										text="Shipping Address" /></th>
								
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${order}" var="o">
								<tr>
									<td>${o.orderId }</td>
									<td>${o.cusId.fullName }</td>
									<td>${o.orderDate}</td>
									<td>${o.phone }</td>
									<td>${o.status  == null ? "chờ xác nhận" : "đã xác nhận" }</td>
									<td>${o.shippingAddress }</td>
									
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<c:forEach items="${list }" var="page">
						<a href="order?page=${page}">${page}</a>&nbsp;&nbsp;|&nbsp;&nbsp;
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</body>
</html>