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
<title>Insert Customer</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<style>
.error {
	color: red;
}
</style>
</head>
<body>
	<div class="container">
		<h1 class="text-center">
			<spring:message code="addNewCourse" text="Add New Customer" />
		</h1>
		<f:form action="${pageContext.request.contextPath}/admin/customer/save" method="post" enctype="multipart/form-data" modelAttribute="customer">
			<div class="form-group">
				<label for=""><spring:message code="courseName"
						text="User Name" /></label> <f:input type="text" path="username"
					class="form-control" placeholder="User Name.."/>
					<f:errors path="username" cssStyle="color:red"></f:errors>
			</div>

			<div class="form-group">
				<label for=""><spring:message code="courseName"
						text="FullName" /></label> <f:input type="text" path="fullName"
					class="form-control" placeholder="Full Name.."/>
					<f:errors path="fullName" cssStyle="color:red"></f:errors>
			</div>

			<div class="form-group">
				<label for=""><spring:message code="image" text="Avatar" /></label>
				<input type="file" name="file" class="form-control">
			</div>

			<%-- <div class="form-group">
				<label for="gender" class="col-md-3 text-md-right col-form-label"><spring:message
						code="gender" text="Gender" /></label><br>
						<label for="formGroupExampleInput">Example label</label> 
							<input type="radio" class="form-control" id="formGroupExampleInput" placeholder="Example input"> 
						<label for="formGroupExampleInput2">Another label</label> 
							<input type="radio" class="form-control" id="formGroupExampleInput2" placeholder="Another input">
			</div> --%>

			<label>Gender</label>
			<div class="form-group">
				<div class="form-check form-check-inline">
					<label class="form-check-label"> <input
						class="form-check-input" type="radio" checked name="gender"
						value="1"> Female
					</label>
				</div>
				<div class="form-check form-check-inline">
					<label class="form-check-label"> <input
						class="form-check-input" type="radio" name="gender" value="0">
						Male
					</label>
				</div>
			</div>

			<div class="form-group">
				<label for=""><spring:message code="birthday"
						text="Birthday" /></label> <input type="date" name="birthday"
					class="form-control">
					<f:errors path="birthday" cssStyle="color:red"></f:errors>
			</div>

			<div class="form-group">
			<label for=""><spring:message code="image" text="Email" /></label>
				<input type="text" name="email" class="form-control">
			</div>

			<div class="form-group">
				<label for=""><spring:message code="image" text="Password" /></label>
				<input type="password" name="password" class="form-control">
			</div>

			<div class="form-group">
				<label for=""><spring:message code="image" text="Address" /></label>
				<input type="text" name="address" class="form-control">

			</div>

			<div class="form-group">
				<label for="name"><spring:message code="startDate"
						text="Phone" /></label> <input name="phone" type="number"
					class="form-control">
			</div>

			<div class="form-group">
				<label for="name"><spring:message code="startDate"
						text="Active" /></label> <input name="active" type="number"
					class="form-control">
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