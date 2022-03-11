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
                    <h1 class="mb-4 mb-md-0 text-white text-uppercase">제주의 새로운 경험 <br> New Experience in Jeju</h1>
                </div>
                <div class="col-md-6 text-center text-md-right">
                    <div class="d-inline-flex align-items-center">
                        <a class="btn btn-outline-primary" href="/">Home</a>
                        <i class="fas fa-angle-double-right text-primary mx-2"></i>
                        <a class="btn btn-cust-primary disabled" href="">Shop</a>
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
    		<div class="col-md-12 text-center p-3" >
    		    <p style="line-height:1.8">
    		    제주잡화점은<br>
    			제주도를 사랑하는<br>
    			제주도를 알고싶은<br>
    			제주에서 살고싶은<br>
    			여러분과 함께<br><br>
    			모두가 상생하는 공정여행을 추구하며,<br>
    			제주도의 사회적 경제와 함께 합니다</p>
    		</div>
    		<div class="col-md-12">
    			<img src="/resources/img/shop/shop1.jpg" style="width:100%"/>
    		<!-- 	<section>

					  This div is  intentionally blank. It creates the transparent black overlay over the video which you can modify in the CSS
					  <div class="overlay"></div>
					
					  The HTML5 video element that will create the background video on the header
					  <video playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop">
					    <source src="https://storage.googleapis.com/coverr-main/mp4/Mt_Baker.mp4" type="video/mp4">
					  </video>
					
					  The header content
					  <div class="container h-100">
					    <div class="d-flex h-100 text-center align-items-center">
					      <div class="w-100 text-white">
					        <h1 class="display-3" style="color:#f7b113">JEJU IN HOTEL</h1>
					        <div style="border-bottom:3px solid #0094a8;width:50%;position:relative;left:50%;margin-left:-25%"></div>
					        <p class="lead mb-0">Experience in JEJU</p>
					      </div>
					    </div>
					  </div>
					</section> -->
					
    		</div>
    		
    		<div class="col-md-12 text-center p-3" style="font-size:20px">
    			SHOP INFO<br><br>
    			제주잡화점 LOUNGE<br><br>
				10:00 - 18:00<br>
				TEL 064.711.7382<br>
				<a href="https://www.instagram.com/jejuall_net" target="_blank">제주잡화점 인스타그램</a><br>
				
    		</div>
    		
    		<div class="col-md-12 col-12 mt-3 mb-3 text-center">
    			<p style="line-height:1.8">제주잡화점은<br>
    			새롭고 특별하며 제주여행의<br> 다양한 것을 제공합니다.<br><br>
    			HRD/MICE 분야에 오랜 기간 다양한<br> 분야의 고객을 대상으로<br>
    			맞춤 프로젝트를 기획하고 운영하면서<br> 다져진 노하우를 바탕으로<br><br>
    			제주의 새로운 경험&여행의 <br>모든 것을 선사하고자 합니다.<br><br>
    			제주. 새로운 경험&여행의 모든것 <br><br> New Experience in Jeju</p>
    			
    		</div>
    		
    		<div class="col-md col-12 mt-3 mb-3 text-center">
    			<img src="/resources/img/shop/shop2.jpg" style="width:100%"/>
    		</div>
    		
	    		
    	
    		
    		 <!-- Services Start -->
    	<div class="container-fluid">
        <div class="container">
            <div class="row">
         
                <div class="col-lg-12 p-0  pt-lg-0">
                    <div class="owl-carousel service-carousel position-relative">
                    	 <div class="d-flex flex-column text-center bg-light mx-3">
                            <h3 class="display-3 font-weight-normal text-primary mb-3">
                           	 <img src="/resources/img/shop/shop8.jpg" style="width:100%;height:350px"/>
                            </h3>
                            <h5 class="mb-3">Tracking</h5>
                            <p class="m-0">제주의 자연과 하나가 되어 걸어 봅니다. </p>
                        </div>
                        <div class="d-flex flex-column text-center bg-light mx-3">
                            <h3 class="display-3 font-weight-normal text-primary mb-3">
                            	<img src="/resources/img/shop/shop9.jpg" style="width:100%;height:350px"/>
                            </h3>
                            <h5 class="mb-3">Living</h5>
                            <p class="m-0">제주 한달 살기 체험을 즐겨보세요.</p>
                        </div>
                        <div class="d-flex flex-column text-center bg-light mx-3">
                            <h3 class="display-3 font-weight-normal text-primary mb-3">
                            	<img src="/resources/img/shop/shop6.jpeg" style="width:100%;height:350px"/>
                            </h3>
                            <h5 class="mb-3">Camping</h5>
                            <p class="m-0">흔적을 남기지 않는 캠핑은 멋진 일입니다.</p>
                        </div>
                       
                    </div>
                    
                </div>
               <!--  <div class="col-lg-12 text-center">
						<a href="http://jejuall.net" target="_blank" class="btn btn-cust-primary2 py-md-3 px-md-5 mt-2 mt-md-4" style="font-weight:bold">온라인 예약하기</a>
				</div> -->
            </div>
        </div>
        <div class="col-lg-12 text-center">
						<a href="http://jejuall.net" target="_blank" class="btn btn-cust-primary2 py-md-3 px-md-5 mt-2 mt-md-4" style="font-weight:bold">+더 보기</a>
		</div>
    </div>
    
   
   <hr>
   
   
   
   
   </div>  <!-- end row -->
 </div> <!--  end container -->

        
<!-- Team Start -->
    <div class="container-fluid bg-cust-light mt-3">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6 mt-3 mb-3">
                    <div class="py-5 px-4  bg-primary d-flex flex-column align-items-center justify-content-center">
                        <h4 class="display-3 mb-3" style="color:red">J&STAY</h4>
                        <h3 class="m-0 mt-3" style="color:#fff">제주에서 한달살기</h3>
                         <a href="https://jnstay.net" target="_blank" class="btn btn-cust-primary py-md-3 px-md-5 mt-2 mt-md-4">click</a>
                    </div>
                   
                </div>
                <div class="col-md-8 col-sm-6 p-0 py-sm-5 mb-3">
                    <div class="owl-carousel service-carousel position-relative">
                    	 <div class="d-flex flex-column text-center bg-light mx-3">
                            <h3 class="display-3 font-weight-normal text-primary mb-3">
                           		<img src="/resources/img/shop/shop12.jpg" style="width:100%" class="card-img-top" alt="...">
                            </h3>
                            <h5 class="mb-3">J&STAY 전경</h5>
                            <p class="m-0">
넓은 마당과 귤밭을 거닐 수 있는
제주도에 있는 고향집 같은 곳</p>
                        </div>
                        <div class="d-flex flex-column text-center bg-light mx-3">
                            <h3 class="display-3 font-weight-normal text-primary mb-3">
                            	<img src="/resources/img/shop/shop11.jpg" style="width:100%"/>
                            </h3>
                            <h5 class="mb-3">야외마당</h5>
                            <p class="m-0">새소리와 함께 쉴 수 있는
테크와 하우스 쉼터, 초가집 쉼터</p>
                        </div>
                        <div class="d-flex flex-column text-center bg-light mx-3">
                            <h3 class="display-3 font-weight-normal text-primary mb-3">
                            	<img src="/resources/img/shop/shop13.jpg" style="width:100%"/>
                            </h3>
                            <h5 class="mb-3">여행프로그램</h5>
                            <p class="m-0">야외바비큐,불멍,풋귤,감귤,양말목공예 등
다양한 체험</p>
                        </div>
                       
                    </div>
                 
                </div>
               
            </div>
            
        </div>
        
    </div>
    <!-- Team End -->
   
   
    <!-- Features Start -->
    <div class="container-fluid">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 mt-5 py-5 pr-lg-5 text-center">
                    <h4 class="mb-4 text-center"><span style="color:red">J&STAY</span>와 함께 제주도에서의 추억을 만들어 보세요.</h4>
                    <p class="mb-4 text-center" style="line-height:2">
                    JEJU의 다양한 것을 의미하는 J<br>
				JEJU의 다양한 것을 즐기고 여행을 위하여<br>
				머무르는 곳 STAY<br>
				이곳은 제주에서의 새로운 경험을 선사해 드리는<br>
				<span style="color:red;font-weight:bold">J&STAY</span>입니다.<br><br>
                    </p>
                    
                    <a href="https:/jnstay.net" target="_blank" class="btn btn-cust-primary2 py-md-3 px-md-5 mt-2 mt-md-4" style="font-weight:bold">+More</a>
                </div>
                <div class="col-lg-5">
                    <div class="d-flex flex-column align-items-center justify-content-center h-100 overflow-hidden">
                        <img class="h-100" src="/resources/img/shop/jnstay.jpg" style="width:100%" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Features End -->
   
   
   
   
   <div class="container mt-3 mb-3">
   	  <div class="row">
   	  	<div class="col-lg-12 col-12 p-1 pt-5 pt-lg-0">
   	  		<img src="/resources/img/shop/shop18.jpg" style="width:100%">
   	  	</div>
   	  	<div class="col-lg-6 col-6 p-1 pt-1 pt-lg-0">
   	  		<img src="/resources/img/shop/shop16.jpg" style="width:100%">
   	  	</div>
   	  	<div class="col-lg-6 col-6 p-1 pt-1 pt-lg-0">
   	  		<img src="/resources/img/shop/shop15.jpg" style="width:100%">
   	  	</div>
   	  	
   	  	<div class="col-lg-12 p-1 pt-1 pt-lg-0">
   	  		<div class="embed-responsive embed-responsive-21by9">
				<iframe class="embed-responsive-item"  width="560" height="315" src="https://www.youtube.com/embed/rBepNYlRJjM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

			</div>
   	  	</div>
   	  	<div class="col-lg-12 p-1 pt-5 pt-lg-0 text-center" style="line-height:2">
		   	  	<span style="color:red;font-weight:bold">J&STAY</span>는<br>
				한적하고 조용한 시골집 같은<br>
				아름다운 동백마을 내에 위치하고 있으며<br>
				제주를 일주하는 일주도로와 3분 거리로<br>
				제주도 특성상 너무 습한 바닷가도<br>
				너무 안쪽으로 들어간 곳도 아닌<br>
				아주 적당한 위치에 있는<br>
				조용한 제주 고향집 입니다. 	  	
   	  	</div>
   	  	<div class="col-lg-12 text-center">
   	  	    <a href="https:/jnstay.net" target="_blank" class="btn btn-cust-primary2 py-md-3 px-md-5 mt-2 mt-md-4" style="font-weight:bold">+More</a>
			<a href="http://jejuall.net/31" target="_blank" class="btn btn-cust-primary2 py-md-3 px-md-5 mt-2 mt-md-4" style="font-weight:bold">Shop</a>
		</div>
   	  	
   	  	
   	  	
   	  </div>
   </div>
   
       <!-- Blog Start -->
   <!--  <div class="container-fluid  pt-5">
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-8 col text-center mb-4">
                    <h4 class="mb-4" style="padding-left:0">우리는 고객님의 의견을 소중히 생각합니다.</h4>
                </div>
            </div>
            <div class="row pb-3">
            	<div class="owl-carousel team-carousel position-relative p-0 py-sm-5">
            
                        <div class="team d-flex flex-column text-center mx-3">
                            <div class="position-relative">
                                <div class="card position-relative team d-flex flex-column text-center mx-3">
								    <img src="/resources/img/about/about3.jpg" class="card-img-top" alt="...">
								    <div class="card-body">
								      <h5 class="card-title">너무 좋아요</h5>
								      <p class="card-text">친절해서 너무 좋았어요</p>
								      <p class="card-text"><small class="text-muted">2020.02.19</small></p>
								    </div>
							  </div>
							  
                            </div>
                             
                        </div>
                        
                        <div class="team d-flex flex-column text-center mx-3">
                            <div class="position-relative">
                                <div class="card position-relative team d-flex flex-column text-center mx-3">
								    <img src="/resources/img/about/about4.jpg" class="card-img-top" alt="...">
								    <div class="card-body">
								      <h5 class="card-title">너무 좋아요</h5>
								      <p class="card-text">친절해서 너무 좋았어요</p>
								      <p class="card-text"><small class="text-muted">2020.02.19</small></p>
								    </div>
							  </div>
							  
                            </div>

                        </div>
                        
                         <div class="team d-flex flex-column text-center mx-3">
                            <div class="position-relative">
                                <div class="card position-relative team d-flex flex-column text-center mx-3">
								    <img src="/resources/img/about/about2.jpeg" class="card-img-top" alt="...">
								    <div class="card-body">
								      <h5 class="card-title">너무 좋아요</h5>
								      <p class="card-text">친절해서 너무 좋았어요</p>
								      <p class="card-text"><small class="text-muted">2020.02.19</small></p>
								    </div>
							  </div>
							  
                            </div>

                        </div>
                        
                          <div class="team d-flex flex-column text-center mx-3">
                            <div class="position-relative">
                                <div class="card position-relative team d-flex flex-column text-center mx-3">
								    <img src="/resources/img/about/about4.jpg" class="card-img-top" alt="...">
								    <div class="card-body">
								      <h5 class="card-title">너무 좋아요</h5>
								      <p class="card-text">친절해서 너무 좋았어요</p>
								      <p class="card-text"><small class="text-muted">2020.02.19</small></p>
								    </div>
							  </div>
							  
                            </div>

                        </div>
                        
                       
                    </div>
 
                    
                   
                
            </div>
        </div>
        
          
    </div> -->
    <!-- Blog End -->

 
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