<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>        
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제주인호텔 - 소식</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<meta name="naver-site-verification" content="59d276851429350ddaf87416682ea6ff0645a10c" />
<meta name="subject" content="제주인호텔" />
<meta name="title" content="제주인호텔" />
<meta name="author" content="제주인호텔">
<meta name="description" content="제주인호텔, 제주인호텔 제주, 제주인호텔 제주 예약" />
<meta name="keywords" content="제주인호텔, 제주인호텔 제주, 제주인호텔 제주 예약" />
<meta property="og:type" content="website" />
<meta property="og:site_name" content="제주인호텔" />
<meta property="og:title" content="제주인호텔" />
<meta property="og:description" content="제주인호텔, 제주인호텔 제주, 제주인호텔 제주 예약" />

    <!-- Favicon -->
    <link href="/resources/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Oswald:wght@400;500;600&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />

    <!-- Flaticon Font -->
    <link href="/resources/lib/flaticon/font/flaticon.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="/resources/lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/resources/css/style.css" rel="stylesheet">
	<style>
		.page-header {
		  background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(/resources/img/header/active9.jpg);
		  background-position:top center;
		  background-repeat:no-repeat;
		  background-size: cover;
		  width: 100%;
		  min-height:430px;

		}
		
		.img {
			width:100%;
			max-heght:470px;
		}
		
		img {
			width:100%;
		}
		
		span.theme{
			color:#fff;font-size:30px
		}
		
		span.txt-white{
			color:#fff;
		}
		
		div.bg-yellow {
			width:100%;display: flex;align-items: center;padding:0;background-color:#f7b113
		}
		
		div.bg-blue {
			width:100%;display: flex;align-items: center;padding:0;background-color:#0094a8
		}
		
		.card-text {
			line-height:1.1;
			text-align:left;
		}
		
	

</style>
</head>
<body>
 	 <!-- Header & Nav Start -->
    	<%@include file="./include/header.jsp" %>
    <!-- Header & Nav End -->

    
     <!-- Header Start -->
    <!--<div class="container-fluid page-header" style="width:100%;min-height:500px">
        <div class="container">
            <div class="d-flex flex-column align-items-center justify-content-center" >
                <h3 class="text-white text-uppercase">우리는 여행의 가치를 아는 사람들 입니다.</h3>
                <div class="d-inline-flex text-white">
                    <p class="m-0 text-uppercase"><a class="text-white" href="">Home</a></p>
                    <i class="fa fa-angle-double-right pt-1 px-3"></i>
                    <p class="m-0 text-uppercase">About</p>
                </div>
            </div>
        </div>
    </div> -->
    <!-- Page Header Start -->
    <div class="container-fluid  py-5 page-header" >
        <div class="container py-5">
            <div class="row align-items-center py-4">
                <div class="col-md-6 text-center text-md-left">
                    <h1 class="mb-4 mb-md-0 text-white text-uppercase">JEJU IN HOTEL<br>HOT NEWS</h1>
                </div>
                <div class="col-md-6 text-center text-md-right">
                    <div class="d-inline-flex align-items-center">
                        <a class="btn btn-outline-primary" href="/">Home</a>
                        <i class="fas fa-angle-double-right text-primary mx-2"></i>
                        <a class="btn btn-cust-primary disabled" href="">News</a>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <div class="container">
    	<div class="row">
    		<div class="col-md-12 text-center p-3" style="font-size:20px;line-height:1.8">
    		   	<div class="container py-5">
        <div class="row pt-5">
            <div class="col-lg-12">
                <div class="d-flex flex-column text-left mb-4">
                    <h3 class="mb-4">${newsvo.title }</h3>
                    <div class="d-index-flex mb-2">
                        <span class="mr-3">${newsvo.writer}</span><span class="mr-3">|</span><c:set var="regdate" value="${newsvo.regdate}"/><span class="mr-3">${fn:substring(regdate,0,10)}</span>
                    </div>
                </div>

                <div class="mb-5 text-center" >
                   ${newsvo.content }
                </div>
                
               

            </div>
             
             	<c:if test="${not empty isPrev}">
	    				<c:forEach items="${isPrev}" var="isPrev">
	    					<c:set var="regdate" value="${isPrev.regdate}"/>
			    			<c:set var="TextValue" value="${isPrev.title}"/>
						 <div class="col-lg-4 col-4 text-left">
							<a href="/newsDetail?idx=${isPrev.idx}"   style="color:#0094a8;font-size:12px">이전글<br>${fn:substring(TextValue,0,20)}<br>${fn:substring(regdate,0,10) }</a>
						</div>
						</c:forEach>
				</c:if>
				
               
                <div class="col-lg-4 col-4 text-center">
						<a href="/news"  class="btn btn-cust-primary2 py-md-3 px-md-5 mt-2 mt-md-4" style="font-weight:bold">LIST</a>
				</div>
				
				<c:if test="${not empty isNext}">
    				<c:forEach items="${isNext}" var="isNext">
    					<c:set var="regdate" value="${isNext.regdate}"/>
			   			 <c:set var="TextValue" value="${isNext.title}"/>
						<div class="col-lg-4 col-4 text-right">
						<a href="/newsDetail?idx=${isNext.idx}"   style="color:#0094a8;font-size:12px">다음글<br>${fn:substring(TextValue,0,20)}<br>${fn:substring(regdate,0,10) }</a>
						</div>
					</c:forEach>
				</c:if>
				
            

           
        </div>
    </div>
    <!-- Detail End -->
				
			
    		</div>		
   </div>
   
 </div>
    <!-- Footer Start -->
    	<%@include file="./include/footer.jsp" %>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary-anchor back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/lib/easing/easing.min.js"></script>
    <script src="/resources/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="/resources/lib/isotope/isotope.pkgd.min.js"></script>
    <script src="/resources/lib/lightbox/js/lightbox.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="/resources/mail/jqBootstrapValidation.min.js"></script>
    <script src="/resources/mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="/resources/js/main.js"></script>
</body>
</html>