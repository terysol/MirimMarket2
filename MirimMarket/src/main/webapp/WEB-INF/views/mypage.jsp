<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>마이페이지</title>

		<link href="static/css/top.css" rel="stylesheet" type="text/css" />
		<link href="static/css/mypageCSS.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript" src="static/js/mypageJS.js"></script>
	</head>
	<body>
		<!-- 상단바 -->
		<div id="topMENU1">
			<div id="topLOGO">
				<img src="static/img/logo_g.png" srcset="static/img/logo_g.png 1x, static/img/logo_g@2x.png 2x">
			</div>
			<ul>
				<li><a href="#">HOME</a></li>
				<li><a href="#">CLOTHES</a></li>
				<li><a href="#">BOOKS</a></li>
				<li><a href="#">OTHERS</a></li>
				<li><a href="#">WANT</a></li>
			</ul>
			<svg class="topMY" viewBox="61.076 32.612 30 32">
				<path id="topMY" d="M 83.69393920898438 47.11613464355469 C 84.70953369140625 45.61999893188477 85.30586242675781 43.79904937744141 85.30586242675781 41.83426666259766 C 85.30586242675781 36.74092864990234 81.30147552490234 32.61199951171875 76.36181640625 32.61199951171875 C 71.42215728759766 32.61199951171875 67.41777801513672 36.74092864990234 67.41777801513672 41.83426666259766 C 67.41777801513672 43.70920181274414 67.96092224121094 45.4531135559082 68.89311981201172 46.9088134765625 C 64.23535919189453 49.04409408569336 61.07599639892578 54.56227111816406 61.07599639892578 59.32867050170898 C 61.07599639892578 66.27806854248047 91.07599639892578 66.41953277587891 91.07599639892578 59.47016906738281 C 91.07599639892578 54.85367965698242 88.11231231689453 49.30550384521484 83.69393920898438 47.11613464355469 Z">
				</path>
			</svg>
			<div id="topADD">
				<svg class="topADD_">
					<rect id="topADDattri" style="stroke: rgba(26,24,24,1); stroke-linecap: butt;"rx="6" ry="6" x="0" y="0" width="32" height="32">
					</rect>
				</svg>
				<svg class="topADD__" viewBox="0 0 2 15">
					<path id="topADDattri"d="M 0 0 L 0 15">
					</path>
				</svg>
				<svg class="topADD___" viewBox="0 0 2 15">
					<path id="topADDattri" d="M 0 0 L 0 15">
					</path>
				</svg>
			</div>
			<svg class="topCHAT" viewBox="2.835 0 32 32">
				<path id="topCHAT" d="M 3.73769998550415 30.53096389770508 L 5.74560022354126 23.63983154296875 C 5.769867420196533 23.55661582946777 5.802201271057129 23.47894477844238 5.841295719146729 23.40716934204102 C 3.949563980102539 20.97958946228027 2.835000038146973 18.00008583068848 2.835000038146973 14.7806282043457 C 2.835000038146973 6.617892265319824 9.998100280761719 0 18.83430099487305 0 C 27.67140007019043 0 34.83449935913086 6.617892265319824 34.83449935913086 14.7806282043457 C 34.83449935913086 22.94336318969727 27.67140007019043 29.56125640869141 18.83430099487305 29.56125640869141 C 16.03469657897949 29.56125640869141 13.40354633331299 28.89715194702148 11.11445426940918 27.7298469543457 L 5.422500133514404 31.79301452636719 C 5.221633911132813 31.93643379211426 5.005940437316895 31.9999942779541 4.797270774841309 31.99999809265137 C 4.114921092987061 32.0000114440918 3.507498264312744 31.32039642333984 3.73769998550415 30.53096389770508 Z">
				</path>
			</svg>
			<div class="topMENU2">
				<div id="topMENU2photo">
					<svg class="topMENU2photo_">
						<rect id="topMENU2photo_" rx="10" ry="10" x="0" y="0" width="418" height="300">
						</rect>
					</svg>
					<img id="topMENU2photo__" src="static/img/_-2.png" srcset="static/img/_-2.png 1x, static/img/_-2@2x.png 2x">
					<img id="topMENU2photo__" style="left: 147px; top: 177px;"src="static/img/T_4.png" srcset="static/img/T_4.png 1x, static/img/T_4@2x.png 2x">
						
					<div id="topMENU2photo__" style="left: 191px; top: 50px;">
						<div id="topMENU2photoFONT1">
							<span>사진부 선생님 굿즈</span>
						</div>
						<div id="topMENU2photoFONT2">
							<span>한정입고!</span>
						</div>
						<div id="topMENU2photoFONT3">
							<span>#귀엽다</span>
						</div>
						<div id="topMENU2photoFONT3" style="left: 89px; top: 82px;">
							<span>#새로운_모습</span>
						</div>                        
					</div>
				</div>
				<ul id="clothes" style="margin-left: 700px;">
					<li><a href="#">교복</a></li>
					<li>체육복</li>
					<li>사복</li>
					<li>액세서리</li>
				</ul>
				<ul id="books" style="margin-left: 10px;">
					<li>전공도서</li>
					<li>일반도서</li>
					<li>교과서</li>
				</ul>
				<ul id="others" style="margin-left: 5px;">
					<li>학용품</li>
					<li>학교굿즈</li>
					<li>주변기기</li>
					<li>기타 상품</li>
				</ul>
				<ul id="user" style="width: 190px; margin-left: 448px;">
					<li>마이페이지</li>
					<li>상품 등록</li>
					<li>채팅</li>
					<li>1:1 문의</li>
				</ul>
			</div>
		</div>

		<!-- 사용자 정보 -->
		<div class="information">
			<div class="point">포인트:&nbsp;&nbsp;${memberInfo.point }p</div>
			<!-- 사용자 사진 -->
			<label for="input_file">
				<img src="${ memberInfo.imageUrl}" id="userIMG">
			</label>
			<input type="file" id="input_file" style="display: none;" accept="image/*" onchange="addIMG(event);"/>
			
			<!-- 사용자 이름-->
			<input type="text" spellcheck="false" value="${memberInfo.name }" />
			<span class="informationFONT1">님</span>
			<hr>

			<!-- 사용자 소개글 -->
			<span class="informationFONT2">소개글</span>
			<textarea rows="4" cols="12" spellcheck="false">${memberInfo.introduction }</textarea>
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
				</div>
				<!-- 두번째 슬라이드 -->
				<div class="slider1 fade">
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
				</div>
			</div>
		</div>

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