<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri ="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri ="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/jquery/jquery-3.6.0.js"></script>
<script>
// scroll event ch07/ex.37 참고
// api url /guestbook/api?sno=10 : sno보다 작은 no의 row를 정렬한 후 top-k(limit(0,k)) 구현할 것
// 	
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
//	$(window).scroll(function(){
//	})

// 최초 리스트 가져오기
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
</body>
</html>