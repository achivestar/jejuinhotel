<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>        
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
					    <li class="breadcrumb-item active" aria-current="page">부대시설</li>
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
				<div class="col-md-12 text-right mb-3">
					<a href="/admin/etcWrite" class="btn btn-primary">부대시설 사진등록</a>
				</div>
				<div class="col-md-12">
					<div class="table-responsive-sm">
					  <table class="table">
					    	<thead class="thead-dark text-center">
							  <tr>
							    <th scope="col">#</th>
							    <th scope="col">부대시설명</th>
							    <th scope="col">등록된 사진개수</th>
							    <th scope="col">등록일</th>
							    <th scope="col">관리</th>
							  </tr>
							</thead>
							<tbody class="text-center">
							<c:if test="${empty etcList}">
						        <tr><td colspan="5" class="text-center">등록된 부대시설 사진이 없습니다.</td></tr>
							</c:if>
						    <c:forEach items="${etcList}" var="etcList" varStatus="status">	
							    <tr>
							      <th scope="row">${etcList.idx}</th>
							      <td><a href="/admin/etcModify?idx=${etcList.idx}">${etcList.title }</a></td>
							      <td>${etcList.count } 장 
							      <c:if test="${etcList.count==3}">
							     	 <span class="badge badge-pill badge-success">정상등록</span>
							      </c:if>
							       <c:if test="${etcList.count!=3}">
							     	 <span class="badge badge-pill badge-warning">비정상등록</span>
							      </c:if>
							      </td>
							      <td>${etcList.regdate }</td>
							       <td><a href="/admin/etcModify?idx=${etcList.idx}"><button class="btn btn-primary">관리</button></a></td>
							    </tr>
							</c:forEach>	   
							  </tbody>
					  </table>
					</div>
				</div>
			</div>
			<!--  룸 등록 끝 -->
			
			
			<!-- 페이징 시작 -->
			<div class="col-md-12 mb-4">
                    <nav aria-label="Page navigation">
                      <ul class="pagination justify-content-center mb-0">
                        <c:if test="${pageMaker.prev}">
	                        <li class="page-item">
	                          <a class="page-link" href="/admin/room?page=${pageMaker.startPage-1}#anch" aria-label="Previous">
	                            <span aria-hidden="true">&laquo;</span>
	                            <span class="sr-only">Previous</span>
	                          </a>
	                        </li>
                        </c:if>
                        
                        <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                        	 <li class="page-item <c:out value="${pageMaker.cri.page == idx ? 'active' : ''}" /> ">
                        	  <a class="page-link" href="/admin/room?page=${idx}#anch">${idx }</a></li>
                        </c:forEach>

                        
                        <c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
	                        <li class="page-item">
	                          <a class="page-link" href="/admin/room?page=${pageMaker.endPage+1}#anch" aria-label="Next">
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

</html>