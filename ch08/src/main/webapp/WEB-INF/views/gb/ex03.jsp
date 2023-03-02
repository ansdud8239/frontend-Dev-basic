<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/jquery/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>

var render = function(vo,mode){
	var htmls="";
	htmls = "<li data-no='"+vo.no+"'>"+
				"<strong>"+vo.name+"</strong>"+
				"<p>"+vo.message+"</p>"+
				"<strong></strong> "+
				"<a href='' data-no='"+vo.no+"'>삭제</a>"+
			"</li>";

	$("#list-guestbook")[mode?"prepend":"append"](htmls);
	//$lastLi.attr("data-no")
	//$lastLi.data("no")
}
var fetch=function(){
	$.ajax({
		url:"${pageContext.request.contextPath }/guestbook/api/?sno=0",
		type:"get",
		dataType:"json",
		success:function(response){
			console.log(response);
			if(response.result==="fail"){
				console.error(response.message);
				return;
			}
			console.log(response.data);
			response.data.forEach(function(vo){
				render(vo);
			});

		},
	});
}

$(function(){
	//삭제 다이알로그 jQuery 객체 미리 만들기
	var $dialogDelete = $("#dialog-delete-form").dialog({
		autoOpen:false,
		modal: true,
		buttons:{
			"삭제" : function(){
				console.log("삭제하기");
				/*
				$.ajax({
					url:"${pageContext.request.contextPath }/guestbook/api/10",
					type:"delete",
					dataType:"json",
					success:function(response){
						// dNo : 삭제한 메시지의 번호
						// $("li[data-no='dNo']").remove();
						console.log(response);
						if(response.result==="fail"){
							console.error(response.message);
							return;
						}
						console.log(response.data);
						response.data.forEach(function(vo){
							render(vo);
						});

					},
				});
				*/
			},
			"취소": function(){
				console.log("삭제 다이알로그의 폼 데이터 리셋");
				$(this).dialog('close');
			}
		}
	});
	
	//메세지 삭제 버튼 click 이벤트 처리
	// document를 클릭 했을때 #list-guestbook li 이면 해당 메소드 실행
	$(document).on('click',"#list-guestbook li a",function(event){
		event.preventDefault();
		console.log($(this).attr("data-no"));
		$("#hidden-no").val($(this).attr("data-no"));
		$dialogDelete.dialog('open');
	});
	
	fetch();

});
</script>
</head>
<body>
	<div id="guestbook">
		<h1>방명록</h1>
		<form id="add-form" action="" method="post">
			<input type="text" id="input-name" placeholder="이름">
			<input type="password" id="input-password" placeholder="비밀번호">
			<textarea id="tx-content" placeholder="내용을 입력해 주세요."></textarea>
			<input type="submit" value="보내기" />
		</form>
		<ul id="list-guestbook">
		</ul>
	</div>
	<div id="dialog-delete-form" title="메세지 삭제" style="display: none">
		<p class="validateTips normal">작성시 입력했던 비밀번호를 입력하세요.</p>
		<p class="validateTips error" style="display: none">비밀번호가 틀립니다.</p>
		<form>
			<input type="password" id="password-delete" value="" class="text ui-widget-content ui-corner-all">
			<input type="hidden" id="hidden-no" value="">
			<input type="submit" tabindex="-1" style="position: absolute; top: -1000px">
		</form>
	</div>
</body>
</html>