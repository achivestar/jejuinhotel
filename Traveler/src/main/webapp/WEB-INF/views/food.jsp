<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>            
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제주인호텔 - 음식서비스</title>
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
<meta property="og:description" content="제주인호텔, 제주인호텔 제주, 제주인호텔 제주 예" />

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
		  background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(/resources/img/header/food5.jpg);
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
		
		
.menu {
    position: relative;
    padding: 45px 0 15px 0;
    font-family: 'Nunito', sans-serif;
}

.menu .menu-tab {
    position: relative;
}

.menu .menu-tab a {
    font-size:18px;
}

.menu .menu-tab img {
    max-width: 100%;
    border-radius: 15px;
}

.menu .menu-tab .nav.nav-pills .nav-link {
    color: #ffffff;
    background: #fbaf32;
    border-radius: 5px;
    margin: 0 5px;
}

.menu .menu-tab .nav.nav-pills .nav-link:hover,
.menu .menu-tab .nav.nav-pills .nav-link.active {
    color: #ffffff;
    background: #719a0a;
}

.menu .menu-tab .tab-content {
    padding: 30px 0 0 0;
    background: transparent;
}

.menu .menu-tab .tab-content .container {
    padding: 0;
}

.menu .menu-item {
    position: relative;
    margin-bottom: 30px;
    display: flex;
    align-items: center;
}

.menu .menu-img {
    width: 150px;
     height: 150px;
     margin-right: 20px;
}

.menu .menu-img img {
    width: 150px;
    height: 150px;
    border-radius: 5%;
}

.menu .menu-text {
    width: calc(100% - 100px);
}

.menu .menu-text h3 {
    position: relative;
    display: block;
    font-size: 22px;
    font-weight: 700;
    font-family: 'Nunito', sans-serif;
}

.menu .menu-text h3::after {
    position: absolute;
    content: "";
    width: 100%;
    height: 0;
    top: 13px;
    left: 0;
    border-top: 2px dotted #cccccc;
    z-index: -1;
}

.menu .menu-text h3 span {
    display: inline-block;
    float: left;
    padding-right: 5px;
    background: #ffffff;
}

.menu .menu-text h3 strong {
    display: inline-block;
    float: right;
    padding-left: 5px;
    color: #fbaf32;
    background: #ffffff;
}

.menu .menu-text p {
    position: relative;
    margin: 5px 0 0 0;
    float: left;
    display: block;
}

@media(max-width: 575.98px) {
    .menu .menu-text p,
    .menu .menu-text h2,
    .menu .menu-text h2 span,
    .menu .menu-text h2 strong {
        display: block;
        float: none;
        padding: 0;
        margin: 0;
    }
    
    .menu .menu-text h2 {
        font-size: 18px;
        margin-bottom: 0;
    }
    
    .menu .menu-text h2 span {
        margin-bottom: 3px;
    }
    
    .menu .menu-text h2::after {
        display: none;
    }
}

.nav-link{
	padding: .5rem 1rem;
}
  	
.section-header {
    position: relative;
    margin-bottom: 45px;
}

.section-header p {
    color: #719a0a;
    margin-bottom: 5px;
    position: relative;
    font-size: 20px;
}

.section-header h2 {
    margin: 0;
    position: relative;
    font-size: 45px;
    font-weight: 700;
    color: #454545;
    font-family: 'Nunito', sans-serif;
}

.card .card-title {
	 text-align:center;
	 font-family: 'Nunito', sans-serif;
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
                    <h1 class="mb-4 mb-md-0 text-white text-uppercase">음식, 음악, 이야기 그리고 인생커피</h1>
                </div>
                <div class="col-md-6 text-center text-md-right">
                    <div class="d-inline-flex align-items-center">
                        <a class="btn btn-outline-primary" href="/">홈</a>
                        <i class="fas fa-angle-double-right text-primary mx-2"></i>
                        <a class="btn btn-cust-primary disabled" href="">음식</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header Start -->
    <!-- Header End -->
    
     <%@include file="./include/info.jsp" %>


    <!-- Food Start -->
            <div class="container mt-3 mb-3">
                <div class="row align-items-center">
                	
                    <div class="col-md-12 col-12 col-lg-12">
                       <div class="card-deck">
                       
                      	    <c:if test="${empty foodList}">
						     <p class="text-center">등록된 소개가 없습니다.<p>
							</c:if>
						    <c:forEach items="${foodList}" var="foodList" varStatus="status">	
						  <div class="card" style="border-radius:20px">
						    <img src="/resources/foodfileupload/${foodList.idx}/${foodList.savedFileName}" class="card-img-top" alt="..." style="display:inline-block;border-radius:20px 20px 0px 0px;height:220px">
						    <div class="card-body">
						      <h5 class="card-title">${foodList.title }</h5>
						      <p class="card-text">${foodList.content }</p>
						      <!-- <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
						    </div>
						  </div>
						  </c:forEach>
						  
						  
						  <!-- <div class="card" style="border-radius:20px">
						    <img src="/resources/img/food/food2.jpg" class="card-img-top" alt="..." style="display:inline-block;border-radius:20px 20px 0px 0px">
						    <div class="card-body">
						      <h5 class="card-title">든든하고 맛있는 조식</h5>
						      <p class="card-text">제주의 대표 메뉴들로 구성하여 준비되고 호텔투숙객들과 제주현지인들이 어울릴 수 있는 고품격.</p>
						      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
						    </div>
						  </div>
						   <div class="card" style="border-radius:20px">
						    <img src="/resources/img/food/food3.jpg" class="card-img-top" alt="..." style="display:inline-block;border-radius:20px 20px 0px 0px">
						    <div class="card-body">
						      <h5 class="card-title">언제나 곁에 있는 편의점</h5>
						      <p class="card-text">JEJU IN HOTEL에는 편의점이 입점되어 있습니다.</p>
						    </div>
						  </div>  -->
						</div>
                   
                </div>
                
                <div class="col-lg-12 mt-3">
	            		<div class="alert" role="alert" style="background-color:#e3e9fa">
						  <h4 class="alert-heading" style="color:#f7b113"><b>${bnfvo.title}</b></h4>
						  <hr>
						  <p style="color:#0094a8">${bnfvo.content}</p>
						  
						  
						</div>
            	</div>
            	
            	<div class="col-lg-12 mt-3 mb-3">
            		 <div class="table-responsive">
						  <table class="table table-bordered">
						    <tr class="text-center">
						      <td style="vertical-align:middle" class="table-light">식당</td>
						      <td style="vertical-align:middle;margin:0;padding:0;border:1px solid #ddd">
						       <table style="width:100%">
							      	<tr >
							      		<td class="table-light" style="width:30%;vertical-align:middle;border-left:0px;border-top:0px">운영시간</td><td style="vertical-align:middle;border-right:0px;border-top:0px">07:00~09:00 (08:30분 입장마감)</td>
							      	</tr>
							      	<tr>
							      		<td class="table-light" style="vertical-align:middle;border-left:0px">이용방법</td><td style="vertical-align:middle;border-right:0px;text-align:left;">
							      			 - 성인(중학생 이상~) 10,000원 / 소인(36개월~초등학생) 7,000원<br>
      - 메뉴 변경 / 추가시  별도 문의 <br>
      ▸조식(세미뷔페) <br>
     ▸석식 별도문의<br>
							      		</td>
							      	</tr>
							      	<tr>
							      		<td class="table-light" style="vertical-align:middle;border-bottom:0px;border-left:0px">위치</td><td style="vertical-align:middle;border-right:0px;border-bottom:0px">지하1층</td>
							      	</tr>
						      	</table>
						      </td>
						    </tr>
						     <tr class="text-center">
						      <td style="vertical-align:middle" class="table-light">커피라운지/편의점</td>
						      <td style="vertical-align:middle;margin:0;padding:0;border:1px solid #ddd">
						       <table style="width:100%">
							      	<tr >
							      		<td class="table-light" style="width:30%;vertical-align:middle;border-top:0px;border-left:0px">운영시간</td><td style="vertical-align:middle;border-top:0px;border-right:0px">06:00 ~ 24:00</td>
							      	</tr>
							      	<tr>
							      		<td class="table-light" style="vertical-align:middle;border-left:0px">이용방법</td><td style="vertical-align:middle;border-right:0px">상시이용</td>
							      	</tr>
							      	<tr>
							      		<td class="table-light" style="vertical-align:middle;border-left:0px;border-bottom:0px">위치</td><td style="vertical-align:middle;border-bottom:0px;border-right:0px">1F</td>
							      	</tr>
						      	</table>
						      </td>
						    </tr>
						  </table>
					</div>
            	</div>
                    
			</div>
		</div>
	
        <!-- Food End -->
        

        <!-- Menu Start -->
        <div class="menu">
            <div class="container">
                <div class="section-header text-center">
                    <!-- <p>Food Menu</p> -->
                    <h4>JEJU IN HOTEL 만의 특별한 음식 서비스</h4>
                </div>
                <div class="menu-tab">
                    <ul class="nav nav-pills justify-content-center">
                       <!--  <li class="nav-item">
                            <a class="nav-link active" data-toggle="pill" href="#burgers">coffee</a>
                        </li> -->
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="pill" href="#food">Food</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="pill" href="#beverages">Beverages</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="beverages" class="container tab-pane fade">
                            <div class="row">
                                <div class="col-lg-7 col-md-12">
                                   <c:if test="${empty bmenu}">
								     <p class="text-center">등록된 메뉴가 없습니다.<p>
									</c:if>
						   			 <c:forEach items="${bmenu}" var="bmenu" varStatus="status">	
                           	         <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="/resources/foodmenufileupload/${bmenu.idx}/${bmenu.savedFileName}" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>${bmenu.title }</span> <!-- <strong>$7.00</strong> --></h3>
                                            <br>
                                            <p>${bmenu.content}</p>
                                        </div>
                                    </div>
                                    </c:forEach>
                                    
                                </div>
                                <div class="col-lg-5 d-none d-lg-block">
                                     <img src="/resources/img/food/food6.jpg"  style="width:100%"alt="Image">
                                </div>
                            </div>
                        </div>
                        
                        <div id="food" class="container tab-pane  active">
                            <div class="row">
                                <div class="col-lg-7 col-md-12">
                                
                                	 <c:if test="${empty fmenu}">
								     <p class="text-center">등록된 메뉴가 없습니다.<p>
									</c:if>
						   			 <c:forEach items="${fmenu}" var="fmenu" varStatus="status">	
                           	         <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="/resources/foodmenufileupload/${fmenu.idx}/${fmenu.savedFileName}" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>${fmenu.title }</span> <!-- <strong>$7.00</strong> --></h3>
                                            <br>
                                            <p>${fmenu.content}</p>
                                        </div>
                                    </div>
                                    </c:forEach>
                                 
                                   
                                    
                                </div>
                                <div class="col-lg-5 d-none d-lg-block">
                                    <img src="/resources/img/food/food6.jpg" style="width:100%" alt="Image">
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Menu End -->


 
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