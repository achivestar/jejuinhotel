<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>        
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>      
<html lang="ko">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>JEJU IN HOTEL | ADMIN</title>
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
					    <li class="breadcrumb-item active" aria-current="page">공지사항관리</li>
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
					<a href="/admin/news" class="btn btn-primary">목록</a>
				</div>
				<div class="col-md-12">
					<form id="form" enctype="multipart/form-data">
						<div class="form-group">
						    <label for="title">제목</label>
						    <input type="text" class="form-control" id="title" name="title" value="${newsvo.title}">
						</div>
						<div class="form-group">
							<label for="content">공지내용</label>
							 <textarea id="summernote" name="content" id="content" class="form-control">${newsvo.content}</textarea>
						</div>
					
					   <input type="hidden" name="thumburl" id="thumburl" />
					   <input type="hidden" name="writer" value="admin" />
					   <input type="hidden" name="idx" value="${newsvo.idx}" />
					  <br>
					  <input type="button" class="btn btn-primary" id="save" value="수정">
					  <input type="button" class="btn btn-danger" id="del" value="삭제">
					  <input type="button" class="btn btn-secondary" id="list" value="목록">
					</form>
				</div>
			</div>
			<!--  공지사항 등록 끝 -->
		
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

  <div style="position:fixed;top:50%;left:46%;" class="displayLoding spinner">
  		<span><img src="/resources/img/loading.gif" /></span>
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
$(document).ready(function() {
	// 툴바생략

	var setting = {
            height : 600,
            minHeight : null,
            maxHeight : null,
            focus : true,
            lang : 'ko-KR',
            //콜백 함수
            callbacks : { 
            	onImageUpload : function(files, editor, welEditable) {
            // 파일 업로드(다중업로드를 위해 반복문 사용)
            for (var i = files.length - 1; i >= 0; i--) {
            	uploadImageFileUpdate(files[i],
            			${newsvo.idx},this);
            		}
            	}
            }
     };
	
	
     $('#summernote').summernote(setting);
});
        

	$("#list").click(function(){
		location.href="/admin/news";
	});
	
	
	$("#save").click(function(){
		
		var title =  document.getElementById("title");
		
		
		if(title.value.length==0){
			 alert("제목을 입력해 주세요.");
			 title.focus();
		     return false;
		}else{
			 var form = new FormData(document.getElementById('form'));
			 //alert(form);
				$.ajax({
				    type: 'POST',
					url: "/admin/newsUpdate", 
					data: form,
					dataType: 'html',
					processData: false, 
					contentType: false, 		
					enctype: 'multipart/form-data',
					success: function(data){
						alert("공지글이 수정되었습니다.");
						location.href="/admin/news";
					}
					,beforeSend : function(){
						$(".spinner").removeClass("displayLoding");
					},
					complete:function(){
						$(".spinner").addClass("displayLoding");	
					},error : function(){
						alert("등록 실패!");
						location.href="/admin/news";
					}
				}) ;
				//$("#msform").submit();
			}
			

		}) //save btn end
	        
	        function uploadImageFileUpdate(file,idx, el) {
				data = new FormData();
				data.append("file", file);
				data.append("idx",idx);
				$.ajax({
					data : data,
					type : "POST",
					url : "/admin/uploadNewsImageFileUpdate",
					contentType : false,
					enctype : 'multipart/form-data',
					processData : false,
					success : function(data) {
						
						$(el).summernote('editor.insertImage', data.url);
						
					}
				});
				
			}
	
	$("#del").click(function(){
		 var form = new FormData(document.getElementById('form'));
		var ans = window.confirm("공지글을 삭제하시겠습니까?");

		if(ans) {
				$.ajax({
					type: "post", 
					processData: false, 
					contentType: false, 	
					url: "/admin/newsDelete", 
					data: form,
					dataType: 'html',
					success: function(data){
						alert("공지글이 삭제 되었습니다..");
						location.href="/admin/news"
					}
					,beforeSend : function(){
						$(".spinner").removeClass("displayLoding");
					},
					complete:function(){
						$(".spinner").addClass("displayLoding");	
					}
					
				})
					
		
		}else{
			return false;
		}
	});

</script>
  
 
</body>

</html>