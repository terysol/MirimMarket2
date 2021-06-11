<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 수정</title>
<style type="text/css">
	table{
		width:50%;
		border-top:1px solid #444444;
		border-collapse:collapse;
	}
	input:focus{
		outline:none;
	}
	caption{
		text-align:left;
	}
	th{
		border-bottom:1px solid #444444;
		border-right:1px solid #444444;
		padding:10px;
	}
	td{
		border-bottom:1px solid #444444;
		padding:10px;
	}
	.text{
		height:20px;
	}
	.phone{
		width:40px;
		height:20px;
	}
</style>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<form action="member.jsp" method="post">
	<div align="center">
	<br>
		<table>
			<caption style="margin:5px"><b>정보 수정</b></caption>
			<tr>
				<th>아이디 </th>
				<td><input name="id" type="text" placeholder="아이디 입력" class="text" ><font size="1px"> (가급적 학교 이메일로 해주세요.)</font></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input name="password" type="password" placeholder="비밀번호 입력" class="text" ><font size="1px"> (영문대소문자/숫자 4자~16자)</font></td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td><input name="password" type="password" placeholder="비밀번호 입력" class="text" ></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input name="name" type="text" class="text" ></td>
			</tr>
			<tr>
				<th>학과</th>
				<td>
					<select name="major" class="text">
						<option value=""></option>
						<option value="뉴미디어 소프트웨어과">뉴미디어 소프트웨어과</option>
						<option value="뉴미디어 웹솔루션과">뉴미디어 웹솔루션과</option>
						<option value="뉴미디어 디자인과">뉴미디어 디자인과</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>나이</th>
				<td><input name="age" type="text" style="border:0; border-bottom:1px solid; width:20px" >살</td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input name="phone" type="text" class="phone" > - 
				<input name="phone" type="text" class="phone" > - 
				<input name="phone" type="text" class="phone" >
				</td>
			</tr>
		</table>
		<br>
		<input type="submit" name="signup" value="확인" style="border:0px; width:320px; height:40px">
	</div>
	</form>
</body>
</html>