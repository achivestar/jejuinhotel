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
	<style>
		.page-header {
		  background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(/resources/img/header/active9.jpg);
		  background-position:top center;
		  background-repeat:no-repeat;
		  background-size: cover;
		  width: 100%;
		  min-height:430px;

		}
		
 	 	.displayLoding {
				display:none;
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
                    <h1 class="mb-4 mb-md-0 text-white text-uppercase">JEJU IN HOTEL<br>Q&A</h1>
                </div>
                <div class="col-md-6 text-center text-md-right">
                    <div class="d-inline-flex align-items-center">
                        <a class="btn btn-outline-primary" href="/">홈</a>
                        <i class="fas fa-angle-double-right text-primary mx-2"></i>
                        <a class="btn btn-cust-primary disabled" href="">Q&A</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header Start -->
    <!-- Header End -->
    
    <%@include file="./include/info.jsp" %>


    <div class="container" id="here">
    	<div class="row">
    		<div class="col-md-12  p-3 mt-3 mb-3" style="font-size:20px;">
    			<form id="form">
				  <div class="form-group">
				    <label for="title">문의 제목</label>
				    <input type="text" class="form-control" id="title" name="title">
				  </div>
				  <div class="form-group">
				  	<label for="question">문의 내용</label>
				    <textarea name="question" class="form-control"  rows="10" id="question"></textarea>
				  </div>
				  <div class="form-group">
					  	<div class="form-check form-check-inline">
						  <input class="form-check-input" type="radio" name="secret" id="secret1" value="y" checked>
						  <label class="form-check-label" for="secret1">비밀글</label>
						</div>
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="radio" name="secret" id="secret2" value="n">
						  <label class="form-check-label" for="secret2">공개글</label>
						</div>
				  </div>
				  <div class="row">
				    <div class="col">
				      <label for="name">이름 <span style="font-size:11px">(답변 확인,수정,삭제시 필요합니다)</span></label>
				      <input type="text" class="form-control"  id="name" name="name">
				    </div>
				    <div class="col">
				      <label for="pwd">비밀번호<span style="font-size:11px">(답변 확인,수정,삭제시 필요합니다)</span></label>
				      <input type="text" class="form-control" maxlength="4" placeholder="(숫자4자리)" id="pwd" name="pwd">
				    </div>
				  </div>
				  <div class="text-center mt-3">
				  	<button type="button" id="save" class="btn-primary-anchor p-2" style="border:none">문의하기</button>
				  </div>	
				</form>
                
            </div>    	
  	 </div>
 </div> 
 <div class="displayLoding spinner">
  		<span style="display:flex;align-items:center;justify-content: center;"><img src="${pageContext.request.contextPath}/resources/img/spin.gif" /></span>
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
    
    <script>
    $("#save").click(function(){
    	
    	const regex = /^\d{4}$/;
    	var pwd = $("#pwd").val();
    	
    	if($("#title").val().length==0){
    		 alert("제목을 입력해 주세요.");
    		 $("#title").focus();
    	     return false;
    	}else if($("#question").val().length==0){
	   		 alert("문의사항을 입력해 주세요.");
	   		$("#question").focus();
		     return false;
		}else if($("#name").val().length==0){
	   		 alert("이름을 입력해 주세요.");
	   		 $("#name").focus();
			 return false;
		}else if($("#pwd").val().length==0){
	   		 alert("비밀번호를 입력해 주세요.");
	   		 $("#pwd").focus();
			 return false;
		}else if(!regex.test(pwd)){
	   		 alert("비밀번호는 숫자4자리만 허용합니다.");
	   		 $("#pwd").val("");
	   		 $("#pwd").focus();
			 return false;
		}else{
    		 //var form = new FormData(document.getElementById('form'));
    		 var title = $("#title").val();
    		 var name = $("#name").val();
    		 var pwd = $("#pwd").val();
    		 var question = $("#question").val();
    		 var secret = $('input[name=secret]:checked').val();
    		 //alert(title+","+name+","+pwd+","+question+","+secret);
    		 
    		 //alert(form);
    			$.ajax({
    			    type: 'POST',
    				url: "${pageContext.request.contextPath}/qnaRegist", 
    				data: JSON.stringify({
    					title: title,
    					name: name,
    					pwd: pwd,
    					secret: secret,
    					question: question,
    					
    				}),
    				dataType: 'text',
    				contentType: 'application/json',
    				success: function(data){
    					//alert(data);
    					if(data=='success'){
    						alert("1:1 문의가 접수 되었습니다.\n빠른 시일 내에 답변 해드리겠습니다.\n감사합니다.");
        					location.href="${pageContext.request.contextPath}/qna";
    					}
    					
    				}
    				,beforeSend : function(){
    					$(".spinner").removeClass("displayLoding");
    				},
    				complete:function(){
    					$(".spinner").addClass("displayLoding");	
    				},
    				error : function(){
    					alert("죄송합니다. 다시 시도 해보세요.");
    					location.href="${pageContext.request.contextPath}/qna";
    				}
    			}) ;
    			//$("#msform").submit();
    		}
    		

    	}) //save btn end
            
    </script>
</body>
</html>