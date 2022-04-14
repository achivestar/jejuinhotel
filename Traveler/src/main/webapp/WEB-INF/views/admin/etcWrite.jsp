<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>          
<html lang="ko">

<head>
  <!-- Required meta tags -->
  <title>JEJU IN HOTEL | ADMIN</title>
  <!-- plugins:css -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="robots" content="noindex">
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
			<div class="row">
				<div class="col-md-12 text-right mb-3">
					<a href="/admin/etc" class="btn btn-primary">목록</a>
				</div>
				<div class="col-md-12">
					<form name="dataForm" id="dataForm"> <!-- onsubmit="return registerAction()" -->
						<div class="form-group">
						    <label for="title">부대시설이름</label>
						    <input type="text" class="form-control" id="title" name="title">
						</div>
						<div class="form-group">
							 <label for="content">부대시설소개 (간단히)</label>
							  <input type="text" class="form-control"  name="content" id="content" >
						</div>
	
		
						<hr>
						<div class="form-group">
						    <label for="input_file">시설이미지</label>
						    <input type="file" class="form-control-file" id="input_file" multiple="multiple">
						    <span style="font-size:10px; color: gray;">※첨부파일은 3개 등록하세요.</span>
						  	<div class="data_file_txt" id="data_file_txt">
								<span>첨부 파일</span>
								<br />
								<div id="articlefileChange"></div>
							</div>
						</div>

					  <br>
					  <input type="button" class="btn btn-primary" id="save" value="등록">
					  <input type="button" class="btn btn-secondary" id="list" value="목록">
					</form>
				</div>
			</div>
			<!--  룸 등록 끝 -->
		
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
	

	<!-- 파일 업로드 스크립트 -->
	$(document).ready(function()
	// input file 파일 첨부시 fileCheck 함수 실행
	{
		$("#input_file").on("change", fileCheck);
	});

	/**
	 * 첨부파일로직
	 */
	$(function () {
	    $('#btn-upload').click(function (e) {
	        e.preventDefault();
	        $('#input_file').click();
	    });
	});

	// 파일 현재 필드 숫자 totalCount랑 비교값
	var fileCount = 0;
	// 해당 숫자를 수정하여 전체 업로드 갯수를 정한다.
	var totalCount = 3;
	// 파일 고유넘버
	var fileNum = 0;
	// 첨부파일 배열
	var content_files = new Array();

	function fileCheck(e) {
	    var files = e.target.files;
	    
	    // 파일 배열 담기
	    var filesArr = Array.prototype.slice.call(files);
	    
	    // 파일 개수 확인 및 제한
	    
	   
	    
	  // if (fileCount + filesArr.length > totalCount) {
	      //alert('파일은 최대 '+totalCount+'개까지 업로드 할 수 있습니다.');
	     // return;
	   // } else { 
	    	 fileCount = fileCount + filesArr.length;
	   // }
	    
	    // 각각의 파일 배열담기 및 기타
	    filesArr.forEach(function (f) {
	      var reader = new FileReader();
	      reader.onload = function (e) {
	        content_files.push(f);
	        $('#articlefileChange').append(
	       		'<div id="file' + fileNum + '" onclick="fileDelete(\'file' + fileNum + '\')">'
	       		+ '<font style="font-size:12px">' + f.name + '</font>'  
	       		+ '<img src="/resources/admin/images/minus.png" style="width:20px; height:auto; vertical-align: middle; cursor: pointer;"/>' 
	       		+ '<div/>'
			);
	        fileNum ++;
	      };
	      reader.readAsDataURL(f);
	    });
	    console.log(content_files);
	    //초기화 한다.
	    $("#input_file").val("");
	  }

	// 파일 부분 삭제 함수
	function fileDelete(fileNum){
	    var no = fileNum.replace(/[^0-9]/g, "");
	    content_files[no].is_delete = true;
		$('#' + fileNum).remove();
		fileCount --;
	    console.log(content_files);
	}

	/*
	 * 폼 submit 로직
	 */
	 
	 $("#save").click(function(){
		
			var form = $("form")[0];        
		 	var formData = new FormData(form);
				for (var x = 0; x < content_files.length; x++) {
					// 삭제 안한것만 담아 준다. 
					if(!content_files[x].is_delete){
						 formData.append("article_file", content_files[x]);
					}
				}
		   /*
		   * 파일업로드 multiple ajax처리
		   */    
		   
		    if($("#title").val()==""){
		    	alert("부대시설명을 입력해 주세요");
		    	$("#title").focus();
		    	return;
		    }else if($("#content").val()==""){
		    	alert("부대시설 소개글을 입력해 주세요");
		    	$("#content").focus();
		    }else if(content_files.length != 3) {
		    	 
		    	   alert("이미지 파일은 3개를 업로드 해주세요");
				   $('#articlefileChange').empty();
				   content_files = [];
				   $("#input_file").val("");
				   $("#input_file").focus();

			}else {
				
		    	 $.ajax({
			   	      type: "POST",
			   	   	  enctype: "multipart/form-data",
			   	      url: "/admin/etcRegist",
			       	  data : formData,
			       	  dataType : 'text',
			       	  processData: false,
			   	      contentType: false,
			   	      success: function (data) {
			   	    	alert("부대시설 사진이 등록 되었습니다.");
			   	    	location.href="/admin/etc";
			   	      },
			   	      beforeSend : function(){
							$(".spinner").removeClass("displayLoding");
					  },complete:function(){
							$(".spinner").addClass("displayLoding");	
					  },
			   	      error:function(data){
			   	    	//  alert(data);
			   	    	location.href="/admin/etc";
			   	      }
			   	    });
		   	 }
			
		 
	 });
	 
		function registerAction(){
			
	
	   	    return false;
		}

</script>
  
 
</body>

</html>