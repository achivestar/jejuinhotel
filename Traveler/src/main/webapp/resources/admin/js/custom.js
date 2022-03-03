$("#add").click(function(){
  	var question = $("#question").val();
  	var answer = $("#answer").val();
  	
  	$.ajax({
		type : 'post',
		url : '/admin/faqRegist',
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : "POST"
		},
		dataType : 'text',
		data: JSON.stringify({
			question : question,
			answer : answer
		}),
		success : function(result) {
			if(result=='success'){
				alert('질문/답변이 등록되었습니다.');
				location.href="/admin/faq";
			}
		}
	});
});


$("#update").click(function(){
	var idx = $("#idx").val();
	var question = $("#uquestion").val();
	var answer = $("#uanswer").val();

	$.ajax({
		type : 'put',
		url : '/admin/faqUpdate/'+idx,
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : "put"
		},
		data : JSON.stringify({
			question : question,
			answer : answer
		}),
		dataType : 'text',
		success : function(result) {
			if(result=='success'){
				alert("수정되었습니다.");
				location.href="/admin/faq";
			}
		}
	});
});



$("#delete").click(function(){
	
	var ans = window.confirm("정말 삭제하시겠습니까?");
	
	if(ans){
		var idx = $("#idx").val();
	
		$.ajax({
			type : 'delete',
			url : '/admin/faqDelete/'+idx,
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "DELETE"
			},
			dataType : 'text',
			success : function(result) {
				if(result=='success') {
					alert("삭제되었습니다");
					location.href="/admin/faq";
				}
			}
		})
	}else{
		return;
	}
	
});