<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>        
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
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
					    <li class="breadcrumb-item active" aria-current="page">자주묻는질문</li>
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
          
  		
			<!--  faq 등록 시작 -->
			<div class="row" id="anch">

				<div class="col-md-12 mt-3">
					<div class="table-responsive-md">
					  <table class="table">
					    <thead>
						    <tr class="text-center">
						      <th scope="col">#</th>
						      <th scope="col">Question</th>
						      <th scope="col">Answer</th>
						      <th scope="col">관리</th>
						    </tr>
						  </thead>
						  <tbody>
						  <form>
							   <c:set var="regdate" value="${faqvo.regdate}"/>
							    <tr class="text-center">
							      <th scope="row">${faqvo.idx }<input type="hidden" name="idx" id="idx" value="${faqvo.idx }" /></th>
							      <td style="vertical-align:top"><textarea  rows="10" id="uquestion" name="question" class="form-control">${faqvo.question }</textarea></td>
							      <td><textarea  rows="30" id="uanswer" name="answer" class="form-control">${faqvo.answer }</textarea></td>
							      <td>
							      <button type="button" id="update" class="btn btn-warning btn-sm">수정</button>
							      <button type="button" id="delete" class="btn btn-danger btn-sm">삭제</button></td>
							    </tr>
						    </form>
						  </tbody>
					  </table>
					</div>
				
				</div>
			</div>
			<!--  faq 등록 끝 -->
			
			
			
		
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
  
  <script src="/resources/admin/js/custom.js"></script>
	
</body>

</html>