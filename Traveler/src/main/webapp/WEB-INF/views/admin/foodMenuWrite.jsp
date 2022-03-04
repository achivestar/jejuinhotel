<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>        
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
					    <li class="breadcrumb-item active" aria-current="page">Food Menu</li>
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
          
  		
			<!--  룸 등록 시작 -->
			<div class="row" id="anch">

				<div class="col-md-12">
						<!--  메뉴 등록 시작 -->
				<div class="row">
				<div class="col-md-12 text-right mb-3">
					<a href="/admin/foodMenu" class="btn btn-primary">목록</a>
				</div>
				<div class="col-md-12">
						<form name="dataForm" id="dataForm" method="post" action="/admin/foodMenuRegist" enctype="multipart/form-data">
							<div class="form-group">
							    <label for="title">메뉴이름</label>
							    <input type="text" class="form-control" id="title" name="title">
							</div>
							<div class="form-group">
								 <label for="content">메뉴소개</label>
								<textarea class="form-control"  name="content" id="content" rows="3"></textarea>
							</div>
			
							<div class="form-group">
								 <label for="division">메뉴형태</label>
							    <select  class="form-control" id="division" name="division">
							      <option value="none" selected>--선택--</option>
							      <option value="food">일반음식</option>
							      <option value="beverage">Coffee/Dessert</option>
							    </select>
							</div>

							<div class="form-group">
							    <label for="input_file">메뉴이미지</label>
							    <input type="file" class="form-control-file" id="input_file" name="file" >

							</div>

						  <br>
						  <input type="submit" class="btn btn-primary" id="save" value="등록">
						  <input type="button" class="btn btn-secondary" id="list" value="목록">
						</form>
					</div>
				</div>
				<!--  메뉴 등록 끝 -->
				</div>
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

  <!-- plugins:js -->
  <script src="/resources/admin/vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <script src="/resources/admin/vendors/chart.js/Chart.min.js"></script>
  <script src="/resources/admin/vendors/datatables.net/jquery.dataTables.js"></script>
  <script src="/resources/admin/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
  <script src="/resources/admin/js/dataTables.select.min.js"></script>

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
</body>

<script>
	$("#list").click(function(){
		location.href="/admin/foodmenu";
	});
</script>
</html>