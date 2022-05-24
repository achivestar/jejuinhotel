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
  <!--   <div class="container-fluid  py-5 page-header" >
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
    </div> -->
    <!-- Page Header Start -->
    <!-- Header End -->
    
    <%-- <%@include file="./include/info.jsp" %> --%>


    <div class="container">
    	
    	<div class="row">
    		<div class="col-md-12 text-center p-3 mt-3 mb-3" style="font-size:20px;color:#000;line-height:1.8">
    			문의 사항은 064-741-1100 / 예약실 064-741-1101 <br>
    			연락 주시면 신속하고 친절하게 안내해 드리겠습니다.
    		</div>
    		<div class="col-md-12 text-center p-3  mb-3" style="font-size:20px;">
    			<a class="btn btn-primary-anchor btn-lg" href="/qnaRegist#here" role="button">문의하기</a>

            </div>    
    		<div class="col-md-12" id="anch">
					 <h5 style="border-left:2px solid #6610f2" class="p-1">문의내역</h5>
					 <div class="table-responsive">
						 <table class="table">
							  <thead>
							    <tr class="text-center" style="background:#0094a8;color:#fff">
							      <th scope="col">질문자</th>
							      <th scope="col">질문내역</th>
							      <th scope="col">답변여부</th>
							      <th scope="col">등록일시</th>
							    </tr>
							  </thead>
							  <tbody >
							  <c:forEach items="${qnaList}" var="qnaList" varStatus="status">	
							   <c:set var="regdate" value="${qnaList.regdate}"/>
							   <c:set var="upddate" value="${qnaList.upddate}"/>
							   <c:set var="title" value="${qnaList.title}"/>
							   <c:set var="name" value="${qnaList.name}" />
							    <tr class="text-center">
							      <td>${fn:replace(qnaList.name,fn:substring(name,1,2),'*')}</td>
							      <td style="vertical-align:middle">
							      <c:if test="${qnaList.secret eq 'y'}">
							      	<a href="#none" class="open" style="color:blue" data-id="${qnaList.idx}" data-toggle="modal" data-target="#exampleModal">비밀글입니다.</a> 
							      	<img src="/resources/img/lock.png" style="width:20px"/>
							      </c:if>
							      <c:if test="${qnaList.secret eq 'n'}">
							     	 <a href="#none" class="open" style="color:blue" data-id="${qnaList.idx}" data-toggle="modal" data-target="#exampleModal">${fn:substring(title,0,20) }</a>
							      </c:if>

							      </td>
							      <td><c:if test="${qnaList.tf eq 'y'}">
							      		<span class="badge badge-pill badge-danger p-1">답변준비</span>
							      	</c:if>
							      	<c:if test="${qnaList.tf eq 'n'}">
							      		<span class="badge badge-pill badge-success p-1">답변완료</span>
							      	</c:if></td>
							      <td>${qnaList.regdate}</td>
							      <%-- <td><a href="#none" class="open" data-id="${qnaList.idx}" data-toggle="modal" data-target="#exampleModal">보기</a></td> --%>
							    </tr>
							    </c:forEach>
							  </tbody>
							</table>
						</div>
						
						<!-- 페이징 시작 -->
			<div class="col-md-12 mb-4">
                    <nav aria-label="Page navigation">
                      <ul class="pagination justify-content-center mb-0">
                        <c:if test="${pageMaker.prev}">
	                        <li class="page-item">
	                          <a class="page-link" href="/qna?page=${pageMaker.startPage-1}#anch" aria-label="Previous">
	                            <span aria-hidden="true">&laquo;</span>
	                            <span class="sr-only">Previous</span>
	                          </a>
	                        </li>
                        </c:if>
                        
                        <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                        	 <li class="page-item <c:out value="${pageMaker.cri.page == idx ? 'active' : ''}" /> ">
                        	  <a class="page-link" href="/qna?page=${idx}#anch">${idx }</a></li>
                        </c:forEach>

                        
                        <c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
	                        <li class="page-item">
	                          <a class="page-link" href="/qna?page=${pageMaker.endPage+1}#anch" aria-label="Next">
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
    		<div class="col-md-12 text-center p-3  mb-3" style="font-size:20px;">
    			<a class="btn btn-primary-anchor btn-lg" href="/qnaRegist#here" role="button">문의하기</a>

            </div>    	
  	   </div>
 </div>
    <!-- Footer Start -->
    	<%@include file="./include/footer.jsp" %>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary-anchor back-to-top"><i class="fa fa-angle-double-up"></i></a>
    
    
    <!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h6 class="modal-title" id="exampleModalLabel">문의글 작성시 작성하신 이름과<br>비밀번호 4자리를 입력해 주세요.</h6>
	        <button type="button" class="close " data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <form id="form" role="form">
		      <div class="modal-body">
		         <input type="hidden" name="idx" id="idx" value=""/>
		         <input type="text"  id="name" name="name" value="" class="form-control" placeholder="이름"/>
		         <input type="password" id="pwd" name="pwd" value=""  maxlength="4" class="form-control" placeholder="비밀번호"/>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button type="button" id="save" class="btn btn-primary-anchor" onclick="idChk()">확인</button>
		      </div>
	      </form>
	    </div>
	  </div>
	</div>


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
     
	    $(document).ready(function () {
	        $(".open").click(function () {
	            $('#idx').val($(this).data('id'));
	        });
	        
	        
	       

		    
	    });
	    
	    function idChk() {

			    	const regex = /^\d{4}$/;
			    	var pwd = $("#pwd").val();
			    	var form = $("#form")[0];
			    	if($("#name").val().length==0){
				   		 alert("이름을 입력해 주세요.");
				   		 $("#name").focus();
						 return false;
					}
			    	if($("#pwd").val().length==0){
				   		 alert("비밀번호를 입력해 주세요.");
				   		 $("#pwd").focus();
						 return false;
					}
			    	if(!regex.test(pwd)){
				   		 alert("비밀번호는 숫자4자리만 허용합니다.");
				   		 $("#pwd").val("");
				   		 $("#pwd").focus();
						 return false;
					}else{
						 form.action = "/qnaView";
						 form.method="POST";
						 form.submit();
					}
		
	    }
	   /*  $("#save").click(function(){
	    	
	    	const regex = /^\d{4}$/;
	    	var pwd = $("#pwd").val();
	    	
	    	if($("#name").val().length==0){
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
	    		 var name = $("#name").val();
	    		 var pwd = $("#pwd").val();
	    		 var idx = $("#idx").val();
	    		// alert(name+","+pwd+","+idx);
	    		 
	    		 //alert(form);
	    			$.ajax({
	    			    type: 'POST',
	    				url: "${pageContext.request.contextPath}/isMember", 
	    				data: JSON.stringify({
	    					name: name,
	    					pwd: pwd,	 
	    					idx: idx
	    				}),
	    				dataType: 'text',
	    				contentType: 'application/json',
	    				success: function(data){
	    					//alert(data);
	    					if(data=='success'){
	    						//alert("1:1 문의가 접수 되었습니다.\n빠른 시일 내에 답변 해드리겠습니다.\n감사합니다.");
	        				    location.href= "/qnaView?idx="+idx+"&name="+name;
	        					
	    					}else {
	    						alert("이름 또는 비밀번호가 일치하지 않습니다.\n다시 시도해 보세요");
	    						location.reload()
	    						return
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
	    		

	    	}) //save btn end */
	            
    </script>
    
</body>
</html>