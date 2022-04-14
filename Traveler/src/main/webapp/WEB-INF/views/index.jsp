<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>      
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>      
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
		span.txt-white{
			color:#fff;
		}
		
		span.txt-white2{
			color:#5fb8c0;
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


    <!-- Carousel Start -->
    <div class="container-fluid p-0">
        <div id="header-carousel" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="w-100" src="/resources/img/carousel/carousel-1.jpg" alt="Image">
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <div class="p-3" style="max-width: 800px;">
                            <h4 class="text-primary text-uppercase font-weight-normal mb-md-3">luxury & place</h4>
                            <h3 class="display-4 text-white mb-md-4">Make Your Home Better</h3>
                            <a href="" class="btn btn-cust-primary py-md-3 px-md-5 mt-2 mt-md-4">Learn More</a>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="w-100" src="/resources/img/carousel/carousel-2.jpg" alt="Image">
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <div class="p-3" style="max-width: 800px;">
                            <h4 class="text-primary text-uppercase font-weight-normal mb-md-3">luxury & place</h4>
                            <h3 class="display-4 text-white mb-md-4">Stay At Home In Peace</h3>
                            <a href="" class="btn btn-cust-primary py-md-3 px-md-5 mt-2 mt-md-4">Learn More</a>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="w-100" src="/resources/img/carousel/carousel-3.jpg" alt="Image">
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <div class="p-3" style="max-width: 800px;">
                            <h4 class="text-primary text-uppercase font-weight-normal mb-md-3">TOURS & TRAVEL</h4>
                            <h3 class="display-4 text-white mb-md-4">Let's Discover The Jeju Together</h3>
                            <a href="" class="btn btn-cust-primary py-md-3 px-md-5 mt-2 mt-md-4">Learn More</a>
                        </div>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#header-carousel" data-slide="prev">
                <div class="btn btn-primary" style="width: 45px; height: 45px;">
                    <span class="carousel-control-prev-icon mb-n2"></span>
                </div>
            </a>
            <a class="carousel-control-next" href="#header-carousel" data-slide="next">
                <div class="btn btn-primary" style="width: 45px; height: 45px;">
                    <span class="carousel-control-next-icon mb-n2"></span>
                </div>
            </a>
        </div>
    </div>
    <!-- Carousel End -->


     <%@include file="./include/info.jsp" %>


    <!-- Services Start -->
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row">
                <div class="col-lg-6 pr-lg-5">
                    <!-- <h6 class="text-primary font-weight-normal text-uppercase mb-3">Abuut Us</h6> -->
                    <h4 class="mb-4"><b>숙박을 제공하는 것으로 끝이 아닙니다</b></h4>
                    <p>
JEJU IN HOTEL과 케이엠커뮤니케이션의 협업을 통하여
새로운 숙박 서비스를 구현합니다.
숙박하시는 동안 제주 로컬의 다양한 분야의
체험, 정보, 커뮤니티를 드리고자 합니다.</p>
                    
				<a href="/about"  class="btn btn-cust-primary2 py-md-3 px-md-5 mt-2 mt-md-4" style="font-weight:bold">+ 더보기</a>
				
                </div>
                <div class="col-lg-6 p-0 pt-5 pt-lg-0">
                    <div class="owl-carousel service-carousel position-relative">
                    	 <div class="d-flex flex-column text-center bg-light mx-3" >
                            <h3 class="display-3 font-weight-normal text-primary mb-3" style="height:170px">
                           	 <img src="/resources/img/about/about2.jpeg" />
                            </h3>
                            <h5 class="mb-3">Tracking</h5>
                            <p class="m-0">제주의 자연과 하나가 되어 걸어 봅니다.</p>
                        </div>
                        <div class="d-flex flex-column text-center bg-light mx-3">
                            <h3 class="display-3 font-weight-normal text-primary mb-3" style="height:170px">
                            	<img src="/resources/img/about/about4.jpg" />
                            </h3>
                            <h5 class="mb-3">Playing</h5>
                            <p class="m-0">우리는 재미있는 여행을 좋아합니다.</p>
                        </div>
                        <div class="d-flex flex-column text-center bg-light mx-3">
                            <h3 class="display-3 font-weight-normal text-primary mb-3" style="height:170px">
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

 <div class="container-fluid  pt-5">
        <div class="container py-5">
            <div class="row pb-3">
            	<%@include file="./include/video.jsp" %>
            	
            </div>
     </div>
 </div>
    

    <!-- Projects Start -->
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-8 col text-center mb-4">
                   <!--  <h6 class="text-primary font-weight-normal text-uppercase mb-3">Room/Food</h6> -->
                    <h4 class="mb-4" style="padding-left:0"><b>여행자들의 질 높은 휴식을 보장합니다</b></h4>
                </div>
            </div>
            <div class="row">
            	<!-- room start -->
            	<div class="col-md-4 col-4 bg-blue" data-aos="zoom-in" data-aos-duration="1000">
	    			<p style="margin:0 auto" class="text-center"><span class="txt-white">시그니처 객실</span><br><a href="/room" class="btn btn-cust-primary mt-2 py-md-3 px-md-5">+ More</a></p>
	    		</div>
	    		<div class="col-md-4 col-4" style="padding:0" data-aos="zoom-in" data-aos-duration="1000">
	    			<img src="/resources/img/room/s_room7.JPG" style="width:100%;height:100%" />
	    		</div>
	    		<div class="col-md-4 col-4"  style="padding:0" data-aos="zoom-in" data-aos-duration="1000">
	    			<img src="/resources/img/room/s_room8.JPG" style="width:100%;height:100%" />
	    		</div>
	    		<!-- room end -->
	    		
	    		<!-- food start -->
	    		
	    		<div class="col-md-4 col-4"  style="padding:0" data-aos="zoom-in" data-aos-duration="1000">
	    			<img src="/resources/img/food/food3.jpg" style="width:100%;height:100%" />
	    		</div>
	    		<div class="col-md-4 col-4"  style="padding:0" data-aos="zoom-in" data-aos-duration="1000">
	    			<img src="/resources/img/food/food4.jpg" style="width:100%;height:100%" />
	    		</div>
	    		<div class="col-md-4 col-4 bg-yellow" data-aos="zoom-in"
     data-aos-duration="1000">
	    			<p style="margin:0 auto" class="text-center"><span class="txt-white">취향저격</span><br><a href="/food" class="btn btn-cust-primary mt-2 py-md-1 px-md-3">+ More</a></p>
	    		</div>
	    		<!-- food end -->
	    		
	    		<!-- our service start -->
	    		<div class="col-md-4 col-4 bg-green"  data-aos="zoom-in"
     data-aos-duration="1000">
	    			<p style="margin:0 auto" class="text-center"><span class="txt-white">부대시설</span><br><a href="/etc" class="btn btn-cust-primary mt-2 py-md-3 px-md-5">+ More</a></p>
	    		</div>
	    		<div class="col-md-4 col-4"  style="padding:0" data-aos="zoom-in" data-aos-duration="1000">
	    			<img src="/resources/img/shop/shop6.jpeg" style="width:100%;height:100%" />
	    		</div>
	    		<div class="col-md-4 col-4"  style="padding:0" data-aos="zoom-in" data-aos-duration="1000">
	    			<img src="/resources/img/shop/shop9.jpg" style="width:100%;height:100%" />
	    		</div>
	    		
	    		<!-- out service end -->
            </div>
          
        </div>
    </div>
    <!-- Projects End -->


    <!-- Team Start -->
    <div class="container-fluid bg-cust-light">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6 mb-2">
                    <div class="py-5 px-4 bg-primary d-flex flex-column align-items-center justify-content-center">
                        <h4 class="display-3 mb-3" style="color:#ffe603">News</h4>
                        <h3 class="m-0 mt-3" style="color:#fff">생생한 소식을 전해드려요</h3>
                         <a href="" class="btn btn-cust-primary py-md-3 px-md-5 mt-2 mt-md-4">+ More</a>
                    </div>
                   
                </div>
                <div class="col-md-8 col-sm-6 col-12 p-0 py-sm-5">
                 
                    <div class="card-group">
                    	<c:if test="${empty newsList}">
			       			 <p>등록된 공지글이 없습니다.</p>
						</c:if>
						<c:forEach items="${newsList}" var="newsList" varStatus="status">	
						<c:set var="regdate" value="${newsList.regdate}"/>
			    		<c:set var="TextValue" value="${newsList.title}"/>
	                     <div class="card ml-2 mr-2">
							     <c:if test="${not empty newsList.thumburl}">
				      				<img src="${newsList.thumburl}" class="card-img-top newsimg" alt="..." style="cursor:pointer" onclick="go_url(${newsList.idx})">
								 </c:if>
							      <c:if test="${empty newsList.thumburl}">
							     	 <img src="/resources/img/active/active4.jpg" class="card-img-top newsimg" alt="..." style="cursor:pointer" onclick="go_url(${newsList.idx})">
							      </c:if>
							    <div class="card-body">
							      <h5 class="card-title"><a style="color:#000" href="/newsDetail?idx=${newsList.idx}">${fn:substring(TextValue,0,20)}<c:if test="${fn:length(TextValue)>=20}">
				        	...
				        </c:if></a></h5>
							      <p class="card-text"><small class="text-muted">${fn:substring(regdate,0,10) }</small></p>
							    </div>
						  </div>
						 </c:forEach>
						  <!-- <div class="card ml-2 mr-2">
						    <img src="/resources/img/about/about3.jpg" class="card-img-top" alt="...">
						    <div class="card-body">
						      <h5 class="card-title">New 제목2</h5>
						      <p class="card-text">사이트 오픈2</p>
						      <p class="card-text"><small class="text-muted">2020.02.19</small></p>
						    </div>
						  </div> -->
							  
					</div>
                </div>
            </div>
        </div>
    </div>
    <!-- Team End -->


   




<!-- Team Start -->
    <!-- <div class="container-fluid bg-cust-light">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6 mb-3" >
                    <div class="py-5 px-4 h-100 bg-primary d-flex flex-column align-items-center justify-content-center">
                        <h4 class="display-3 mb-3" style="color:#ffe603">Shop</h4>
                        <h3 class="m-0 mt-3" style="color:#fff">우리의 멋진 쇼핑몰에 들어오세요</h3>
                         <a href="" class="btn btn-cust-primary py-md-3 px-md-5 mt-2 mt-md-4">+ More</a>
                    </div>
                   
                </div>
                <div class="col-md-8 col-sm-6 p-0 py-sm-5">
                    <div class="card-group">
	                     <div class="card">
							    <img src="/resources/img/logo/logo1.jpg" style="height:225px"class="card-img-top" alt="...">
							    <div class="card-body">
							      <h5 class="card-title">제주인호텔</h5>
							      <p class="card-text">제주인호텔에 대한 ..</p>
							      <p class="card-text"><small class="text-muted">2020.02.17</small></p>
							    </div>
						  </div>
						  
						  <div class="card">
						    <img src="/resources/img/logo/logo2.jpg" style="height:225px" class="card-img-top" alt="...">
						    <div class="card-body">
						      <h5 class="card-title">제주잡화점</h5>
						      <p class="card-text">제주잡화점에 대한..</p>
						      <p class="card-text"><small class="text-muted">2020.02.19</small></p>
						    </div>
						  </div>
							  
					</div>
                </div>
                
                
              
            </div>
        </div>
    </div> -->
    <!-- Team End -->


            

 
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
	  
	  function go_url(a){
		  location.href="./newsDetail?idx="+a;
	  }
	</script>
</body>
</html>