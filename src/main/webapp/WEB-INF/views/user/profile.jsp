<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<style>
.error {
	color: red;
}
</style>
<section id="breadcrumbRow" class="row">
	<h2>Login</h2>
	<div class="row pageTitle m0">
		<div class="container">
			<h4 class="fleft">Profile</h4>
			<ul class="breadcrumb">
				<li><a href="${contextPath }/home">home</a></li>
				<li class="active">Profile</li>
			</ul>
		</div>
	</div>
</section>
<section class="row contentRowPad">

	<div class="container">


		<div class="card-body" style="width: 800px; margin: auto;">
			<h2 class="text-uppercase text-center"
				style="margin-bottom: 10px; color: #c1a89f;">Profile</h2>



			<form action="${contextPath}/updateProfile" method="post" enctype="multipart/form-data">
				<input type="hidden" name="customerId" value="${customer.customerId}" />
				<input type="hidden" name="username"
					class="form-control" value="${customer.username}">
				<div class="row">
					<div class="col-md-4">
						<div class="hero">

							<div class="card">
								<img
									src="${pageContext.servletContext.contextPath}/${customer.avatar}"
									id="profile-pic" alt=""> <label class="label"
									for="input-file">update image</label> <input type="file"
									name="file" id="input-file"
									accept="image/jpeg, image/png, image/jpg" class="form-control">
							</div>
						</div>

					</div>
					<div class="col-md-8">
						

						<div data-mdb-input-init class="form-outline mb-4"
							style="margin-bottom: 10px;">
							<label class="form-label" for="form3Example1cg"
								style="color: #c1a89f;">Your Name</label> <input type="text"
								id="form3Example1cg" name="fullName"
								class="form-control form-control-lg" value="${customer.fullName}" />
							
						</div>

						<div data-mdb-input-init class="form-outline mb-4"
							style="margin-bottom: 10px;">
							<label class="form-label" for="form3Example3cg"
								style="color: #c1a89f;">Your Email</label> <input type="email"
								id="form3Example3cg" name="email"
								class="form-control form-control-lg" value="${customer.email}" />
							
						</div>


						<div data-mdb-input-init class="form-outline mb-4"
							style="margin-bottom: 10px;">
							<label class="form-label" for="form3Example3cg"
								style="color: #c1a89f;">Phone</label> <input type="number"
								id="form3Example3cg" name="phone"
								class="form-control form-control-lg" value="${customer.phone}"  />
							
						</div>
						
						
							<input type="hidden" name="password" class="form-control" value="${customer.password}">
						
						<div data-mdb-input-init class="form-outline mb-4"
							style="margin-bottom: 10px;">
							<label class="form-label" for="form3Example3cg"
								style="color: #c1a89f;">Address</label> <input type="text"
								id="form3Example3cg" name="address"
								class="form-control form-control-lg" value="${customer.address}" />
							
						</div>

						<div data-mdb-input-init class="form-outline mb-4"
							style="margin-bottom: 10px;">
							<label class="form-label" for="form3Example3cg"
								style="color: #c1a89f;">Birthday</label> <input type="date"
								id="form3Example3cg" name="birthday"
								class="form-control form-control-lg" value="${customer.birthday}" />
							
						</div>
					<%-- 	<div class="form-group">
				<label for="name">Active</label> <input name="active" type="number"
					class="form-control" value="${customer.active}">
			</div>
			
			<div class="form-group">
			<label for="name">Role</label> <input name="role" type="hidden"
					class="form-control" value="${customer.role}">
			</div> --%>
						

						<button type="submit" class="btn btn-primary"
							style="margin-top: 20px; margin-bottom: 20px; float: right; margin-left: 10px;">Save</button>
						<a href="${contextPath }/home" class="btn btn-primary"
							style="margin-top: 20px; margin-bottom: 20px; float: right;">Back</a>


					</div>
				</div>
			</form>



		</div>
	</div>
</section>