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
		<!-- 상단바 -->
			<div id="topMENU1">
				<!-- 고정되어 있는 상단바-->
				<div id="topLOGO">
					<a href="index"><img src="static/img/logo_g.png" srcset="static/img/logo_g.png 1x, static/img/logo_g@2x.png 2x"></a>
				</div>
				<!-- 이거 링크 꼭!!!!!! 걸어주세요-->
				<ul>
					<li><a href="index">HOME</a></li>
					<li><a href="category">CLOTHES</a></li>
					<li><a href="category">BOOKS</a></li>
					<li><a href="category">OTHERS</a></li>
					<li><a href="category">WANT</a></li>
				</ul>
				<!-- 사진 찾는데 한계가 있어, html으로 그린걸로 사용했습니다.
					 원하는 아이콘 주시면 그걸로 바꿔서 다시 드리도록 하겠습니다.
				-->
				<a href="#"><svg class="topMY" viewBox="61.076 32.612 30 32">
					<path id="topMY" d="M 83.69393920898438 47.11613464355469 C 84.70953369140625 45.61999893188477 85.30586242675781 43.79904937744141 85.30586242675781 41.83426666259766 C 85.30586242675781 36.74092864990234 81.30147552490234 32.61199951171875 76.36181640625 32.61199951171875 C 71.42215728759766 32.61199951171875 67.41777801513672 36.74092864990234 67.41777801513672 41.83426666259766 C 67.41777801513672 43.70920181274414 67.96092224121094 45.4531135559082 68.89311981201172 46.9088134765625 C 64.23535919189453 49.04409408569336 61.07599639892578 54.56227111816406 61.07599639892578 59.32867050170898 C 61.07599639892578 66.27806854248047 91.07599639892578 66.41953277587891 91.07599639892578 59.47016906738281 C 91.07599639892578 54.85367965698242 88.11231231689453 49.30550384521484 83.69393920898438 47.11613464355469 Z">
					</path>
				</svg></a>
				<div id="topADD"><a href="registration">
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
					</a>
				</div>
				<a href="#"><svg class="topCHAT" viewBox="2.835 0 32 32">
					<path id="topCHAT" d="M 3.73769998550415 30.53096389770508 L 5.74560022354126 23.63983154296875 C 5.769867420196533 23.55661582946777 5.802201271057129 23.47894477844238 5.841295719146729 23.40716934204102 C 3.949563980102539 20.97958946228027 2.835000038146973 18.00008583068848 2.835000038146973 14.7806282043457 C 2.835000038146973 6.617892265319824 9.998100280761719 0 18.83430099487305 0 C 27.67140007019043 0 34.83449935913086 6.617892265319824 34.83449935913086 14.7806282043457 C 34.83449935913086 22.94336318969727 27.67140007019043 29.56125640869141 18.83430099487305 29.56125640869141 C 16.03469657897949 29.56125640869141 13.40354633331299 28.89715194702148 11.11445426940918 27.7298469543457 L 5.422500133514404 31.79301452636719 C 5.221633911132813 31.93643379211426 5.005940437316895 31.9999942779541 4.797270774841309 31.99999809265137 C 4.114921092987061 32.0000114440918 3.507498264312744 31.32039642333984 3.73769998550415 30.53096389770508 Z">
					</path>
				</svg></a>
				
				<!-- 펼쳤을 때 보이는 상단바의 하단-->
				<div class="topMENU2">
					<!-- 사진부 굿즈 -->
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
						<li><a href="category">교복</a></li>
						<li><a href="category">체육복</a></li>
						<li><a href="category">사복</a></li>
						<li><a href="category">액세서리</a></li>
					</ul>
					<ul id="books" style="margin-left: 10px;">
						<li><a href="category">전공도서</a></li>
						<li><a href="category">일반도서</a></li>
						<li><a href="category">교과서</a></li>
					</ul>
					<ul id="others" style="margin-left: 5px;">
						<li><a href="category">학용품</a></li>
						<li><a href="category">학교굿즈</a></li>
						<li><a href="category">주변기기</a></li>
						<li><a href="category">기타 상품</a></li>
					</ul>
					<ul id="user" style="width: 190px; margin-left: 448px;">
						<li><a href="#">마이페이지</a></li>
						<li><a href="registration">상품 등록</a></li>
						<li><a href="#">채팅</a></li>
						<li><a href="https://mail.google.com/mail/?view=cm&amp;fs=1&amp;to=s2019s30@e-mirim.hs.kr" target="_blank">1:1 문의</a></li>
					</ul>
				</div>
			</div>

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