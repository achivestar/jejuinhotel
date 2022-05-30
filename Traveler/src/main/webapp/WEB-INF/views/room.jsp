<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제주인호텔 - 룸서비스</title>
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

  		p.card-text {
  			padding:4px;
  			display:inline-block;
  			border:2px solid #fff;
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
                        <a class="btn btn-cust-primary disabled" href="">객실</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header Start -->
    <!-- Header End -->
    
    <%@include file="./include/info.jsp" %>

	<div class="container">
			<c:if test="${empty roomList}">
				<div class="row mb-3 text-center"> 등록된 룸이 없습니다.</div>
			</c:if>
				
			
			<c:forEach items="${roomList}" var="roomList" varStatus="status">	
			<style>
				.carousel-inner img {
				    width: 100%;
				    height: 100%
				}
								
				#custCarousel${status.count} .carousel-indicators {
				    position: static;
				    margin-top: 20px
				}
				
				#custCarousel${status.count} .carousel-indicators>li {
				    width: 100px
				}
				
				#custCarousel${status.count} .carousel-indicators li img {
				    display: block;
				    opacity: 0.5
				}
				
				#custCarousel${status.count} .carousel-indicators li.active img {
				    opacity: 1
				}
				
				#custCarousel${status.count} .carousel-indicators li:hover img {
				    opacity: 0.75
				}
				
				.carousel-item img {
				    width: 100%
				}
			</style>
			
			<c:if test="${roomList.viewtype == 0}">
           	 <div class="row mb-3">
            
            	<c:if test="${not empty roomList.savedFileName1}">
	            	<div class="col-lg-12 m-0" style="padding:0">
	            		<div class="card text-white">
						  <img class="card-img img" src="/resources/roomfileupload/${roomList.idx}/${roomList.savedFileName1}" alt="Card image">
						  <div class="card-img-overlay">
						    <p class="card-text">${roomList.roomType}</p><br>
						    <p class="card-text">${roomList.bedType}</p>
						  </div>
						</div>
						
	            	</div>
            	</c:if>
            	<c:if test="${not empty roomList.savedFileName2}">
            	<div class="col-lg-6 col-6 m-0" style="padding:0">
            		<div class="card text-white">
					  <img class="card-img img" src="/resources/roomfileupload/${roomList.idx}/${roomList.savedFileName2}" alt="Card image">
					</div>
					
            	</div>
            	</c:if>
            	<c:if test="${not empty roomList.savedFileName3}">
            	<div class="col-lg-6 col-6 m-0" style="padding:0">
            		<div class="card text-white">
					  <img class="card-img img" src="/resources/roomfileupload/${roomList.idx}/${roomList.savedFileName3}" alt="Card image">
					</div>
					
            	</div>
            	</c:if>
            	<c:if test="${not empty roomList.savedFileName4}">
            	<div class="col-lg-6 col-6 m-0" style="padding:0">
            		<div class="card text-white">
					  <img class="card-img img" src="/resources/roomfileupload/${roomList.idx}/${roomList.savedFileName4}" alt="Card image">
					</div>
					
            	</div>
            	</c:if>
            	<c:if test="${not empty roomList.savedFileName5}">
            	<div class="col-lg-6 col-6 m-0" style="padding:0">
            		<div class="card text-white">
					  <img class="card-img img" src="/resources/roomfileupload/${roomList.idx}/${roomList.savedFileName5}" alt="Card image">
					</div>
					
            	</div>
            	</c:if>
            	</div>
            	</c:if>
            	
            	<c:if test="${roomList.viewtype == 1}">
				<div class="col-md-12">
		            <div id="custCarousel${status.count}" class="carousel slide" data-ride="carousel" align="center">
		                <div class="carousel-inner">
		                   <c:if test="${not empty roomList.savedFileName1}">
		                    <div class="carousel-item active"> <img src="/resources/roomfileupload/${roomList.idx}/${roomList.savedFileName1}"> </div>
		                   </c:if>
		                   <c:if test="${not empty roomList.savedFileName2}">
		                    <div class="carousel-item"> <img src="/resources/roomfileupload/${roomList.idx}/${roomList.savedFileName2}"> </div>
		                   </c:if>
		                   <c:if test="${not empty roomList.savedFileName3}">
		                    <div class="carousel-item"> <img src="/resources/roomfileupload/${roomList.idx}/${roomList.savedFileName3}"> </div>
		                   </c:if>
		                   <c:if test="${not empty roomList.savedFileName4}">
		                    <div class="carousel-item"> <img src="/resources/roomfileupload/${roomList.idx}/${roomList.savedFileName4}"> </div>
		                   </c:if> 
		                    <c:if test="${not empty roomList.savedFileName5}">
		                    <div class="carousel-item"> <img src="/resources/roomfileupload/${roomList.idx}/${roomList.savedFileName5}"> </div>
		                   </c:if>
		                </div><a class="carousel-control-prev" href="#custCarousel${status.count}" data-slide="prev"> <span class="carousel-control-prev-icon"></span> </a> <a class="carousel-control-next" href="#custCarousel${status.count}" data-slide="next"> <span class="carousel-control-next-icon"></span> </a>
		                <ol class="carousel-indicators list-inline">
		                 <c:if test="${not empty roomList.savedFileName1}">
		                    <li class="list-inline-item active"> <a id="carousel-selector-0" class="selected" data-slide-to="0" data-target="#custCarousel${status.count}"> <img src="/resources/roomfileupload/${roomList.idx}/${roomList.savedFileName1}" class="img-fluid"> </a> </li>
		                 </c:if>  
		                  <c:if test="${not empty roomList.savedFileName2}">
		                    <li class="list-inline-item"> <a id="carousel-selector-1" data-slide-to="1" data-target="#custCarousel${status.count}"> <img src="/resources/roomfileupload/${roomList.idx}/${roomList.savedFileName2}" class="img-fluid"> </a> </li>
		                  </c:if>  
		                  <c:if test="${not empty roomList.savedFileName3}">
		                    <li class="list-inline-item"> <a id="carousel-selector-2" data-slide-to="2" data-target="#custCarousel${status.count}"> <img src="/resources/roomfileupload/${roomList.idx}/${roomList.savedFileName3}" class="img-fluid"> </a> </li>
		                  </c:if>
		                  <c:if test="${not empty roomList.savedFileName4}">
		                    <li class="list-inline-item"> <a id="carousel-selector-3" data-slide-to="3" data-target="#custCarousel${status.count}"> <img src="/resources/roomfileupload/${roomList.idx}/${roomList.savedFileName4}" class="img-fluid"> </a> </li>
		                  </c:if>
		                  <c:if test="${not empty roomList.savedFileName5}">
		                    <li class="list-inline-item"> <a id="carousel-selector-4" data-slide-to="4" data-target="#custCarousel${status.count}"> <img src="/resources/roomfileupload/${roomList.idx}/${roomList.savedFileName5}" class="img-fluid"> </a> </li>
		            	  </c:if>
		                </ol>
		            </div>
		        </div>
		        </c:if>
            	<div class="row mb-3"> 
	            	<div class="col-lg-12 mt-5">
	            		<div class="alert" role="alert" style="background-color:#e3e9fa">
						  <h4 class="alert-heading" style="color:#f7b113"><b>${roomList.title }</b></h4>
						  <hr>
						   <p style="color:#0094a8">${roomList.content }</p>				 
						</div>
	            	</div>
	            	<div class="col-lg-12">
	            		  <div class="table-responsive">
							  <table class="table table-bordered" >
							    <tr class="text-center">
							      <th width="30%" class="table-light">객실</th>
							      <td>${roomList.roomType }</td>
							    </tr>
							    <tr class="text-center">
							      <th class="table-light">침대</th>
							      <td>${roomList.bedType }</td>
							    </tr>
							    <tr class="text-center">
							      <th class="table-light">어메니티</th>
							      <td class="text-left">${roomList.amenity }</td>
							    </tr>
							    <tr class="text-center">
							      <th class="table-light">가격</th>
							      <td>${roomList.price }</td>
							    </tr>
							  </table>
							</div>
	            	</div>
	            	
	            	<c:if test="${roomList.reserveBtn eq 'y' }">
		            	<div class="col-lg-12 text-center">
								<a href="${roomList.reserveLink }" class="btn btn-cust-primary2 py-md-3 px-md-5 mt-2 mt-md-4" style="font-weight:bold">예약하기</a>
						</div>
					</c:if>
					</div>

            
            </c:forEach>
            <!-- 
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
					
            	
            </div> -->
       
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