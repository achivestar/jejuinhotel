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
    			
    			<h5 style="border-left:2px solid #5fb8c0" class="p-1" id="anch2">질문내용</h5>
    			<form>
	    			 	<p><input type="text" name="title" id="title" value="${qnavo.title}" class="form-control" /></p>
	    				<p><textarea  rows="4" cols="100%" id="question" name="question" class="form-control"><c:out value="${fn:replace(qnavo.question,br,crcn) }"/></textarea></p>
	    				<input type="hidden" name="idx" id="idx" value="${qnavo.idx}"/>
	    				<input type="hidden" name="name" id="name" value="${qnavo.name}"/>
	    				 <div class="form-group">
						  	<div class="form-check form-check-inline">
							  <input class="form-check-input" type="radio" name="secret" id="secret1" value="y" <c:if test="${qnavo.secret eq 'y'}">checked</c:if>>
							  <label class="form-check-label" for="secret1">질문내역비밀</label>
							</div>
							<div class="form-check form-check-inline">
							  <input class="form-check-input" type="radio" name="secret" id="secret2" value="n" <c:if test="${qnavo.secret eq 'n'}">checked</c:if>>
							  <label class="form-check-label" for="secret2">질문내역공개</label>
							</div>
				 		</div>  
	    				<p><button type="button" id="update" class="btn-primary-anchor p-2" style="border:none">수정</button>
	    				<button type="button"  class="btn-danger p-2 open" style="border:none" data-id="${qnavo.idx}" data-toggle="modal" data-target="#exampleModal">삭제</button>
	    				</p>

                </form>
            </div>    	
            <hr>
             <div class="col-md-12  p-3 mt-3 mb-3" style="font-size:20px;">
    			<div class="list-group mt-3">
					 <h5 style="border-left:2px solid #5fb8c0" class="p-1" id="anch">답변내역</h5>
					 	 <c:forEach items="${questionReppleList}" var="questionReppleList" varStatus="status">		
							  <a class="list-group-item list-group-item-action">
							    <input type="hidden" name="idx" id="bidx${questionReppleList.idx}" value="${questionReppleList.idx}" />
							    <div class="d-flex w-100 justify-content-between mb-3">
							    	<c:if test="${questionReppleList.name eq '제주인호텔' }">
							      <textarea style="background:#fff;text-align:left;resize: none;border:none" rows="4" cols="100%" id="answer${questionReppleList.idx}" name="answer" class="form-control" readonly><c:out value="${fn:replace(questionReppleList.answer,br,crcn)}"/></textarea>
							   		</c:if>
							   		<c:if test="${questionReppleList.name ne '제주인호텔' }">
							      <textarea style="background:#fff;text-align:left;resize: none;border:none" rows="4" cols="100%" id="answer${questionReppleList.idx}" name="answer" class="form-control"><c:out value="${fn:replace(questionReppleList.answer,br,crcn)}"/></textarea>
							   		</c:if>
							   </div>
							    <c:if test="${questionReppleList.name eq '제주인호텔' }">
							      	<small class="ml-3 float-left"><span style="font-size:11px">${questionReppleList.name } <br> ${questionReppleList.regdate}</span></small>
							      </c:if>
							      <c:if test="${questionReppleList.name ne '제주인호텔' }">
							      	<small class="ml-3 float-left"><span style="font-size:11px">${questionReppleList.name } <br> ${questionReppleList.regdate}</span></small>
							      	<small class="float-left"><button type="button" onclick="update(${questionReppleList.idx})" class="btn-primary-anchor btn-sm p-2" style="border:none">수정</button>
	    							<button type="button"  class="btn-danger btn-sm p-2 open" style="border:none" data-id="${questionReppleList.idx}" data-toggle="modal" data-target="#exampleModal2">삭제</button></small>
							      </c:if>
							  </a>
						  </c:forEach>
						 <br><br>
					 <hr>
					 <form id="form">
					 	<div class="form-group">
					 		 <input type="hidden" name="name"  id="rname" value="${qnavo.name}" />
					 		 <input type="hidden" name="bno" id="rbno" value="${qnavo.idx}" />
					 		 <input type="hidden" name="pwd" id="rpwd" value="${qnavo.pwd}" />
							 <label for="answer">댓글작성</label>
							 <textarea name="answer" id="ranswer" rows="3" cols="10" class="form-control"></textarea>
						</div>
						 <button type="button" class="btn btn-lg btn-primary" id="save">댓글등록</button>
						 <a href="/qna" class="btn btn-lg btn-primary-anchor">목록</a>
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


 <!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h6 class="modal-title" id="exampleModalLabel">문의글 삭제</h6>
	        <button type="button" class="close " data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <form id="form" role="form">
		      <div class="modal-body">
		          <input type="hidden" name="idx" id="didx" value=""/>
		          <input type="hidden" name="name" id="name" value="${qnavo.name}"/>
		     	  문의글을 삭제하시면 답변도 함께 삭제 됩니다.<br>
		     	  삭제하시겠습니까?
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button type="button" id="delete" class="btn btn-primary-anchor">확인</button>
		      </div>
	      </form>
	    </div>
	  </div>
	</div>



	<!-- Modal -->
	<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	     
	      <form id="form" role="form">
		      <div class="modal-body">
		          <input type="hidden" name="idx" id="uidx" value=""/>
		     	  댓글을 삭제하시겠습니까?
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button type="button" id="userDelete" class="btn btn-primary">확인</button>
		      </div>
	      </form>
	    </div>
	  </div>
	</div>


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

       $(".open").click(function () {
           $('#didx').val($(this).data('id'));
           $('#uidx').val($(this).data('id'));
       });
  
     $("#update").click(function(){
    		 //var form = new FormData(document.getElementById('form'));
    		 var idx = $("#idx").val();
    		 var title = $("#title").val();
    		 var question = $("#question").val();
    		 var name = $("#name").val();
    		 var secret = $('input[name=secret]:checked').val();
    		// alert(idx+","+title+","+question+","+secret+","+name);
    		 //alert(form);
    			$.ajax({
    			    type: 'POST',
    				url: "${pageContext.request.contextPath}/qnaUpdate", 
    				data: JSON.stringify({
    					idx: idx,
    					question: question,
    					title: title,
    					name: name,
    					secret: secret
    				}),
    				dataType: 'text',
    				contentType: 'application/json',
    				success: function(data){
    					//alert(data);
    					if(data=='success'){
    						alert("1:1 문의가 수정 되었습니다.\n빠른 시일 내에 답변 해드리겠습니다.\n감사합니다.");
    						location.reload();
        					//location.href="${pageContext.request.contextPath}/qna";
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
    					//location.href="${pageContext.request.contextPath}/qna";
    				}
    			}) ;
    			//$("#msform").submit();	

    	}) //save btn end 
            
    	
    	$("#delete").click(function(){
   		 //var form = new FormData(document.getElementById('form'));
   		 var idx = $("#didx").val();
   		 var name = $("#name").val();
		// alert(idx+","+name);
   		 //alert(form);
   			$.ajax({
   			    type: 'POST',
   				url: "${pageContext.request.contextPath}/qnaDelete", 
   				data: JSON.stringify({
   					idx: idx,
   					name: name
   				}),
   				dataType: 'text',
   				contentType: 'application/json',
   				success: function(data){
   					//alert(data);
   					if(data=='success'){
   						alert("1:1 문의가 삭제 되었습니다.");
   						//location.reload();
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

   	}) //save btn end 
   	
   	
$("#save").click(function(){
    	
    	if($("#ranswer").val().length==0){
    		 alert("내용을 입력해 주세요.");
    		 $("#ranswer").focus();
    	     return false;
    	}else{
    		 //var form = new FormData(document.getElementById('form'));
    		 var name = $("#rname").val();
    		 var idx = $("#rbno").val();
    		 var answer = $("#ranswer").val();
    		 var pwd = $("#rpwd").val();
    		 //alert(title+","+name+","+pwd+","+question+","+secret);
    		 
    		 //alert(form);
    			$.ajax({
    			    type: 'POST',
    				url: "${pageContext.request.contextPath}/qnaReppleRegist", 
    				data: JSON.stringify({
    					name: name,
						bno: idx,
						answer: answer
    				}),
    				dataType: 'text',
    				contentType: 'application/json',
    				success: function(data){
    					//alert(data);
    					if(data=='success'){
    						alert("댓글이 등록 되었습니다.");
        					location.href="${pageContext.request.contextPath}/myQnaList?idx="+idx+"&name="+name+"&pwd="+pwd+"#anch";
        					location.reload();
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
            
           
    	
    	
    	function update(i){
   		 var idx = $("#bidx"+i).val();
   	 	 var answer = $("#answer"+i).val();
   	 	 
   	 	 //alert(idx+","+answer);
   	 	if(answer.length == 0) {
   	 		alert("댓글을 달아 주세요");
   	 		answer.focus();
   	 	}else{
   	 		$.ajax({
   			    type: 'POST',
   				url: "${pageContext.request.contextPath}/qnaAdminReppleUpdate", 
   				data: JSON.stringify({
   					idx: idx,
   					answer: answer
   				}),
   				dataType: 'text',
   				contentType: 'application/json',
   				success: function(data){
   					//alert(data);
   					if(data=='success'){
   						alert("댓글이 수정되었습니다.");
   						location.reload();
   						//location.href="${pageContext.request.contextPath}/qna";
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
   					//location.href="${pageContext.request.contextPath}/qna";
   				}
   			}) ;
   	 	} 
   	 	
   	 	
   	}
    
    
    
    $("#userDelete").click(function(){
   		 //var form = new FormData(document.getElementById('form'));
   		 var idx = $("#uidx").val();
   		 //alert(idx);
   			$.ajax({
   			    type: 'POST',
   				url: "${pageContext.request.contextPath}/qnaAdminReppleDelete", 
   				data: JSON.stringify({
   					idx: idx
   				}),
   				dataType: 'text',
   				contentType: 'application/json',
   				success: function(data){
   					//alert(data);
   					if(data=='success'){
   						alert("댓글이 삭제 되었습니다.");
   						location.reload();
      					  //location.href="${pageContext.request.contextPath}/qna";
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
   					location.href="${pageContext.request.contextPath}/admin/qna";
   				}
   			}) ;
   			//$("#msform").submit();	

   	}) //save btn end 
    	
    </script>
</body>
</html>