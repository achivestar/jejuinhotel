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
			width:100%;display: flex;align-items: center;padding:0;background-color:#f7b113
		}
		
		div.bg-blue {
			width:100%;display: flex;align-items: center;padding:0;background-color:#0094a8
		}
		
		.card-text {
			line-height:1.1;
			text-align:left;
		}
		
		.card-text a {
			color:#aaa;
		}
		.card-title a {
			color:#000;
		}
		
		.newsimg:hover {
		    transition: transform 0.5s;
		    transform-origin: 50% 50%;
		    transform: scale(1.03);
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
    <!-- Page Header Start -->
    <!-- Header End -->
    
    <%@include file="./include/info.jsp" %>


    <div class="container">
    	<div class="row">
    		<div class="col-md-12 p-3 text-center">
    			<c:if test="${empty newsList}">
			        <p>등록된 공지글이 없습니다.</p>
				</c:if>
    		
    		</div>
    		<div class="col-md-12 text-center p-3" style="font-size:20px;line-height:1.8">
    		   	<div class="row row-cols-2 row-cols-md-3 text-center" id="anch">
    		   
			    <c:forEach items="${newsList}" var="newsList" varStatus="status">	
			    <c:set var="regdate" value="${newsList.regdate}"/>
			    <c:set var="TextValue" value="${newsList.title}"/>
			   	 <div class="col mb-4">
				    <div class="card"  data-aos="zoom-in">
				      <a href="/newsDetail?idx=${newsList.idx}">
				      <c:if test="${not empty newsList.thumburl}">
				      		<img src="${newsList.thumburl}" class="card-img-top newsimg" alt="...">
				      </c:if>
				      <c:if test="${empty newsList.thumburl}">
				     	 <img src="/resources/img/active/active4.jpg" class="card-img-top newsimg" alt="...">
				      </c:if>
				      
				      
				      </a>
				      <div class="card-body">
				        <p class="card-text"><a href="/newsDetail?idx=${newsList.idx}">${fn:substring(TextValue,0,20)}
				        <c:if test="${fn:length(TextValue)>=20}">
				        	...
				        </c:if>
				        </a></p>
				      	<p class="card-text"><small class="text-muted">${fn:substring(regdate,0,10) } | ${newsList.writer }</small></p>
				      </div>
				    </div>
				  </div>
			    
			    
			    </c:forEach>
    		</div>
    		
    		<!-- 페이징 시작 -->
			<div class="col-md-12 mb-4">
                    <nav aria-label="Page navigation">
                      <ul class="pagination justify-content-center mb-0">
                        <c:if test="${pageMaker.prev}">
	                        <li class="page-item">
	                          <a class="page-link" href="/news?page=${pageMaker.startPage-1}#anch" aria-label="Previous">
	                            <span aria-hidden="true">&laquo;</span>
	                            <span class="sr-only">Previous</span>
	                          </a>
	                        </li>
                        </c:if>
                        
                        <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                        	 <li class="page-item <c:out value="${pageMaker.cri.page == idx ? 'active' : ''}" /> ">
                        	  <a class="page-link" href="/news?page=${idx}#anch">${idx }</a></li>
                        </c:forEach>
                        
                        <c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
	                        <li class="page-item">
	                          <a class="page-link" href="/news?page=${pageMaker.endPage+1}#anch" aria-label="Next">
	                            <span aria-hidden="true">&raquo;</span>
	                            <span class="sr-only">Next</span>
	                          </a>
	                        </li>
                        </c:if>
                      </ul>
                    </nav>
                </div>
                
                <!-- 페이징 끝 -->
                
                
    		
    		
    		
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
    <script>
	  AOS.init();
	</script>
</body>
</html>