<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소개글 수정</title>
<style type="text/css">
	.text{
		border:0; 
		width:300px;
		height:50px;
		font-size:15px;
		border:1px solid;
	}
	.btn{
		width:100px;
		height:30px;
		border:0px;
		margin-top: 7px;
		
	}
	input:focus{
		outline:none;
	}
</style>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>
	<div align="center">
	<form action="intro.jsp">
		<input type="text" placeholder="소개글을 작성해주세요" class="text"><br>
		<input type="submit" value="확인" class="btn">
	</form>	
	</div>
</body>
</html>