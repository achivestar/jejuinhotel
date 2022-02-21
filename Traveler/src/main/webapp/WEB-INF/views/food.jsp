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
                    <h1 class="mb-4 mb-md-0 text-white text-uppercase">음식, 음악, 이야기, 마음, 그리고 술</h1>
                </div>
                <div class="col-md-6 text-center text-md-right">
                    <div class="d-inline-flex align-items-center">
                        <a class="btn btn-outline-primary" href="/">Home</a>
                        <i class="fas fa-angle-double-right text-primary mx-2"></i>
                        <a class="btn btn-cust-primary disabled" href="">Food</a>
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
                	<div class="col-lg-12">
	            		<div class="alert" role="alert" style="background-color:#e3e9fa">
						  <h4 class="alert-heading" style="color:#f7b113"><b>인생 커피와 크래프트 맥주, 디저트까지.</b></h4>
						  <hr>
						  <p style="color:#0094a8">피해갈 수 없는 취향저격 인생맛집을 경험하세요.</p>
						  
						  
						</div>
            		</div>
                    
                    <div class="col-md-12 col-12 col-lg-12">
                       <div class="card-deck">
						  <div class="card" style="border-radius:20px">
						    <img src="/resources/img/food/food1.jpg" class="card-img-top" alt="..." style="display:inline-block;border-radius:20px 20px 0px 0px">
						    <div class="card-body">
						      <h5 class="card-title">Card title</h5>
						      <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
						      <!-- <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
						    </div>
						  </div>
						  <div class="card" style="border-radius:20px">
						    <img src="/resources/img/food/food2.jpg" class="card-img-top" alt="..." style="display:inline-block;border-radius:20px 20px 0px 0px">
						    <div class="card-body">
						      <h5 class="card-title">Card title</h5>
						      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
						      <!-- <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
						    </div>
						  </div>
						  <div class="card" style="border-radius:20px">
						    <img src="/resources/img/food/food3.jpg" class="card-img-top" alt="..." style="display:inline-block;border-radius:20px 20px 0px 0px">
						    <div class="card-body">
						      <h5 class="card-title">Card title</h5>
						      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
						      <!-- <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
						    </div>
						  </div>
						</div>
                   
                </div>
			</div>
		</div>
	
        <!-- Food End -->
        

        <!-- Menu Start -->
        <div class="menu">
            <div class="container">
                <div class="section-header text-center">
                    <p>Food Menu</p>
                    <h2>Delicious Food Menu</h2>
                </div>
                <div class="menu-tab">
                    <ul class="nav nav-pills justify-content-center">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="pill" href="#burgers">Burgers</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="pill" href="#snacks">Snacks</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="pill" href="#beverages">Beverages</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="burgers" class="container tab-pane active">
                            <div class="row">
                                <div class="col-lg-7 col-md-12">
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="/resources/img/food/food1.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Mini cheese Burger</span> <strong>$9.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="/resources/img/food/food1.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Double size burger</span> <strong>$11.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="/resources/img/food/food1.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Bacon, EGG and Cheese</span> <strong>$13.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="/resources/img/food/food1.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Pulled porx Burger</span> <strong>$18.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="/resources/img/food/food1.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Fried chicken Burger</span> <strong>$22.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-5 d-none d-lg-block">
                                     <img src="/resources/img/food/food2.jpg"  style="width:100%"alt="Image">
                                      <br><br>
                                     <img src="/resources/img/food/food5.jpg" style="width:100%" alt="Image">
                                </div>
                            </div>
                        </div>
                        <div id="snacks" class="container tab-pane fade">
                            <div class="row">
                                <div class="col-lg-7 col-md-12">
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="/resources/img/food/food2.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Corn Tikki - Spicy fried Aloo</span> <strong>$15.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="/resources/img/food/food2.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Bread besan Toast</span> <strong>$35.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="/resources/img/food/food2.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Healthy soya nugget snacks</span> <strong>$20.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="/resources/img/food/food2.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Tandoori Soya Chunks</span> <strong>$30.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-5 d-none d-lg-block">
                                     <img src="/resources/img/food/food5.jpg" style="width:100%" alt="Image"><br><br>
                                     <img src="/resources/img/food/food3.jpg" style="width:100%" alt="Image">
                                </div>
                            </div>
                        </div>
                        <div id="beverages" class="container tab-pane fade">
                            <div class="row">
                                <div class="col-lg-7 col-md-12">
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="/resources/img/food/food3.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Single Cup Brew</span> <strong>$7.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="/resources/img/food/food3.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Caffe Americano</span> <strong>$9.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="/resources/img/food/food3.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Caramel Macchiato</span> <strong>$15.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="/resources/img/food/food3.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Standard black coffee</span> <strong>$8.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="/resources/img/food/food3.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Standard black coffee</span> <strong>$12.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-5 d-none d-lg-block">
                                    <img src="/resources/img/food/food6.jpg" style="width:100%" alt="Image">
                                    <br><br>
                                     <img src="/resources/img/food/food1.jpg" style="width:100%" alt="Image">
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