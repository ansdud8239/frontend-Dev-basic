<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/jquery/jquery-3.6.0.js"></script>

<script>
$(function(){
	var vo={
		name:"둘리",
		message:"호이~",
		password:"1234"
	};
	$("button").click(function(){
		$.ajax({
			url:"${pageContext.request.contextPath }/api/post01",
			async:true,
			type:"post",
			dataType:"json",
			contentType:"application/x-www-form-urlencoded",
			data:$.param(vo),
			success:function(response){
				if(response.result==="fail"){
					console.error(response.message);
					return;
				}
				var vo = response.data;
				var htmls = "";
				htmls += ("<h3>"+vo.no+"</h3>");
				htmls += ("<h34>"+vo.name+"</h4>");
				htmls += ("<h5>"+vo.message+"</h5>");
				$("#data").html(htmls);
			},
			error:function(xhr,status,error){
				console.error(status,error);
			}
		});
	});
});
</script>
</head>
<body>
	<h1>ajax test : json format data: $.ajax() 함수 사용하기</h1>

	<button>데이터 보내기(post,delete,put)</button>
	<div id="data"></div>
</body>
</html>