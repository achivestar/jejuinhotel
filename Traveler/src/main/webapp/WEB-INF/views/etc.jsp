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
    <!-- <link href="/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="/resources/lib/lightbox/css/lightbox.min.css" rel="stylesheet"> -->
	<link rel="stylesheet" href="/resources/lightbox/simple-lightbox.css?v2.8.0" />
    <!-- Customized Bootstrap Stylesheet -->
    <link href="/resources/css/style.css" rel="stylesheet">
     <link href="/resources/css/aos.css" rel="stylesheet">
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
		
		span.theme{
			color:#fff;font-size:30px
		}
		
		span.txt-white{
			color:#fff;
		}
		
		div.bg-yellow {
			width:100%;display: flex;align-items: center;padding:0;background-color:firebrick
		}
		
		div.bg-blue {
			width:100%;display: flex;align-items: center;padding:0;background-color:#5fb8c0
		}
		div.bg-green {
			width:100%;display: flex;align-items: center;padding:0;background-color:forestgreen
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
                    <!-- <h1 class="mb-4 mb-md-0 text-white text-uppercase">제주의 새로운 경험 <br> New Experience in Jeju</h1> -->
                </div>
                <div class="col-md-6 text-center text-md-right">
                    <div class="d-inline-flex align-items-center">
                        <a class="btn btn-outline-primary" href="/">홈</a>
                        <i class="fas fa-angle-double-right text-primary mx-2"></i>
                        <a class="btn btn-cust-primary disabled" href="">부대시설</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header Start -->
    <!-- Header End -->
    
    <%@include file="./include/info.jsp" %>


     <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-8 col text-center mb-4">
                   <!--  <h6 class="text-primary font-weight-normal text-uppercase mb-3">Room/Food</h6> -->
                    <h4 class="mb-4" style="padding-left:0"><b>여행자들의 질 높은 휴식을 보장합니다</b></h4>
                    <h6 class="mb-4" style="display:inline-block;border-bottom:2px solid #5fb8c0;padding-top:5px"><b>우리들의 공간을 둘러보세요</b></h6>
                </div>
            </div>
            <div class="row gallery">
				<c:if test="${empty etcList}">
					<p class="col-md-12 text-center">등록된 부대시설 사진이 없습니다.</p>
				</c:if>
				<c:forEach items="${etcList}" var="etcList" varStatus="status">	
					<c:if test="${ not empty etcList.savedFileName1}">
						<div class="col-md-4 col-6" style="margin-top:50px;padding:2px;" data-aos="zoom-in" data-aos-duration="1000">
		    				<a href="/resources/etcfileupload/${etcList.idx}/${etcList.savedFileName1 }"><img src="/resources/etcfileupload/${etcList.idx}/${etcList.savedFileName1 }" style="width:100%;height:100%;"  title="${etcList.content }" class="image-section" /></a>
		    				<p style="background-color:#5fb8c0;color:#fff;text-align:center;border-top:1px solid #fff;padding:10px">${etcList.title }</p>
		    			</div>
	    			</c:if>
	    			<c:if test="${ not empty etcList.savedFileName2}">
	    				<div class="col-md-4 col-6"  style="padding:0;display:none" data-aos="zoom-in" data-aos-duration="1000">
			    			<a href="/resources/etcfileupload/${etcList.idx}/${etcList.savedFileName2 }"><img src="/resources/etcfileupload/${etcList.idx}/${etcList.savedFileName2 }" style="width:100%;height:100%"  title="${etcList.content }"/></a>
			    		</div>
	    			</c:if>
	    			<c:if test="${ not empty etcList.savedFileName3}">
	    				<div class="col-md-4 col-6"  style="padding:0;display:none" data-aos="zoom-in" data-aos-duration="1000">
			    			<a href="/resources/etcfileupload/${etcList.idx}/${etcList.savedFileName3 }"><img src="/resources/etcfileupload/${etcList.idx}/${etcList.savedFileName3 }" style="width:100%;height:100%"  title="${etcList.content }"/></a>
			    		</div>
	    			</c:if>
	    			<%-- <c:if test="${ not empty etcList.savedFileName4}">
	    				<div class="col-md-4 col-6"  style="padding:0;display:none" data-aos="zoom-in" data-aos-duration="1000">
			    			<a href="/resources/etcfileupload/${etcList.idx}/${etcList.savedFileName4 }"><img src="/resources/etcfileupload/${etcList.idx}/${etcList.savedFileName4 }" style="width:100%;height:100%"  title="${etcList.content }"/></a>
			    		</div>
	    			</c:if>
	    			<c:if test="${ not empty etcList.savedFileName5}">
	    				<div class="col-md-4 col-6"  style="padding:0;display:none" data-aos="zoom-in" data-aos-duration="1000">
			    			<a href="/resources/etcfileupload/${etcList.idx}/${etcList.savedFileName5 }"><img src="/resources/etcfileupload/${etcList.idx}/${etcList.savedFileName5 }" style="width:100%;height:100%"  title="${etcList.content }"/></a>
			    		</div>
	    			</c:if> --%>
				</c:forEach>
	    		<!-- <div class="col-md-4 col-4" style="padding:0;position:relative" data-aos="zoom-in" data-aos-duration="1000">
	    			<a href="/resources/img/room/s_room7.JPG" ><img src="/resources/img/room/s_room7.JPG" style="width:100%;height:100%;" class="image-section" /></a>
	    			<p style="background-color: rgba( 255, 255, 255, 0.3);position:absolute;top:50%;left:25%;text-align:center;width:50%;color:#fff;border:1px solid #fff;padding:5px;">세미나 +6장</p>
	    		</div>
	    		<div class="col-md-4 col-4"  style="padding:0;display:none" data-aos="zoom-in" data-aos-duration="1000">
	    			<a href="/resources/img/room/s_room8.JPG"><img src="/resources/img/room/s_room8.JPG" style="width:100%;height:100%" /></a>
	    		</div>
	    		<div class="col-md-4 col-4"  style="padding:0;display:none" data-aos="zoom-in" data-aos-duration="1000">
	    			<a href="/resources/img/food/food3.jpg"><img src="/resources/img/food/food3.jpg" style="width:100%;height:100%" /></a>
	    		</div>
	    		<div class="col-md-4 col-4"  style="padding:0;display:none" data-aos="zoom-in" data-aos-duration="1000">
	    			<a href="/resources/img/food/food4.jpg"><img src="/resources/img/food/food4.jpg" style="width:100%;height:100%" /></a>
	    		</div>
	    		<div class="col-md-4 col-4"  style="padding:0;display:none" data-aos="zoom-in" data-aos-duration="1000">
	    			<a href="/resources/img/shop/shop6.jpeg"><img src="/resources/img/shop/shop6.jpeg" title="Lego Heads11"  style="width:100%;height:100%" /></a>
	    		</div>
	    		<div class="col-md-4 col-4"  style="padding:0;display:none" data-aos="zoom-in" data-aos-duration="1000">
	    			<a href="/resources/img/shop/shop9.jpg"><img src="/resources/img/shop/shop9.jpg" title="Lego Heads" style="width:100%;height:100%" /></a>
	    		</div>
	    		
	    		<div class="col-md-4 col-4" style="padding:0" data-aos="zoom-in" data-aos-duration="1000">
	    			<a href="/resources/img/food/food1.jpg"><img src="/resources/img/food/food1.jpg" style="width:100%;height:100%" title="food1"/></a>
	    		</div>
	    		<div class="col-md-4 col-4"  style="padding:0;display:none" data-aos="zoom-in" data-aos-duration="1000">
	    			<a href="/resources/img/food/food2.jpg"><img src="/resources/img/food/food2.jpg" style="width:100%;height:100%"  title="food2"/></a>
	    		</div>
	    		<div class="col-md-4 col-4"  style="padding:0;display:none" data-aos="zoom-in" data-aos-duration="1000">
	    			<a href="/resources/img/food/food5.jpg"><img src="/resources/img/food/food5.jpg" style="width:100%;height:100%" title="food3"/></a>
	    		</div>
	    		
	    			
	    		<div class="col-md-4 col-4" style="padding:0" data-aos="zoom-in" data-aos-duration="1000">
	    			<a href="/resources/img/active/active1.jpg"><img src="/resources/img/active/active1.jpg" style="width:100%;height:100%" title="active1"/></a>
	    		</div>
	    		<div class="col-md-4 col-4"  style="padding:0;display:none" data-aos="zoom-in" data-aos-duration="1000">
	    			<a href="/resources/img/active/active2.jpg"><img src="/resources/img/active/active2.jpg" style="width:100%;height:100%"  title="active2"/></a>
	    		</div>
	    		<div class="col-md-4 col-4"  style="padding:0;display:none" data-aos="zoom-in" data-aos-duration="1000">
	    			<a href="/resources/img/active/active3.jpg"><img src="/resources/img/active/active3.jpg" style="width:100%;height:100%" title="active3"/></a>
	    		</div>
	    		<div class="col-md-4 col-4"  style="padding:0;display:none" data-aos="zoom-in" data-aos-duration="1000">
	    			<a href="/resources/img/active/active4.jpg"><img src="/resources/img/active/active4.jpg" style="width:100%;height:100%" title="active4"/></a>
	    		</div>
	    		<div class="col-md-4 col-4"  style="padding:0;display:none" data-aos="zoom-in" data-aos-duration="1000">
	    			<a href="/resources/img/active/active5.jpg"><img src="/resources/img/active/active5.jpg" style="width:100%;height:100%" title="active5"/></a>
	    		</div>
	    		<div class="col-md-4 col-4"  style="padding:0;display:none" data-aos="zoom-in" data-aos-duration="1000">
	    			<a href="/resources/img/active/active6.jpg"><img src="/resources/img/active/active6.jpg" style="width:100%;height:100%" title="active6"/></a>
	    		</div>
	    		<div class="col-md-4 col-4"  style="padding:0;display:none" data-aos="zoom-in" data-aos-duration="1000">
	    			<a href="/resources/img/active/active7.jpg"><img src="/resources/img/active/active7.jpg" style="width:100%;height:100%" title="active7"/></a>
	    		</div>
	    		<div class="col-md-4 col-4"  style="padding:0;display:none" data-aos="zoom-in" data-aos-duration="1000">
	    			<a href="/resources/img/active/active8.jpg"><img src="/resources/img/active/active8.jpg" style="width:100%;height:100%" title="active8"/></a>
	    		</div>
	    		
	    		
	    		<div class="col-md-4 col-4"  style="padding:0;" data-aos="zoom-in" data-aos-duration="1000">
	    			<a href="/resources/img/active/active9.jpg"><img src="/resources/img/active/active9.jpg" style="width:100%;height:100%" title="active6"/></a>
	    		</div>
	    		<div class="col-md-4 col-4"  style="padding:0;display:none" data-aos="zoom-in" data-aos-duration="1000">
	    			<a href="/resources/img/active/active10.jpg"><img src="/resources/img/active/active10.jpg" style="width:100%;height:100%" title="active7"/></a>
	    		</div>
	    		<div class="col-md-4 col-4"  style="padding:0;display:none" data-aos="zoom-in" data-aos-duration="1000">
	    			<a href="/resources/img/active/active11.jpg"><img src="/resources/img/active/active11.jpg" style="width:100%;height:100%" title="active8"/></a>
	    		</div> -->
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
    <script src="/resources/js/aos.js"></script>
    <script src="/resources/lightbox/simple-lightbox.js?v2.8.0"></script>
	<script>
	    (function() {
	        var $gallery = new SimpleLightbox('.gallery a', {});
	    })();
	</script>
     <script>
	  AOS.init();
	  
/* 	  function go_url(a){
		  location.href="./newsDetail?idx="+a;
	  } */
	</script>
</body>
</html>