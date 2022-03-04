<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
					    <li class="breadcrumb-item active" aria-current="page">Food소개</li>
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
					<a href="/admin/food" class="btn btn-primary">목록</a>
				</div>
				
				<div class="col-md-12  mb-3">
			
								<form id="form1" method="post" action="/admin/foodUpdate" enctype="multipart/form-data">
									<div class="form-group">
									    <label for="title1">커피라운지 제목</label>
									    <input type="text" class="form-control" id="title1" name="title" value="${foodvo.title}">
									</div>
									<div class="form-group">
										 <label for="content1">커피라운지 소개글</label>
										<textarea class="form-control"  name="content" id="content1" rows="3">${foodvo.content }</textarea>
									</div>
			
									<div class="form-group">
									    <label for="input_file">커피라운지 이미지</label>
									    <input type="file" class="form-control" name="file" value="${foodvo.savedFileName}">
									</div>
									
								  <input type="hidden" name="idx" value="${foodvo.idx}" />
								   <input type="hidden" name="gubun" value="coffee"/>
								  <input type="submit" class="btn btn-primary" value="수정">
								  <input type="button" class="btn btn-warning" id="delete" value="삭제">
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

        

	$("#list").click(function(){
		location.href="/admin/food";	
	});
	
	$("#delete").click(function(){
		var form = $("form")[0];        
	 	var formData = new FormData(form);
		var ans = window.confirm("삭제하시겠습니까?");
		if(ans){
			$.ajax({
		   	      type: "POST",
		   	      url: "/admin/foodDelete",
		       	  data : formData,
		       	  dataType : 'text',
		       	  processData: false,
		   	      contentType: false,
		   	      success: function (data) {
		   	    	 // alert(data);
		   	    	location.href="/admin/food";
		   	      },
		   	      beforeSend : function(){
						$(".spinner").removeClass("displayLoding");
				  },complete:function(){
						$(".spinner").addClass("displayLoding");	
				  },
		   	      error:function(data){
		   	    	//  alert(data);
		   	    	location.href="/admin/food";
		   	      }
		   	    });
		}else{
			return;
		}
	});
	
</script>
  
 
</body>

</html>