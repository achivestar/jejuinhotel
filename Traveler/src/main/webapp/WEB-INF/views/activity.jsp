<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JEJU IN HOTEL</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

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
    
    <link href="/resources/css/aos.css" rel="stylesheet">
	<style>
		.page-header {
		  background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(/resources/img/header/active13.jpg);
		  background-position:center center;
		  background-repeat:no-repeat;
		  background-size: cover;
		  width: 100%;
		  min-height:430px;

		}
		
		.img {
			width:100%;
			max-heght:470px;
		}
		
		span.theme{
			color:#fff;font-size:30px
		}
		
		span.txt-white{
			color:#fff;
		}
		
		span.txt-white2{
			color:#5fb8c0;
		}
		
		div.bg-yellow {
			width:100%;display: flex;align-items: center;padding:0;background-color:#ffe603
		}
		
		div.bg-blue {
			width:100%;display: flex;align-items: center;padding:0;background-color:#5fb8c0
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
                    <h1 class="mb-4 mb-md-0 text-white text-uppercase">우리와 함께 제주의 놀라운 장소를 발견해요.</h1>
                </div>
                <div class="col-md-6 text-center text-md-right">
                    <div class="d-inline-flex align-items-center">
                        <a class="btn btn-outline-primary" href="/">Home</a>
                        <i class="fas fa-angle-double-right text-primary mx-2"></i>
                        <a class="btn btn-cust-primary disabled" href="">Activity</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header Start -->
    <!-- Header End -->
    
    <%@include file="./include/info.jsp" %>


    <div class="container">
    	<div class="row">
    		<div class="col-md-12 text-center p-3" style="line-height:1.8">
    			제주의 자연을 눈으로만 보는 것이 아닌,<br> 마음으로도 느껴보면 어떻까요?<br>
				우리는 단순히 숙박만을 예약받고<br> 제공하는 것으로 끝이 아닌<br>
 				새로운 숙박 서비스를 구현 합니다.
    		</div>
    		<div class="col-md-12">
    			<!-- <img src="/resources/img/active/active1-1.jpg" style="width:100%"/> -->
    			<%@include file="./include/video.jsp" %>
    		</div>
    		
    		<div class="col-md-12 text-center p-3" style="font-size:20px" data-aos="fade-up" data-aos-duration="1000">
    			제주잡화점 LOUNGE<br><br>
				10:00 - 18:00<br>
				TEL 064.711.7382<br>
				<a href="https://www.instagram.com/jejuall_net" target="_blank">제주잡화점 인스타그램</a><br>
				<div class="col-lg-12 text-center">
						<a href="http://jejuall.net" target="_blank" class="btn btn-cust-primary2 py-md-3 px-md-5 mt-2 mt-md-4" style="font-weight:bold">온라인 예약하기</a>
				</div>
    		</div>
    		<br><br>
    		<div class="col-md-12 col-12 mt-3 mb-3 text-center">
    			<h4>우리는 여러분에게 <span style="display:inline-block;background-color: #0094a8;color:#fff">제주 로컬</span>의<br> 모든 것을 보여드려요</h4>
    		</div>
    		<br><br>
	    		<div class="col-md-6 col-6 bg-blue" data-aos="zoom-in"
     data-aos-duration="1000">
	    			<p style="margin:0 auto" class="text-center"><span class="txt-white">Experience<br>제주의 로컬을 체험하고</span></p>
	    		</div>
	    		<div class="col-md-6 col-6" style="padding:0">
	    			<img src="/resources/img/active/active1.jpg" style="width:100%" />
	    		</div>
	    		<div class="col-md-6 col-6"  style="padding:0">
	    			<img src="/resources/img/active/active7.jpg" style="width:100%" />
	    		</div>
	    		<div class="col-md-6 col-6 bg-yellow" data-aos="zoom-in"
     data-aos-duration="1000">
	    			<p style="margin:0 auto" class="text-center"><span class="txt-white2">Information<br>제주의 정보를 공유하고</span></p>
	    		</div>
	    		<div class="col-md-6 col-6 bg-blue" data-aos="zoom-in"
     data-aos-duration="1000">
	    			<p style="margin:0 auto" class="text-center"><span class="txt-white">Community<br>정보를 다시 재미있게 소통하며</span></p>
	    		</div>
	    		<div class="col-md-6 col-6"  style="padding:0">
	    			<img src="/resources/img/active/active9.jpg" style="width:100%" />
	    		</div>
	    		<div class="col-md-6 col-6"  style="padding:0">
	    			<img src="/resources/img/active/active12.jpg" style="width:100%" />
	    		</div>
	    		<div class="col-md-6 col-6 bg-yellow"  data-aos="zoom-in"
     data-aos-duration="1000">
	    			<p style="margin:0 auto" class="text-center"><span class="txt-white2">Variety<br>여행의 다양함을 느끼다.</span></p>
	    		</div>
    	
    		
    		 <!-- Services Start -->
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row">
                <div class="col-lg-12 pr-lg-5">
                    <h4 class="mb-4 text-center" data-aos="zoom-in" data-aos-duration="1000"><b>숙박을 제공하는 것으로 끝이 아닙니다</b></h4>
                    <p class="text-center p-3" style="line-height:1.8" data-aos="zoom-in" data-aos-duration="1000">
						JEJU IN HOTEL과 케이엠커뮤니케이션의 협업을 통하여<br>
						새로운 숙박 서비스를 구현합니다.<br>
						숙박하시는 동안 제주 로컬의 다양한 분야의<br>
						체험, 정보, 커뮤니티를 제공합니다.</p>
                    
                </div>
                <div class="col-lg-12 p-0 pt-5 pt-lg-0">
                    <div class="owl-carousel service-carousel position-relative">
                    	 <div class="d-flex flex-column text-center bg-light mx-3">
                            <h3 class="display-3 font-weight-normal text-primary mb-3">
                           	 <img src="/resources/img/active/active12.jpg" />
                            </h3>
                            <h5 class="mb-3">Tracking</h5>
                            <p class="m-0">제주의 자연과 하나가 되어 걸어 봅니다. </p>
                        </div>
                        <div class="d-flex flex-column text-center bg-light mx-3">
                            <h3 class="display-3 font-weight-normal text-primary mb-3">
                            	<img src="/resources/img/about/about4.jpg" />
                            </h3>
                            <h5 class="mb-3">Playing</h5>
                            <p class="m-0">우리는 재미있는 여행을 좋아합니다. 즐겁게 해드릴께요.</p>
                        </div>
                        <div class="d-flex flex-column text-center bg-light mx-3">
                            <h3 class="display-3 font-weight-normal text-primary mb-3">
                            	<img src="/resources/img/active/active10.jpg" />
                            </h3>
                            <h5 class="mb-3">Camping</h5>
                            <p class="m-0">흔적을 남기지 않는 캠핑은 멋진 일입니다.</p>
                        </div>
                       
                    </div>
                    
                </div>
                <div class="col-lg-12 text-center">
						<a href="http://jejuall.net" target="_blank" class="btn btn-cust-primary2 py-md-3 px-md-5 mt-2 mt-md-4" style="font-weight:bold">온라인 예약하기</a>
				</div>
            </div>
        </div>
    </div>
    <!-- Services End -->
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
    
     <script src="/resources/js/aos.js"></script>
     <script>
	  AOS.init();
	</script>
</body>
</html>