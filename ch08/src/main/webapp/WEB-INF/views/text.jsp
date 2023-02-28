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
$(function(){
	$("button").click(function(){
		$("#data").load("${pageContext.request.contextPath }/api/text");
	});
})
</script>
</head>
<body>
	<h1>ajax test : text format data</h1>
	
	<button>데이터 가져오기</button>
	<div id="data"></div>
</body>
</html>