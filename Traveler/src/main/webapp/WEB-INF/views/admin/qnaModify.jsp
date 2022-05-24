<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>        
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>   
<%
	pageContext.setAttribute("crcn", "\r\n");
	pageContext.setAttribute("br","<br>");
%>   
<html lang="ko">

<head>
  <!-- Required meta tags -->
  <title>JEJU IN HOTEL | ADMIN</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="robots" content="noindex">
  <!-- plugins:css -->
  <link rel="stylesheet" href="/resources/admin/vendors/feather/feather.css">
  <link rel="stylesheet" href="/resources/admin/vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="/resources/admin/vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <link rel="stylesheet" href="/resources/admin/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
  <link rel="stylesheet" href="/resources/admin/vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" type="text/css" href="/resources/admin/js/select.dataTables.min.css">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="/resources/admin/css/vertical-layout-light/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="/resources/admin/images/favicon.png" />
  
  <link href="/resources/admin/summernote/summernote.min.css" rel="stylesheet">
   <style>
 	 	.displayLoding {
				display:none;
		} 
    </style>
</head>
<body>
  <div class="container-scroller">

    <!-- include header start -->
    	 <%@include file="./include/header.jsp" %>
    <!-- include header end -->
    <div class="container-fluid page-body-wrapper">
       <!-- include theme & nav start -->
        <%@include file="./include/themeSetting.jsp" %>
        <%@include file="./include/nav.jsp" %>
       <!-- include theme & nav end -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-md-12 grid-margin">
              <div class="row">
                <div class="col-12 col-xl-8 mb-4 mb-xl-0">
                  <h3 class="font-weight-bold">안녕하세요. 관리자님!</h3>
                 
                </div>
                <div class="col-12 col-xl-4">
                 <div class="justify-content-end d-flex">
                	 <nav aria-label="breadcrumb">
					  <ol class="breadcrumb">
					    <li class="breadcrumb-item"><a href="/admin/index">Home</a></li>
					    <li class="breadcrumb-item active" aria-current="page">Q&A</li>
					  </ol>
					</nav>
                 </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <%@include file="./include/info.jsp" %>
          </div>
          
  		
			<!--  공지사항 등록 시작 -->
			<div class="row">
				<div class="col-md-12 text-right mb-3">
					<a href="/admin/qna" class="btn btn-primary">목록</a>
				</div>
				<div class="col-md-12">
					<%-- <form id="form" enctype="multipart/form-data">
						<div class="form-group">
						    <label for="title">제목</label>
						    <input type="text" class="form-control" id="title" name="title"  value="${qnavo.title}">
						</div>
						<div class="form-group">
							<label for="content">질문내용</label>
							 <textarea name="que" class="form-control" readonly>${qnavo.question}</textarea>
						</div>
					
					   <input type="hidden" name="thumburl" id="thumburl" />
					   <input type="hidden" name="writer" value="admin" />
					   <input type="hidden" name="idx" value="${qunvo.idx}" />
					  <br>
					  <input type="button" class="btn btn-primary" id="save" value="수정">
					  <input type="button" class="btn btn-danger" id="del" value="삭제">
					  <input type="button" class="btn btn-secondary" id="list" value="목록">
					</form> --%>
					
					
					
					<table class="table">
					    <tbody>
					       <tr>
					        <td>질문자</td>
					        <td>${qnavo.name }</td>
					      </tr>
					       <tr>
					        <td>등록시간</td>
					        <td>${qnavo.regdate }</td>
					      </tr>
					      <tr>
					        <td>제목</td>
					        <td>${qnavo.title }</td>
					      </tr>
					      <tr>
					        <td>질문내용</td>
					        <td>${qnavo.question }</td>
					      </tr>
					    </tbody>
					 </table>
					 <br><br>
					 
					 <div class="list-group mt-3">
					 <h5 style="border-left:2px solid #6610f2" class="p-1">답변내역</h5>
					 	 <c:forEach items="${qnaReppleList}" var="qnaReppleList" varStatus="status">	
					 	 	
							  <a class="list-group-item list-group-item-action" style="overflow:hidden">
							  	<input type="hidden" name="idx" id="bidx${qnaReppleList.idx}" value="${qnaReppleList.idx}" />
							    <div class="d-flex w-100 justify-content-between mb-3">
							        <c:if test="${qnaReppleList.name eq '제주인호텔' }">
							       		<textarea style="text-align:right" rows="4" cols="100%" id="answer${qnaReppleList.idx}" name="answer" class="form-control"><c:out value="${fn:replace(qnaReppleList.answer,br,crcn) }"/></textarea>
									</c:if>
									<c:if test="${qnaReppleList.name ne '제주인호텔' }">
							       		<textarea style="text-align:left" rows="4" cols="100%" id="answer${qnaReppleList.idx}" name="answer" class="form-control" readonly><c:out value="${fn:replace(qnaReppleList.answer,br,crcn) }"/></textarea>
									</c:if>
							    </div>
							     <c:if test="${qnaReppleList.name eq '제주인호텔' }">
							      <small class="ml-3 float-right">${qnaReppleList.name } <br> ${qnaReppleList.regdate}</small>
							      <small class="float-right"><button type="button" onclick="update(${qnaReppleList.idx})" class="btn-primary btn-sm p-2" style="border:none">수정</button>
	    							<button type="button"  class="btn-danger p-2 open btn-sm" style="border:none" data-id="${qnaReppleList.idx}" data-toggle="modal" data-target="#exampleModal">삭제</button></small>
							     </c:if>
							      <c:if test="${qnaReppleList.name ne '제주인호텔' }">
							      <small class="ml-3 float-left">${qnaReppleList.name } <br> ${qnaReppleList.regdate}</small>
							     </c:if>
							  </a>
			
						  </c:forEach>
						</div>

					 <br><br>
					 <hr>
					 <form id="form">
					 	<div class="form-group">
					 		 <input type="hidden" name="name"  id="rname" value="제주인호텔" />
					 		 <input type="hidden" name="bno" id="rbno" value="${qnavo.idx}" />
							 <label for="answer">답변내용작성</label>
							 <textarea name="answer" id="ranswer" rows="10" cols="10" class="form-control"></textarea>
						</div>
						 <button type="button" class="btn btn-primary" id="save">답변등록</button>
					 </form>
				</div>
			</div>
			 <div class="displayLoding spinner">
			  		<span style="display:flex;align-items:center;justify-content: center;"><img src="${pageContext.request.contextPath}/resources/img/spin.gif" /></span>
			</div>
		
        </div>
       	 <!-- include footer start -->
         	<%@include file="./include/footer.jsp" %>
          <!-- include footer end -->
      </div>
      <!-- main-panel ends -->
    </div>   
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->



<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	     
	      <form id="form" role="form">
		      <div class="modal-body">
		          <input type="hidden" name="idx" id="didx" value=""/>
		     	  답변을 삭제하시면 복구할 수 없습니다.<br>
		     	  삭제하시겠습니까?
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button type="button" id="delete" class="btn btn-primary">확인</button>
		      </div>
	      </form>
	    </div>
	  </div>
	</div>




   <!-- plugins:js -->
  <script src="/resources/admin/vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->

  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="/resources/admin/js/off-canvas.js"></script>
  <script src="/resources/admin/js/hoverable-collapse.js"></script>
  <script src="/resources/admin/js/template.js"></script>
  <script src="/resources/admin/js/settings.js"></script>
  <script src="/resources/admin/js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="/resources/admin/js/dashboard.js"></script>
  <script src="/resources/admin/js/Chart.roundedBarCharts.js"></script>
  <!-- End custom js for this page-->
  

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 <!-- include summernote css/js -->
<script src="/resources/admin/summernote/summernote.min.js"></script>
<script>

$(".open").click(function () {
    $('#didx').val($(this).data('id'));
});

 $("#save").click(function(){
 	
 	
 	if($("#ranswer").val().length==0){
 		 alert("답변 내용을 입력해 주세요.");
 		 $("#ranswer").focus();
 	     return false;
 	}else{
 		 //var form = new FormData(document.getElementById('form'));
 		 var answer = $("#ranswer").val();
 		 var name = $("#rname").val();
 		 var bno = $("#rbno").val();
 			$.ajax({
 			    type: 'POST',
 				url: "${pageContext.request.contextPath}/qnaReppleRegist", 
 				data: JSON.stringify({
 					answer: answer,
 					name: name,
 					bno: bno
 				}),
 				dataType: 'text',
 				contentType: 'application/json',
 				success: function(data){
 					//alert(data);
 					if(data=='success'){
 						alert("답변이 등록 되었습니다.");
 						location.reload()
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
 		}
 		

 	}) //save btn end
         
 	
 	function update(i){
		 var idx = $("#bidx"+i).val();
	 	 var answer = $("#answer"+i).val();
	 	 
	 	 //alert(idx+","+answer);
	 	if(answer.length == 0) {
	 		alert("답변을 달아 주세요");
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
						alert("문의에 대한 답변이 수정되었습니다.");
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
 
 
 
 $("#delete").click(function(){
		 //var form = new FormData(document.getElementById('form'));
		 var idx = $("#didx").val();
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
						alert("답변이 삭제 되었습니다.");
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