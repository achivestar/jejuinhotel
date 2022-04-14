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
                        <a class="btn btn-outline-primary" href="/">홈</a>
                        <i class="fas fa-angle-double-right text-primary mx-2"></i>
                        <a class="btn btn-cust-primary disabled" href="">위치</a>
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
			<div class="col-12">
				
			<div id="daumRoughmapContainer1645073860175" class="root_daum_roughmap root_daum_roughmap_landing mt-3 mb-3" style="width:100%;padding:0;border:2px solid #ddd"></div>
			
			<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
	
			<script charset="UTF-8">
				new daum.roughmap.Lander({
					"timestamp" : "1645073860175",
					"key" : "296r3",
					"mapWidth" : "100%",
					"mapHeight" : "360"
				}).render();
			</script>
			</div>
			<div class="col-12 mt-3 mb-3">
				<p>JEJU IN HOTEL 주소 : 제주특별자치도 제주시 신산마을길 20</p>
				<p>대표전화 : 064-000-0000</p>
			</div>
			<div class="col-12 mt-3 mb-3">
					<div class="table-responsive-sm">
						  <table class="table table-bordered">
						    <tr class="text-center">
						      <td style="vertical-align:middle" class="table-light">제주국제공항</td>
						      <td style="vertical-align:middle" class="table-light">택시이용시</td>
						      <td style="vertical-align:middle;margin:0;padding:0;border:1px solid #ddd">
						      
						       <table  style="width:100%">
							      	<tr >
							      		<td class="table-light" style="vertical-align:middle;border-left:0px;border-top:0px">요금</td><td style="vertical-align:middle;border-right:0px;border-top:0px">약6,600원</td>
							      	</tr>
							      	<tr>
							      		<td class="table-light" style="vertical-align:middle;border-left:0px">소요시간</td><td style="vertical-align:middle;border-right:0px">약10~15분</td>
							      	</tr>
							      	<tr>
							      		<td class="table-light" style="vertical-align:middle;border-bottom:0px;border-left:0px">거리</td><td style="vertical-align:middle;border-right:0px;border-bottom:0px">약6.2km</td>
							      	</tr>
						      	</table>
				
						      </td>
						    </tr>
						     <tr class="text-center">
						      <td style="vertical-align:middle" class="table-light">제주항연안여객터미널</td>
						      <td style="vertical-align:middle" class="table-light">택시이용시</td>
						      <td style="vertical-align:middle;margin:0;padding:0;border:1px solid #ddd">
						      
						       <table style="width:100%">
							      	<tr >
							      		<td class="table-light" style="vertical-align:middle;border-top:0px;border-left:0px">요금</td><td style="vertical-align:middle;border-top:0px;border-right:0px">약11,600원</td>
							      	</tr>
							      	<tr>
							      		<td class="table-light" style="vertical-align:middle;border-left:0px">소요시간</td><td style="vertical-align:middle;border-right:0px">약20분</td>
							      	</tr>
							      	<tr>
							      		<td class="table-light" style="vertical-align:middle;border-left:0px;border-bottom:0px">거리</td><td style="vertical-align:middle;border-bottom:0px;border-right:0px">약10.1km</td>
							      	</tr>
						      	</table>
						
						      </td>
						    </tr>
						  </table>
					</div>
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