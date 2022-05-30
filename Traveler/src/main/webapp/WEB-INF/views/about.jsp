<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제주인호텔 - 소개</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<meta name="naver-site-verification" content="59d276851429350ddaf87416682ea6ff0645a10c" />
<meta name="subject" content="제주인호텔" />
<meta name="title" content="제주인호텔" />
<meta name="author" content="제주인호텔">
<meta name="description" content="제주인호텔,jejuinhotel,제주 로컬의 다양한 분야의 체험, 정보, 커뮤니티를 드리고자 합니다." />
<meta name="keywords" content="제주인호텔, jejuinhotel, 제주로컬, 다양한분야,체험,정보,커뮤니티" />
<meta property="og:type" content="website" />
<meta property="og:site_name" content="제주인호텔" />
<meta property="og:title" content="제주인호텔" />
<meta property="og:description" content="제주인호텔,jejuinhotel,제주 로컬의 다양한 분야의 체험, 정보, 커뮤니티를 드리고자 합니다." />

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
		  background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(/resources/img/header/about.jpg);
		  background-position:center bottom;
		  background-repeat:no-repeat;
		  background-size: cover;
		  width: 100%;
		  min-height:430px;

		}
		
		span.txt {
			color:#0094a8;
			font-weight:bold; 
		}
		
		span.txt-underline{
			display:inline-block;
			border-bottom:2px solid #0094a8;
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
                    <h1 class="mb-4 mb-md-0 text-white text-uppercase">우리는 여행의 가치를 아는 사람들 입니다.</h1>
                </div>
                <div class="col-md-6 text-center text-md-right">
                    <div class="d-inline-flex align-items-center">
                        <a class="btn btn-outline-primary" href="">홈</a>
                        <i class="fas fa-angle-double-right text-primary mx-2"></i>
                        <a class="btn btn-cust-primary disabled" href="">소개</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header Start -->
    <!-- Header End -->
    
    <!-- About Start -->
    <%@include file="./include/info.jsp" %>




	<!-- About Start -->
    <div class="container-fluid py-5">
        <div class="container pt-5">
            <div class="row">
                <div class="col-lg-6" style="min-height: 500px;">
                    <div class="position-relative h-100">
                        <img class="position-absolute w-100 h-100" src="/resources/img/about/about1.jpg" style="object-fit: cover;">
                    </div>
                </div>
                <div class="col-lg-6 pt-5 pb-lg-5">
                    <div class="about-text bg-white p-4 p-lg-5 my-lg-5">
                        <h1 class="mb-3">제주 새로운 경험</h1>
                        <p>우리만의 특별한 제주!<br>새로운 경험이 가득한 제주!<br>오래 기억될 추억이 가득한 제주!</p>
                        <p>
                        	<span class="txt">여행을 통해</span> 나를 돌아보기!<br>
                        	<span class="txt">제주도, 뭐</span> 새로운 거 없나?<br>
                        	<span class="txt">아는 만큼 보이는게</span> 여행이지!<br>
                        	<span class="txt">제주 여행의</span> 깨알팁이 필요해요<br>
                        	나만의, 우리만의, 우리 가족만의 <span class="txt">특별한 여행하기!</span><br>
                        </p>
                        <p>
                        	<span class="txt-underline">우리는 여러분의 여행을 더 멋지게 만들어 드립니다.</span>
                        </p>
                        
                        <div class="row mb-4">
                            <div class="col-6">
                                <img class="img-fluid" src="/resources/img/about/about3.jpg" alt="">
                            </div>
                            <div class="col-6">
                                <img class="img-fluid" src="/resources/img/about/about4.jpg" alt="">
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->
	
    <!-- Services Start -->
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row">
                <div class="col-lg-6 pr-lg-5">
                    <!-- <h6 class="text-primary font-weight-normal text-uppercase mb-3">Services</h6> -->
                    <h4 class="mb-4"><b>숙박을 제공하는 것으로 끝이 아닙니다</b></h4>
                    <p>
						JEJU IN HOTEL 은<!-- 과 케이엠커뮤니케이션의 협업을 통하여
						새로운 숙박 서비스를 구현합니다. -->
						숙박하시는 동안 제주 로컬의 다양한 분야의
						체험, 정보, 커뮤니티를 드리고자 합니다.</p>
                    
                </div>
                <div class="col-lg-6 p-0 pt-5 pt-lg-0">
                    <div class="owl-carousel service-carousel position-relative">
                    	 <div class="d-flex flex-column text-center bg-light mx-3">
                            <h3 class="display-3 font-weight-normal text-primary mb-3">
                           	 <img src="/resources/img/about/about2.jpeg" />
                            </h3>
                            <h5 class="mb-3">Tracking</h5>
                            <p class="m-0">제주의 자연과 하나가 되어 걸어 봅니다.</p>
                        </div>
                        <div class="d-flex flex-column text-center bg-light mx-3">
                            <h3 class="display-3 font-weight-normal text-primary mb-3">
                            	<img src="/resources/img/about/about4.jpg" />
                            </h3>
                            <h5 class="mb-3">Playing</h5>
                            <p class="m-0">우리는 재미있는 여행을 좋아합니다.</p>
                        </div>
                        <div class="d-flex flex-column text-center bg-light mx-3">
                            <h3 class="display-3 font-weight-normal text-primary mb-3">
                            	<img src="/resources/img/about/about3.jpg" />
                            </h3>
                            <h5 class="mb-3">Camping</h5>
                            <p class="m-0">흔적을 남기지 않는 캠핑은 멋진 일입니다.</p>
                        </div>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Services End -->


   
  

 

 
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