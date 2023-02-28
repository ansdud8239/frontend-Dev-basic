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
	$("#create").click(function(){
		var vo={
				name:"이둘리",
				email:"leedooly@gmail.com",
				password:"1234",
				gender:"male"
			};
		$.ajax({
			url:"${pageContext.request.contextPath }/api/user",
			async:true,
			type:"post",
			dataType:"json",
			contentType:"application/json",
			data:JSON.stringify(vo),
			success:function(response){
				console.log(response);
			},
			error:function(xhr,status,error){
				console.error(status,error);
			}
		});
		
	});
	
	$("#read").click(function(){
		$.ajax({
			url:"${pageContext.request.contextPath }/api/user/10",
			async:true,
			type:"get",
			dataType:"json",
			success:function(response){
				console.log(response);
			},
			error:function(xhr,status,error){
				console.error(status,error);
			}
		});
		
	});
	$("#update").click(function(){
		var vo={
				name:"조문영",
				password:"12345",
				gender:"female"
			};
		$.ajax({
			url:"${pageContext.request.contextPath }/api/user/10",
			async:true,
			type:"put",
			dataType:"json",
			contentType:"application/json",
			data:JSON.stringify(vo),
			success:function(response){
				console.log(response);
			},
			error:function(xhr,status,error){
				console.error(status,error);
			}
		});
		
	});
	$("#delete").click(function(){
		$.ajax({
			url:"${pageContext.request.contextPath }/api/user/10",
			async:true,
			type:"delete",
			dataType:"json",
			contentType:"application/x-www-form-urlencoded",
			data:"password=1234",
			success:function(response){
				console.log(response);
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
	<h1>ajax test : Restful API</h1>

	<button id="create">Create(post)</button>
	<button id="read">Read(get)</button>
	<button id="update">Update(put)</button>
	<button id="delete">Delete(delete)</button>
</body>
</html>