<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>상품 수정</title>

		<link href="static/css/top.css" rel="stylesheet" type="text/css" />
		<link href="static/css/registrationCSS.css" rel="stylesheet" type="text/css" />
		<link href="static/css/modifyCSS.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="static/js/registration.js"></script>
	</head>
	<body>
		<jsp:include page="menubar.jsp"></jsp:include>

		<div id="titleFONT1">
			<span>상품 수정</span>
		</div>

		<form class="regisSECTION">
			<!-- 카테고리 선택 -->
			<div id="regisFONT1">카테고리</div>
			<div id="regisFONT2">*</div>
			<div id="categorySECTION">
				<select class="selectBOX">
					<optgroup label="CLOTHES">
						<option>교복</option>
						<option>체육복</option>
						<option>사복</option>
						<option>액세서리</option>
					</optgroup>
					<optgroup label="BOOKS">
						<option>전공도서</option>
						<option selected>일반도서</option>
						<option>교과서</option>
					</optgroup>
					<optgroup label="OTHERS">
						<option>학용품</option>
						<option>학교굿즈</option>
						<option>주변기기</option>
						<option>기타상품</option>
					</optgroup>
				</select>
				<svg class="selectARROW">
					<path d="M 10.28501415252686 2.858309507369995 C 11.06182098388672 1.563631415367126 12.93817901611328 1.563631415367126 13.71498489379883 2.858309507369995 L 22.1826057434082 16.97100830078125 C 22.9824333190918 18.30405807495117 22.02220726013184 19.99999809265137 20.46761894226074 20 L 3.5323805809021 20 C 1.977791786193848 19.99999809265137 1.017565488815308 18.30405807495117 1.817394971847534 16.97100830078125 Z">
					</path>
				</svg>
			</div>

			<!-- 제목 -->
			<div id="regisFONT1" style="top: 205px;">글 제목</div>
			<div id="regisFONT2" style="top: 215px; left: 200px;">*</div>
			<input type="text" id="regisINPUT" style="width: 610px; text-align: left; padding: 0px;" value="오월의 달리기">

			<!-- 상품 사진-->
			<div id="regisFONT1" style="top: 352px;">상품 사진</div>
			<div id="regisFONT2" style="top: 362px; left: 230px;">*</div>
			<div id="regisIMGsec">
				<label class="input_img_label" for="input_file">
					<img src="static/img/addPhoto.png">
				</label>
				<input type="file" id="input_file" style="display:none"  accept="image/*" onchange="addIMG(event);" multiple/> 
				<div class="inputIMG">
					<!-- 이건 임의로 한거라서 백엔드할때 없어도 됩니다. -->
					<span>
						<button onclick="delIMG()">&times;</button>
						<img src="static/img/fbgraph.png">
					</span>
				</div>
			</div>

			<!-- 가격 입력 -->
			<div id="regisFONT1" style="top: 625px;">가격</div>
			<div id="regisFONT2" style="top: 635px; left: 165px;">*</div>
			<input type="text" id="regisINPUT" style="top: 685px;" value="2000">
			<div id="regisFONT3" style="top: 693px;">원</div>

			<!-- 수량 입력 -->
			<div id="regisFONT1" style="top: 772px;">수량</div>
			<div id="regisFONT2" style="top: 782px; left: 165px;">*</div>
			<input type="text" id="regisINPUT" style="border-color: rgba(102,140,74,1); top: 832px;" value="1">
			<div id="regisFONT3" style="top: 840px;">개</div>
			<div id="regisFONT1" style="font-size: 16px; top: 848px; left: 290px;">
				<span>1~1000 사이의 숫자로 입력해 주세요.</span>
			</div>

			<!-- 상태 선택-->
			<div id="regisFONT1" style="top: 919px;">상태</div>
			<div id="regisFONT2" style="top: 929px; left: 165px;">*</div>
			<div id="stateSECTION" style="border-color: rgba(102,140,74,1);">
				<select class="selectBOX" >
					<option selected>최상</option>
					<option>상</option>
					<option>중</option>
					<option>하</option>
					<option>최하</option>
				</select>
				<svg class="selectARROW" style="fill: rgba(102,140,74,1);">
					<path d="M 10.28501415252686 2.858309507369995 C 11.06182098388672 1.563631415367126 12.93817901611328 1.563631415367126 13.71498489379883 2.858309507369995 L 22.1826057434082 16.97100830078125 C 22.9824333190918 18.30405807495117 22.02220726013184 19.99999809265137 20.46761894226074 20 L 3.5323805809021 20 C 1.977791786193848 19.99999809265137 1.017565488815308 18.30405807495117 1.817394971847534 16.97100830078125 Z">
					</path>
				</svg>
			</div>

			<!-- 상세설명 입력 -->
			<div id="regisFONT1" style="top: 1066px;">상세 설명</div>
			<div id="regisFONT2" style="top: 1076px; left: 228px;">*</div>
			<textarea id="regisTEXTAREA" style="border-color: rgba(102,140,74,1);" rows="4" cols="20">오월의 청춘 원작 소설입니다.
			</textarea>

			<!-- 버튼(등록 & 취소)-->
			<button type="submit" class="buttonMODIFY">수정하기</button>
			<button class="buttonCANCLE">취소하기</button>
		</form>
		<div class="blank"></div> <!-- 맨 아래 공간 만들기 -->
	</body>
</html>