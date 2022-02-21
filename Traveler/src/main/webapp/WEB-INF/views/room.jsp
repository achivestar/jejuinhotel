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
	<style>
		.page-header {
		  background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(/resources/img/header/room.jpg);
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
                    <h1 class="mb-4 mb-md-0 text-white text-uppercase">여행자들의 질 높은 휴식을 보장합니다.</h1>
                </div>
                <div class="col-md-6 text-center text-md-right">
                    <div class="d-inline-flex align-items-center">
                        <a class="btn btn-outline-primary" href="/">Home</a>
                        <i class="fas fa-angle-double-right text-primary mx-2"></i>
                        <a class="btn btn-cust-primary disabled" href="">Room</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header Start -->
    <!-- Header End -->
    
    <%@include file="./include/info.jsp" %>

	<div class="container">

            <div class="row mb-3">
            	<div class="col-lg-12 m-0 my-lg-1">
            		<div class="card text-white">
					  <img class="card-img img" src="/resources/img/room/room1.jpg" alt="Card image">
					  <div class="card-img-overlay">
					    <p class="card-text">STANDARD</p>
					    <p class="card-text">Last updated 3 mins ago</p>
					  </div>
					</div>
					
            	</div>
            	
            	<div class="col-lg-6 m-0 my-lg-1">
            		<div class="card text-white">
					  <img class="card-img img" src="/resources/img/room/room2.jpg" alt="Card image">
					  <div class="card-img-overlay">
					    <p class="card-text">STANDARD</p>
					    <p class="card-text">Last updated 3 mins ago</p>
					  </div>
					</div>
					
            	</div>
            	<div class="col-lg-6 m-0 my-lg-1">
            		<div class="card text-white">
					  <img class="card-img img" src="/resources/img/room/room3.jpg" alt="Card image">
					  <div class="card-img-overlay">
					    <p class="card-text">STANDARD</p>
					    <p class="card-text">Last updated 3 mins ago</p>
					  </div>
					</div>
					
            	</div>
            	<div class="col-lg-12">
            		<div class="alert" role="alert" style="background-color:#e3e9fa">
					  <h4 class="alert-heading" style="color:#f7b113"><b>제주의 시그니처 객실</b></h4>
					  <p style="color:#0094a8">프라이빗한 공간에서 바라보는 한라산이 압도적인 시그니처 객실</p>
					  <hr>
					  <p class="mb-0">55,200 ~ 140,000원</p>
					</div>
            	</div>
            	<div class="col-lg-12 text-center">
						<a href="" class="btn btn-cust-primary2 py-md-3 px-md-5 mt-2 mt-md-4" style="font-weight:bold">예약하기</a>
				</div>
					
            	
            </div>
            
            
             <div class="row mb-3">
            	<div class="col-lg-12 m-0 my-lg-1">
            		<div class="card text-white">
					  <img class="card-img img" src="/resources/img/room/room4.jpg" alt="Card image">
					  <div class="card-img-overlay">
					    <p class="card-text">STANDARD</p>
					    <p class="card-text">Last updated 3 mins ago</p>
					  </div>
					</div>
					
            	</div>
            	
            	<div class="col-lg-6 m-0 my-lg-1">
            		<div class="card text-white">
					  <img class="card-img img" src="/resources/img/room/room5.jpg" alt="Card image">
					  <div class="card-img-overlay">
					    <p class="card-text">STANDARD</p>
					    <p class="card-text">Last updated 3 mins ago</p>
					  </div>
					</div>
					
            	</div>
            	<div class="col-lg-6 m-0 my-lg-1">
            		<div class="card text-white">
					  <img class="card-img img" src="/resources/img/room/room6.jpg" alt="Card image">
					  <div class="card-img-overlay">
					    <p class="card-text">STANDARD</p>
					    <p class="card-text">Last updated 3 mins ago</p>
					  </div>
					</div>
					
            	</div>
            	<div class="col-lg-12">
            		<div class="alert" role="alert" style="background-color:#e3e9fa">
					  <h4 class="alert-heading" style="color:#f7b113"><b>제주의 시그니처 객실</b></h4>
					  <p style="color:#0094a8">프라이빗한 공간에서 바라보는 한라산이 압도적인 시그니처 객실</p>
					  <hr>
					  <p class="mb-0">55,200 ~ 140,000원</p>
					</div>
            	</div>
            	<div class="col-lg-12 text-center">
						<a href="" class="btn btn-cust-primary2 py-md-3 px-md-5 mt-2 mt-md-4" style="font-weight:bold">예약하기</a>
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