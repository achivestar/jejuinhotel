<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<!-- <div class="col-md-12 text-right mb-3">
					<a href="/admin/food" class="btn btn-primary">목록</a>
				</div> -->
				
				<div class="col-md-12 text-right mb-3">
					<ul class="nav nav-tabs">
					  <li class="nav-item">
					    <a class="nav-link active" data-toggle="tab" href="#coffee">커피라운지</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" data-toggle="tab" href="#restaurant">레스토랑</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" data-toggle="tab" href="#seven">편의점</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" data-toggle="tab" href="#subject">B/F소개글</a>
					  </li>
					</ul>
					<div class="tab-content">
					  <div class="tab-pane fade show active" id="coffee">
					
								<form id="form1" method="post" action="/admin/foodUpdate1" enctype="multipart/form-data">
									<div class="form-group">
									    <label for="title1">커피라운지 제목</label>
									    <input type="text" class="form-control" id="title1" name="title"  value="${foodvocoffee.title}">
									</div>
									<div class="form-group">
										 <label for="content1">커피라운지 소개글</label>
										<textarea class="form-control"  name="content" id="content1" rows="3">${foodvocoffee.content}</textarea>
									</div>
			
									<div class="form-group">
									    <label for="input_file">커피라운지 이미지</label><br>
									    <img src="/resources/foodfileupload/${foodvocoffee.idx}/${foodvocoffee.savedFileName}" class="img-thumbnail" alt="..." style="width:200px;height:auto">
									 	<br>
									    <input type="file" class="form-control" name="file">
									</div>
									
								   <input type="hidden" name="idx" value="1" />
								   <input type="hidden" name="gubun" value="coffee"/>
								  <input type="button" id="foodUpdate1" class="btn btn-primary" value="저장">
								  <input type="button" class="btn btn-secondary" id="list" value="목록">
								</form>
							
					  </div>
					  <div class="tab-pane fade" id="restaurant">
					    	<form id="form2" method="post" action="/admin/foodUpdate2" enctype="multipart/form-data">
									<div class="form-group">
									    <label for="title2">식당 제목</label>
									    <input type="text" class="form-control" id="title2" name="title" value="${foodvorest.title}">
									</div>
									<div class="form-group">
										 <label for="content2">식당 소개글</label>
										<textarea class="form-control"  name="content" id="content2" rows="3">${foodvorest.content}</textarea>
									</div>
			
									<div class="form-group">
									    <label for="input_file">식당 이미지</label>
									    <br>
									    <img src="/resources/foodfileupload/${foodvorest.idx}/${foodvorest.savedFileName}" class="img-thumbnail" alt="..." style="width:200px;height:auto">
									 	<br>
									    <input type="file" class="form-control-file" name="file">
									</div>
									
								  <input type="hidden" name="idx" value="2" />	
								  <input type="hidden" name="gubun" value="restaurant"/>
								  <input type="button" id="foodUpdate2" class="btn btn-primary" value="저장">
								  <input type="button" class="btn btn-secondary" id="list" value="목록">
								</form> 
					  </div>
					  <div class="tab-pane fade" id="seven">
					    	<form id="form3" method="post" action="/admin/foodUpdate3" enctype="multipart/form-data">
									<div class="form-group">
									    <label for="title3">편의점 제목</label>
									    <input type="text" class="form-control" id="title3" name="title" value="${foodvostore.title}">
									</div>
									<div class="form-group">
										 <label for="content3">편의점 소개글</label>
										<textarea class="form-control"  name="content" id="content3" rows="3">${foodvostore.content}</textarea>
									</div>
			
									<div class="form-group">
									    <label for="input_file">편의점 이미지</label>
									    <br>
									    <img src="/resources/foodfileupload/${foodvostore.idx}/${foodvostore.savedFileName}" class="img-thumbnail" alt="..." style="width:200px;height:auto">
									 	<br>
									    <input type="file" class="form-control-file" name="file">
									</div>
									
									
								  <input type="hidden" name="gubun" value="store"/>
								  <input type="hidden" name="idx" value="3" />
								   <input type="button" id="foodUpdate3" class="btn btn-primary" value="저장">
								  <input type="button" class="btn btn-secondary" id="list" value="목록">
								</form> 
					  </div>
					  
					  <div class="tab-pane fade" id="subject">
					    	<form id="form4" method="post" action="/admin/foodRegist4" enctype="multipart/form-data">
									<div class="form-group">
									    <label for="title4">B/F 제목</label>
									    <input type="text" class="form-control" id="title4" name="title" value="${bnfvo.title}">
									</div>
									<div class="form-group">
										 <label for="content4">B/F 소개</label>
										<textarea class="form-control"  name="content" id="content4" rows="3">${bnfvo.content }</textarea>
									</div>
								  <input type="hidden" name="idx" value="1" />
								  <input type="button" id="foodUpdate4" class="btn btn-primary" value="저장">
								  <input type="button" class="btn btn-secondary" id="list" value="목록">
								</form> 
					  </div>
					</div>

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
		location.href="/admin/room";	
	});
	
	$("#foodUpdate1").click(function(){
		if($("#title1").val()==""){
			alert("제목을 입력해 주세요");
			$("#title1").focus();
			return;
		}else if($("#content1").val()==""){
			alert("소개글을 입력해 주세요");
			$("#content1").focus();
			return;
		}else{
			$("#form1").submit();
		}
	});
	
	$("#foodUpdate2").click(function(){
		if($("#title2").val()==""){
			alert("제목을 입력해 주세요");
			$("#title2").focus();
			return;
		}else if($("#content2").val()==""){
			alert("소개글을 입력해 주세요");
			$("#content2").focus();
			return;
		}else{
			$("#form2").submit();
		}
	});
	
	$("#foodUpdate3").click(function(){
		if($("#title3").val()==""){
			alert("제목을 입력해 주세요");
			$("#title3").focus();
			return;
		}else if($("#content3").val()==""){
			alert("소개글을 입력해 주세요");
			$("#content3").focus();
			return;
		}else{
			$("#form3").submit();
		}
	});
	
	
	$("#foodUpdate4").click(function(){
		if($("#title4").val()==""){
			alert("제목을 입력해 주세요");
			$("#title4").focus();
			return;
		}else if($("#content4").val()==""){
			alert("소개글을 입력해 주세요");
			$("#content4").focus();
			return;
		}else{
			$("#form4").submit();
		}
	});
</script>
  
 
</body>

</html>