<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value ="${pageContext.servletContext.contextPath }" scope = "session" />

    
    <section id="breadcrumbRow" class="row">
        <h2>contact us</h2>
        <div class="row pageTitle m0">
            <div class="container">
                <h4 class="fleft">contact us</h4>
                <ul class="breadcrumb">
                    <li><a href="${contextPath }/home">home</a></li>
                    <li class="active">contact us</li>
                </ul>
            </div>
        </div>
    </section>
    
  
    
    <section id="contactRow" class="row contentRowPad">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="row m0">
                        <h4 class="contactHeading heading">contact form style</h4>
                    </div>
                    <div class="row m0 contactForm">
                        <form class="row m0" id="contactForm" method="post" name="contact" action="https://veepixel.com/tf/html/regalia/contact_process.php">
                            <div class="row">
                                <div class="col-sm-6">
                                    <label for="name">Name *</label>
                                    <input type="text" class="form-control" name="name" id="name">
                                </div>
                                <div class="col-sm-6">
                                    <label for="email">Email *</label>
                                    <input type="email" class="form-control" name="email" id="email">
                                </div>
                            </div>
                            <div class="row m0">
                                <label for="subject">subject *</label>
                                <input type="text" class="form-control" name="subject" id="subject">
                            </div>
                            <div class="row m0">
                                <label for="message">your message</label>
                                <textarea name="message" id="message" class="form-control"></textarea>
                            </div>
                            <div class="row m0 captchaRow">
                                <img src="${contextPath }/user/images/captcha.png" alt=""><br>
                                <label for="captcha">Enter the above text</label>
                                <input type="text" class="form-control" name="captcha" id="captcha">
                            </div>
                            <button class="btn btn-primary btn-lg filled" type="submit">send message</button>                            
                        </form>
                        <div id="success">
                                <span class="green textcenter">
                                    Your message was sent successfully! I will be in touch as soon as I can.
                                </span>
                        </div>
                        <div id="error">
                            <span>
                                Something went wrong, try refreshing and submitting the form again.
                            </span>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="row m0">
                        <h4 class="contactHeading heading">contact info style</h4>
                    </div>
                    <div class="media contactInfo">
                        <div class="media-left">
                            <i class="fas fa-map-marker"></i>
                        </div>
                        <div class="media-body">
                            <h5 class="heading">where to reach us</h5>
                            <p>You can reach us at the following address:</p>
                            <h5>404/2 Design Street, Australia</h5>
                        </div> 
                    </div> <!--contactInfo-->
                    <div class="media contactInfo">
                        <div class="media-left">
                            <i class="fas fa-envelope"></i>
                        </div>
                        <div class="media-body">
                            <h5 class="heading">Email us @</h5>
                            <p>Email your issues and suggestion for the following email addresses: </p>
                            <h5>info@Defatch.com</h5>
                        </div>
                    </div> <!--contactInfo-->
                    <div class="media contactInfo">
                        <div class="media-left">
                            <i class="fas fa-phone"></i>
                        </div>
                        <div class="media-body">
                            <h5 class="heading">need to call us?</h5>
                            <p>From Monday to Friday,10:00 AM - 8:00 PM, call us at:</p>
                            <h5>1000-1234-5678</h5>
                        </div>
                    </div> <!--contactInfo-->
                    <div class="media contactInfo">
                        <div class="media-left">
                            <i class="fas fa-question"></i>
                        </div>
                        <div class="media-body">
                            <h5 class="heading">we have great support</h5>
                            <p>We provide the best Quality of products to you.We are always here to help our lovely customers.We ship our products anywhere with more secure. We provide the best Quality of products to you.</p>
                        </div>
                    </div> <!--contactInfo-->
                </div>
            </div>
        </div>
    </section>
      <section id="googleMapRow" class="row">
        <div class="row m0" id="mapBox"></div>
    </section>