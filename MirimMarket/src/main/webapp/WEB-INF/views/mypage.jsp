<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>미림마켓</title>
		
		<link rel="icon" type="image/png" href="static/img/logo.png"/>
		<link href="static/css/top.css" rel="stylesheet" type="text/css" />
		<link href="static/css/mypageCSS.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript" src="static/js/mypageJS.js"></script>
	</head>
	<body>
		<jsp:include page="menubar.jsp"></jsp:include>

		<c:forEach items="${memberInfo }" var="info">
			<!-- 사용자 정보 -->
			<div class="information">
				<div class="point">포인트:&nbsp;&nbsp;${info.point }p</div>
				<!-- 사용자 사진 -->
				<label for="input_file">
					<img src="${ info.imageUrl}" id="userIMG">
				</label>
				<input type="file" id="input_file" style="display: none;" accept="image/*" onchange="addIMG(event);"/>
				
				<!-- 사용자 이름-->
				<input type="text" spellcheck="false" value="${info.name }" oninput="limitUser(this,4)" />
				<span class="informationFONT1">님</span>
				<hr>
	
				<!-- 사용자 소개글 -->
				<span class="informationFONT2">소개글</span>
				<textarea rows="4" cols="12" spellcheck="false">${info.introduction }</textarea>
			</div>
	
			<!-- 등록글 -->
			<div class="viewRegister">
				<div class="viewRegisterFONT">등록글</div>
				<!-- 
					마이페이지는 이미지 슬라이더에 제한이 없어서 무제한으로 해야해요.
					<div class="slider">가 화면에 보이는거니까 그 안에 하면 될거에요.
					아래에도 있기때문에 slider1, slider2로 구분합니다.
					한번에 3개까지. 계속 추가하면 될듯
				-->
				<div class="productSliderSEC">
					<!-- 슬라이드 화살표 -->
					<img src="static/img/right-arrow.png" class="productNEXT" onclick="plusSlides(1 , 1)"/>
					
					
						<!-- 첫번째 슬라이드 -->
						<div class="slider1 fade">
							<div id="productSEC" onclick="location.href='#'">
								<img src="static/img${info.gdsImg }" id="productIMG">
								<span id="productTITLE">${ info.title}</span>
								<span id="productPRICE" style="text-align: right;">${info.price }원</span>
							</div>
							<div id="productSEC" onclick="location.href='#'">
								<img src="static/img${info.gdsImg }" id="productIMG">
								<span id="productTITLE">${ info.title}</span>
								<span id="productPRICE" style="text-align: right;">${info.price }원</span>
							</div>
							<div id="productSEC" onclick="location.href='#'">
								<img src="static/img${info.gdsImg }" id="productIMG">
								<span id="productTITLE">${ info.title}</span>
								<span id="productPRICE" style="text-align: right;">${info.price }원</span>
							</div>
						</div>
					
				<!-- 두번째 슬라이드 -->
				<!-- <div class="slider1 fade">
					<div id="productSEC" onclick="location.href='#'">
						<img src="static/img/puppy.jpg" id="productIMG">
						<span id="productTITLE">교복 마이</span>
						<span id="productPRICE" style="text-align: right;">20,000원</span>
					</div>
					<div id="productSEC" onclick="location.href='#'">
						<img src="static/img/noimage.PNG" id="productIMG">
						<span id="productTITLE">교복 마이</span>
						<span id="productPRICE" style="text-align: right;">20,000원</span>
					</div>
					<div id="productSEC" onclick="location.href='#'">
						<img src="static/img/noimage.PNG" id="productIMG">
						<span id="productTITLE">교복 마이</span>
						<span id="productPRICE" style="text-align: right;">20,000원</span>
					</div>
				</div> -->
			</div>
		</div>
		</c:forEach>
		<!-- 관심글 -->
		<div class="viewInterest">
			<div class="viewRegisterFONT" style="color: rgba(102,140,74,1);">관심글</div>
			<!-- 
				마이페이지는 이미지 슬라이더에 제한이 없어서 무제한으로 해야해요.
				<div class="slider">가 화면에 보이는거니까 그 안에 하면 될거에요.
				아래에도 있기때문에 slider1, slider2로 구분합니다.
				한번에 3개까지. 계속 추가하면 될듯
			-->
			<div class="productSliderSEC" style="width: 1155px;">
				<!-- 슬라이드 화살표 -->
				<img src="static/img/rightarrow_green.png" class="productNEXT" onclick="plusSlides(1, 2)"/>
				<!-- 첫번째 슬라이드 -->
				<div class="slider2 fade">
					<div id="productSEC" onclick="location.href='#'">
						<img src="static/img/noimage.PNG" id="productIMG">
						<span id="productTITLE">교복 마이</span>
						<span id="productPRICE" style="text-align: right;">20,000원</span>
					</div>
					<div id="productSEC" onclick="location.href='#'">
						<img src="static/img/noimage.PNG" id="productIMG">
						<span id="productTITLE">교복 마이</span>
						<span id="productPRICE" style="text-align: right;">20,000원</span>
					</div>
					<div id="productSEC" onclick="location.href='#'">
						<img src="static/img/noimage.PNG" id="productIMG">
						<span id="productTITLE">교복 마이</span>
						<span id="productPRICE" style="text-align: right;">20,000원</span>
					</div>
					<div id="productSEC" onclick="location.href='#'">
						<img src="static/img/puppy.jpg" id="productIMG">
						<span id="productTITLE">교복 마이</span>
						<span id="productPRICE" style="text-align: right;">20,000원</span>
					</div>
				</div>
				<!-- 두번째 슬라이드 -->
				<div class="slider2 fade">
					<div id="productSEC" onclick="location.href='#'">
						<img src="static/img/puppy.jpg" id="productIMG">
						<span id="productTITLE">교복 마이</span>
						<span id="productPRICE" style="text-align: right;">20,000원</span>
					</div>
					<div id="productSEC" onclick="location.href='#'">
						<img src="static/img/noimage.PNG" id="productIMG">
						<span id="productTITLE">교복 마이</span>
						<span id="productPRICE" style="text-align: right;">20,000원</span>
					</div>
					<div id="productSEC" onclick="location.href='#'">
						<img src="static/img/puppy.jpg" id="productIMG">
						<span id="productTITLE">교복 마이</span>
						<span id="productPRICE" style="text-align: right;">20,000원</span>
					</div>
					<div id="productSEC" onclick="location.href='#'">
						<img src="static/img/noimage.PNG" id="productIMG">
						<span id="productTITLE">교복 마이</span>
						<span id="productPRICE" style="text-align: right;">20,000원</span>
					</div>
				</div>	
			</div>
		</div>
		<div class="blank"></div> <!-- 맨 아래 공간 만들기 -->
	</body>
</html>