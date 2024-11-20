<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<style>
.error {
    color: red;
}
</style>
<section id="breadcrumbRow" class="row">
    <h2>Register</h2>
    <div class="row pageTitle m0">
        <div class="container">
            <h4 class="fleft">Register</h4>
            <ul class="breadcrumb">
                <li><a href="${contextPath }/home">home</a></li>
                <li class="active">Register</li>
            </ul>
        </div>
    </div>
</section>
<section class="row contentRowPad">
    
        <div class="container">
           
                    
                        <div class="card-body" style="width:800px;margin:auto;">
                            <h2 class="text-uppercase text-center" style="margin-bottom: 10px; color: #c1a89f;">Create an account</h2>

                            <f:form action="${contextPath}/dang-ki" method="post" modelAttribute="customer">
                                <div data-mdb-input-init class="form-outline mb-4" style="margin-bottom: 10px;">
                                    <label class="form-label" for="form3Example1cg" style="color: #c1a89f;">User Name</label>
                                    <input type="text" id="form3Example1cg" name="username"
                                        class="form-control form-control-lg" /> 
                                    <f:errors path="username" cssStyle="color:red"></f:errors>
                                </div>

                                <div data-mdb-input-init class="form-outline mb-4" style="margin-bottom: 10px;">
                                    <label class="form-label" for="form3Example1cg" style="color: #c1a89f;">Your Name</label>
                                    <input type="text" id="form3Example1cg" name="fullName"
                                        class="form-control form-control-lg" /> 
                                    <f:errors path="fullName" cssStyle="color:red"></f:errors>
                                </div>

                                <div data-mdb-input-init class="form-outline mb-4" style="margin-bottom: 10px;">
                                    <label class="form-label" for="form3Example3cg" style="color: #c1a89f;">Your Email</label>
                                    <input type="email" id="form3Example3cg" name="email"
                                        class="form-control form-control-lg" /> 
                                    <f:errors path="email" cssStyle="color:red"></f:errors>
                                </div>

                                <div data-mdb-input-init class="form-outline mb-4" style="margin-bottom: 10px;">
                                    <label class="form-label" for="form3Example4cg" style="color: #c1a89f;">Password</label>
                                    <input type="password" id="form3Example4cg" name="password"
                                    class="form-control form-control-lg" /> 
                                    <f:errors path="password" cssStyle="color:red"></f:errors>
                                </div>
                                
                                <div data-mdb-input-init class="form-outline mb-4"style="margin-bottom: 10px;">
                                    <label class="form-label" for="form3Example3cg" style="color: #c1a89f;">Phone</label>
                                    <input type="number" id="form3Example3cg" name="phone"
                                        class="form-control form-control-lg" /> 
                                    <f:errors path="phone" cssStyle="color:red"></f:errors>
                                </div>
                                
                                <div data-mdb-input-init class="form-outline mb-4" style="margin-bottom: 10px;">
                                    <label class="form-label" for="form3Example3cg" style="color: #c1a89f;">Address</label>
                                    <input type="text" id="form3Example3cg" name="address"
                                        class="form-control form-control-lg" /> 
                                    <f:errors path="address" cssStyle="color:red"></f:errors>
                                </div>
                                
                                <div data-mdb-input-init class="form-outline mb-4" style="margin-bottom: 10px;">
                                    <label class="form-label" for="form3Example3cg" style="color: #c1a89f;">Birthday</label>
                                    <input type="date" id="form3Example3cg" name="birthday"
                                        class="form-control form-control-lg" /> 
                                    <f:errors path="birthday" cssStyle="color:red"></f:errors>
                                </div>

                                <button type="submit" class="btn btn-primary" style="margin-top: 20px;margin-bottom:20px;width:100%">Register</button>

                                <p class="text-center text-muted mt-5 mb-0">
                                    Have already an account? <a href="${contextPath}/dang-nhap"
                                        class="fw-bold text-body text_login">Login here</a>
                                </p>
                                
                                <!-- Thêm phần hiển thị thông báo -->
                                <c:if test="${not empty message}">
                                    <div class="alert alert-info">${message}</div>
                                </c:if>

                            </f:form>

                        </div>
                    </div>
</section>