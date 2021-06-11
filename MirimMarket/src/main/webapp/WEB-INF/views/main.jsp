<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<% request.setCharacterEncoding("utf-8"); %>

<html>
	<head>
		<meta charset="utf-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>메인</title>

		<script type="text/javascript" src="static/js/product.js"></script>
		
		<link rel="stylesheet" href="static/css/top.css" type="text/css" />
		<link rel="stylesheet" href="static/css/slider.css" type="text/css" />
		<link rel="stylesheet" href="static/css/selectbox.css" type="text/css" />
		<link rel="stylesheet" href="static/css/product.css" type="text/css" />
		<link rel="stylesheet" href="static/css/bottom.css" type="text/css" />
		<style id="applicationStylesheet" type="text/css">
			/*
			.mediaViewInfo {
				--web-view-name: 메인;
				--web-view-id: ;
				--web-scale-on-resize: true;
				--web-enable-deep-linking: true;
			}
			:root {
				--web-view-ids: ;
			}*/
			/*
			# {
				position: absolute;
				width: 1920px;
				height: 4723px;
				background-color: rgba(255,255,255,1);
				overflow: hidden;
				--web-view-name: 메인;
				--web-view-id: ;
				--web-scale-on-resize: true;
				--web-enable-deep-linking: true;
			}
			@keyframes fadein {
			
				0% {
					opacity: 0;
				}
				100% {
					opacity: 1;
				}
			
			}*/
			* {
				margin: 0;
				padding: 0;
				box-sizing: border-box;
			}
			@font-face {
				font-family: 'TmoneyRoundWind';
				src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/TmoneyRoundWindRegular.woff') format('woff');
				font-weight: normal;
				font-style: normal;
			}

			#banner {
				position: absolute;
				left: 0px;
				top: 120px;
				z-index: -1;
			}

			#titleFONT {
				left: 363px;
				top: 1627px;
				position: absolute;
				overflow: visible;
				width: 219px;
				white-space: nowrap;
				text-align: left;
				font-family: 'TmoneyRoundWind';
				font-style: normal;
				font-weight: normal;
				font-size: 30px;
				color: rgba(69,69,69,1);
			}

			#middle {
				position: absolute;
				left: 0px;
				top: 1378px;
				overflow: visible;
			}
			#middle_ { fill: rgba(242,197,61,1); }
			.middle_ {
				overflow: visible;
				position: absolute;
				width: 1920px;
				height: 150px;
				transform: matrix(1,0,0,1,0,0);
			}
			#middleCHATpos {
				position: absolute;
				width: 1179.947px;
				height: 106.346px;
				left: 377.053px;
				top: 24px;
				overflow: visible;
			}
			#middleCHAT {
				position: absolute;
				overflow: visible;
			}
			.middleCHAT_ {
				overflow: visible;
				position: absolute;
				width: 630px;
				height: 55px;
			}
			#middleCHAT__ { fill: rgba(255,255,255,1); }
			#middleCHATtext {
				left: 7.947px;
				top: 12px;
				position: absolute;
				overflow: visible;
				width: 605px;
				white-space: nowrap;
				line-height: 30px;
				margin-top: -2px;
				text-align: right;
				font-family: 'TmoneyRoundWind';
				font-style: normal;
				font-weight: normal;
				font-size: 26px;
				color: rgba(69,69,69,1);
			}
			#middleTIME {
				position: absolute;
				overflow: visible;
				width: 50px;
				white-space: nowrap;
				line-height: 30px;
				margin-top: -9px;
				text-align: right;
				font-family: 'TmoneyRoundWind';
				font-style: normal;
				font-weight: normal;
				font-size: 12px;
				color: rgba(69,69,69,1);
			}

			#newsletter{ cursor: pointer; }
			.newsletterPHOTO1 {
				filter: drop-shadow(0px 3px 6px rgba(0, 0, 0, 0.161));
				position: absolute;
				overflow: visible;
				width: 582px; 
				height: 400px;  
				border-radius: 20px;
				left: 363px;
				top: 1688px;
			}
			#newsletterPHOTO2 { fill: rgba(255,255,255,1); }
			.newsletterPHOTO2 {
				position: absolute;
				overflow: visible;
				width: 582px;
				height: 118px;
				left: 363px;
				top: 1970px;
			}
			#newsletterTITLE {
				left: 393px;
				top: 1995px;
				position: absolute;
				overflow: visible;
				width: 329px;
				white-space: nowrap;
				line-height: 34px;
				margin-top: -5px;
				text-align: left;
				font-family: 'TmoneyRoundWind';
				font-style: normal;
				font-weight: normal;
				font-size: 24px;
				color: rgba(242,197,61,1);
			}
			#newsletterLOGO {
				position: absolute;
				left: 838px;
				top: 1935.181px;
				overflow: visible;
			}
			
			#viewmoreFONT {
				left: 1489px;
				top: 2110px;
				position: absolute;
				overflow: visible;
				width: 72px;
				white-space: nowrap;
				line-height: 30px;
				margin-top: -6px;
				text-align: left;
				font-family: 'TmoneyRoundWind';
				font-style: normal;
				font-weight: normal;
				font-size: 18px;
				color: rgba(69,69,69,1);
				cursor: pointer;
			}	
			
			#allproduct {
				position: absolute;
				top: 2290px;
				left: 348px;
				width: 1230px;
				height: 1730px;
			}
			#allproductROW{
				position: absolute;
				width: 1230px;
				height: 400px;
				overflow: hidden;
			}

			.bottom {
				position: absolute;
				overflow: visible;
				width: 1920px;
				height: 470px;
				left: 0px;
				top: 4223px;
			}
		</style>

	</head>
	<body>
		<div id="">
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

			<img id="banner" src="static/img/__1__1.png" srcset="static/img/__1__1.png 1x, static/img/__1__1@2x.png 2x">

			<div id="titleFONT" style="top: 817px; width: 348px;">
				<span>#조회수_탑 #이건_사야해!</span>
			</div>
			<div class="slidebox">
				<input type="radio" name="slide" id="slide01" checked>
				<input type="radio" name="slide" id="slide02">
				<input type="radio" name="slide" id="slide03">
				<input type="radio" name="slide" id="slide04">
				<ul class="slidelist">
					<li class="slideitem">
						<a>
							<div id="product" onclick="">
								<div id="productIMGpos">
									<img id="productIMG" src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
								</div>
								<div id="productName">
									<span>교복 마이</span>
								</div>
								<div id="productPrice">
									<span>20,000</span><span style="font-size:14px;">원</span>
								</div>
								<div id="productCategory">
									<span>옷>교복</span>
								</div>
								<div id="productState">
									<span>상태: 상</span>
								</div>
								<script> state()</script>
							</div>
						</a>
						<a style>
							<div id="product">
								<div id="productIMGpos">
									<img id="productIMG" src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
								</div>
								<div id="productName">
									<span>교복 마이</span>
								</div>
								<div id="productPrice">
									<span>20,000</span><span style="font-size:14px;">원</span>
								</div>
								<div id="productCategory">
									<span>옷>교복</span>
								</div>
								<div id="productState">
									<span>상태: 상</span>
								</div>
								<script> state()</script>
							</div>
						</a>
						<a>
							<div id="product">
								<div id="productIMGpos">
									<img id="productIMG" src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
								</div>
								<div id="productName">
									<span>교복 마이</span>
								</div>
								<div id="productPrice">
									<span>20,000</span><span style="font-size:14px;">원</span>
								</div>
								<div id="productCategory">
									<span>옷>교복</span>
								</div>
								<div id="productState">
									<span>상태: 상</span>
								</div>
								<script> state()</script>
							</div>
						</a>
					</li>
					<li class="slideitem">
						<a>
							<div id="product" onclick="">
								<div id="productIMGpos">
									<img id="productIMG" src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
								</div>
								<div id="productName">
									<span>교복 마이</span>
								</div>
								<div id="productPrice">
									<span>20,000</span><span style="font-size:14px;">원</span>
								</div>
								<div id="productCategory">
									<span>옷>교복</span>
								</div>
								<div id="productState">
									<span>상태: 상</span>
								</div>
								<script> state()</script>
							</div>
						</a>
						<a style>
							<div id="product">
								<div id="productIMGpos">
									<img id="productIMG" src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
								</div>
								<div id="productName">
									<span>교복 마이</span>
								</div>
								<div id="productPrice">
									<span>20,000</span><span style="font-size:14px;">원</span>
								</div>
								<div id="productCategory">
									<span>옷>교복</span>
								</div>
								<div id="productState">
									<span>상태: 상</span>
								</div>
								<script> state()</script>
							</div>
						</a>
						<a>
							<div id="product">
								<div id="productIMGpos">
									<img id="productIMG" src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
								</div>
								<div id="productName">
									<span>교복 마이</span>
								</div>
								<div id="productPrice">
									<span>20,000</span><span style="font-size:14px;">원</span>
								</div>
								<div id="productCategory">
									<span>옷>교복</span>
								</div>
								<div id="productState">
									<span>상태: 상</span>
								</div>
								<script> state()</script>
							</div>
						</a>
					</li>
					<li class="slideitem">
						<a>
							<div id="product" onclick="">
								<div id="productIMGpos">
									<img id="productIMG" src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
								</div>
								<div id="productName">
									<span>교복 마이</span>
								</div>
								<div id="productPrice">
									<span>20,000</span><span style="font-size:14px;">원</span>
								</div>
								<div id="productCategory">
									<span>옷>교복</span>
								</div>
								<div id="productState">
									<span>상태: 상</span>
								</div>
								<script> state()</script>
							</div>
						</a>
						<a style>
							<div id="product">
								<div id="productIMGpos">
									<img id="productIMG" src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
								</div>
								<div id="productName">
									<span>교복 마이</span>
								</div>
								<div id="productPrice">
									<span>20,000</span><span style="font-size:14px;">원</span>
								</div>
								<div id="productCategory">
									<span>옷>교복</span>
								</div>
								<div id="productState">
									<span>상태: 상</span>
								</div>
								<script> state()</script>
							</div>
						</a>
						<a>
							<div id="product">
								<div id="productIMGpos">
									<img id="productIMG" src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
								</div>
								<div id="productName">
									<span>교복 마이</span>
								</div>
								<div id="productPrice">
									<span>20,000</span><span style="font-size:14px;">원</span>
								</div>
								<div id="productCategory">
									<span>옷>교복</span>
								</div>
								<div id="productState">
									<span>상태: 상</span>
								</div>
								<script> state()</script>
							</div>
						</a>
					</li>
					<li class="slideitem">
						<a>
							<div id="product" onclick="">
								<div id="productIMGpos">
									<img id="productIMG" src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
								</div>
								<div id="productName">
									<span>교복 마이</span>
								</div>
								<div id="productPrice">
									<span>20,000</span><span style="font-size:14px;">원</span>
								</div>
								<div id="productCategory">
									<span>옷>교복</span>
								</div>
								<div id="productState">
									<span>상태: 상</span>
								</div>
								<script> state()</script>
							</div>
						</a>
						<a style>
							<div id="product">
								<div id="productIMGpos">
									<img id="productIMG" src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
								</div>
								<div id="productName">
									<span>교복 마이</span>
								</div>
								<div id="productPrice">
									<span>20,000</span><span style="font-size:14px;">원</span>
								</div>
								<div id="productCategory">
									<span>옷>교복</span>
								</div>
								<div id="productState">
									<span>상태: 상</span>
								</div>
								<script> state()</script>
							</div>
						</a>
						<a>
							<div id="product">
								<div id="productIMGpos">
									<img id="productIMG" src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
								</div>
								<div id="productName">
									<span>교복 마이</span>
								</div>
								<div id="productPrice">
									<span>20,000</span><span style="font-size:14px;">원</span>
								</div>
								<div id="productCategory">
									<span>옷>교복</span>
								</div>
								<div id="productState">
									<span>상태: 상</span>
								</div>
								<script> state()</script>
							</div>
						</a>
					</li>
				</ul>
				
				</svg>
				<div class="slide-control">
					<div class="control01">
						<label for="slide03" class="prev"></label>
						<label for="slide02" class="next"></label>
					</div>
					<div class="control02">
						<label for="slide01" class="prev"></label>
						<label for="slide03" class="next"></label>
					</div>
					<div class="control03">
						<label for="slide02" class="prev"></label>
						<label for="slide01" class="next"></label>
					</div>
				</div>
			</div>

			<div id="middle">
				<svg class="middle_" viewBox="0 0 1920 150">
					<path id="middle_" d="M 0 0 L 1920 0 L 1920 150 L 0 150 L 0 0 Z">
					</path>
				</svg>
				<div id="middleCHATpos">
					<div id="middleCHAT" style="opacity: 0.8;">
						<svg class="middleCHAT_" style="transform: matrix(1,0,0,1,0,0);"viewBox="6.922 0 631.893 55.346">
							<path id="middleCHAT__" d="M 21.94919967651367 55.34640121459961 C 19.46600723266602 55.34640121459961 17.19404411315918 54.44124984741211 15.44566917419434 52.94325637817383 L 9.324000358581543 54.17550277709961 C 7.411499977111816 54.56069946289063 6.136199951171875 52.2593994140625 7.476300239562988 50.84099960327148 L 11.96460056304932 46.09170150756836 C 11.96834182739258 46.08773803710938 11.97205829620361 46.08388900756836 11.97582244873047 46.0799674987793 C 11.95825672149658 45.83768081665039 11.94930076599121 45.59326934814453 11.94930076599121 45.34650039672852 L 11.94930076599121 9.999899864196777 C 11.94930076599121 4.477499961853027 16.42589950561523 0 21.94919967651367 0 L 628.814697265625 0 C 634.3380126953125 0 638.8146362304688 4.477499961853027 638.8146362304688 9.999899864196777 L 638.8146362304688 45.34650039672852 C 638.8146362304688 50.86980056762695 634.3380126953125 55.34640121459961 628.814697265625 55.34640121459961 L 21.94919967651367 55.34640121459961 Z">
							</path>
						</svg>
						<div id="middleCHATtext">
							<span>코로나 때문에 중고거래 나가는 것도 무서워요staticstaticㅠㅠ</span>
						</div>
						<div id="middleTIME" style="left: 635px; top: 40px;">
							<span>오후 6:10</span>
						</div>
					</div>
					<div id="middleCHAT" style="left: 763.054px; top: 51px;">
						<svg class="middleCHAT_" style="width: 416px; transform: translate(-235.001px, 0px) matrix(1,0,0,1,235.0007,0) rotate(180deg);"viewBox="0 0 416.893 55.346">
							<path id="middleCHAT__" d="M 15.02730083465576 55.34640121459961 C 9.504000663757324 55.34640121459961 5.026500225067139 50.86890029907227 5.026500225067139 45.34650039672852 L 5.026500225067139 9.999899864196777 C 5.026500225067139 9.75279426574707 5.035475254058838 9.508170127868652 5.053092002868652 9.265561103820801 C 5.049614906311035 9.261932373046875 5.046158313751221 9.258362770080566 5.042700290679932 9.254700660705566 L 0.5544000267982483 4.50540018081665 C -0.7857000231742859 3.087000131607056 0.4896000027656555 0.7857000231742859 2.402100086212158 1.170899987220764 L 8.523442268371582 2.403079271316528 C 10.27201843261719 0.9050846099853516 12.54410743713379 0 15.02730083465576 0 L 406.8927001953125 0 C 412.416015625 0 416.8926086425781 4.476600170135498 416.8926086425781 9.999899864196777 L 416.8926086425781 45.34650039672852 C 416.8926086425781 50.86890029907227 412.416015625 55.34640121459961 406.8927001953125 55.34640121459961 L 15.02730083465576 55.34640121459961 Z">
							</path>
						</svg>
						<div id="middleCHATtext" style="left: -208px;">
							<span>그럴 땐 </span><span style="color:rgba(102,140,74,1);">교내 중고거래</span><span>로 해결해봐!</span>
						</div>
						<div id="middleTIME" style="left: -58px; top: 42px;">
							<span>오후 6:12</span>
						</div>
					</div>
				</div>
			</div>

			<div id="titleFONT">
				<span>미림마켓 소식지</span>
			</div>
			<div id="newsletter" onclick="location.href='https://github.com/alsals126/mirimmarket_FRONT'">
				<img src="static/img/puppy.jpg" class="newsletterPHOTO1">
				<svg class="newsletterPHOTO2">
					<rect id="newsletterPHOTO2" rx="0" ry="0" x="0" y="0" width="582" height="118"></rect>
				</svg>
				<img id="newsletterLOGO" src="static/img/logo.png" srcset="static/img/logo.png 1x, static/img/logo@2x.png 2x">
				<div id="newsletterTITLE">
					<span>미림마켓 개발자</span><span style="color:rgba(0,0,0,1);">가 들려주는<br/>개발 비하인드 스토리 #1</span>
				</div>
			</div>
			<div id="newsletter" onclick="location.href='https://pbs.twimg.com/media/D8b6XiaUIAAY1zG.jpg'">
				<img src="static/img/puppy.jpg" class="newsletterPHOTO1" style="left: 975px; top: 1688px;">
				<svg class="newsletterPHOTO2" style="left: 975px;">
					<rect id="newsletterPHOTO2" rx="0" ry="0" x="0" y="0" width="582" height="118"></rect>
				</svg>
				<img id="newsletterLOGO" src="static/img/fbgraph.png" srcset="static/img/fbgraph.png 1x, static/img/fbgraph@2x.png 2x" style="left: 1428px; top: 1924px;">
				<div id="newsletterTITLE" style="left: 1005px; top: 1995px; color: rgba(102,140,74,1);">
					<span>"철이 없었죠staticstatic 그땐."</span><br><span style="color:rgba(0,0,0,1);">미림인 B양의 첫 교내봉사 후기</span>
				</div>
			</div>
			<div id="viewmoreFONT" onclick="location.href='#'">
				<span>더보기 ></span>
			</div>
				
			<div id="titleFONT" style="top: 2229px; width: 129px;">
				<span>전체 상품</span>
			</div>
			<select class="selectbox">
				<option selected>최신순</option>
				<option>인기순</option>
				<option>저가순</option>
				<option>고가순</option>
			</select>
			<svg class="selectboxARROW"viewBox="0 0 17 13">
				<path id="selectboxARROW" d="M 7.663029670715332 1.280071258544922 C 8.057735443115234 0.6764036417007446 8.942263603210449 0.6764036417007446 9.336969375610352 1.280071139335632 L 15.98833656311035 11.45275020599365 C 16.4232120513916 12.11785411834717 15.94602394104004 13 15.1513671875 13 L 1.848632454872131 13 C 1.053975701332092 13.00000095367432 0.576787531375885 12.11785411834717 1.011662840843201 11.45275115966797 Z">
				</path>
			</svg>
			<div id="allproduct">
				<div id="allproductROW">
					<div id="product" style="z-index: 1;">
						<div id="productIMGpos">
							<img id="productIMG" src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
						</div>
						<div id="productName">
							<span>교복 마이</span>
						</div>
						<div id="productPrice">
							<span>20,000</span><span style="font-size:14px;">원</span>
						</div>
						<div id="productCategory">
							<span>옷>교복</span>
						</div>
						<div id="productState">
							<span>상태: 상</span>
						</div>
						<script> state()</script>
					</div>
					<div id="product" style="z-index: 1;">
						<div id="productIMGpos">
							<img id="productIMG" src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
						</div>
						<div id="productName">
							<span>교복 마이</span>
						</div>
						<div id="productPrice">
							<span>20,000</span><span style="font-size:14px;">원</span>
						</div>
						<div id="productCategory">
							<span>옷>교복</span>
						</div>
						<div id="productState">
							<span>상태: 상</span>
						</div>
						<script> state()</script>
					</div>
					<div id="product" style="z-index: 1;">
						<div id="productIMGpos">
							<img id="productIMG" src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
						</div>
						<div id="productName">
							<span>교복 마이</span>
						</div>
						<div id="productPrice">
							<span>20,000</span><span style="font-size:14px;">원</span>
						</div>
						<div id="productCategory">
							<span>옷>교복</span>
						</div>
						<div id="productState">
							<span>상태: 상</span>
						</div>
						<script> state()</script>
					</div>
				</div>
				<div id="allproductROW" style="top: 445px;">
					<div id="product" style="z-index: 1;">
						<div id="productIMGpos">
							<img id="productIMG" src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
						</div>
						<div id="productName">
							<span>교복 마이</span>
						</div>
						<div id="productPrice">
							<span>20,000</span><span style="font-size:14px;">원</span>
						</div>
						<div id="productCategory">
							<span>옷>교복</span>
						</div>
						<div id="productState">
							<span>상태: 상</span>
						</div>
						<script> state()</script>
					</div>
					<div id="product" style="z-index: 1;">
						<div id="productIMGpos">
							<img id="productIMG" src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
						</div>
						<div id="productName">
							<span>교복 마이</span>
						</div>
						<div id="productPrice">
							<span>20,000</span><span style="font-size:14px;">원</span>
						</div>
						<div id="productCategory">
							<span>옷>교복</span>
						</div>
						<div id="productState">
							<span>상태: 상</span>
						</div>
						<script> state()</script>
					</div>
					<div id="product" style="z-index: 1;">
						<div id="productIMGpos">
							<img id="productIMG" src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
						</div>
						<div id="productName">
							<span>교복 마이</span>
						</div>
						<div id="productPrice">
							<span>20,000</span><span style="font-size:14px;">원</span>
						</div>
						<div id="productCategory">
							<span>옷>교복</span>
						</div>
						<div id="productState">
							<span>상태: 상</span>
						</div>
						<script> state()</script>
					</div>
				</div>
				<div id="allproductROW" style="top: 890px;">
					<div id="product" style="z-index: 1;">
						<div id="productIMGpos">
							<img id="productIMG" src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
						</div>
						<div id="productName">
							<span>교복 마이</span>
						</div>
						<div id="productPrice">
							<span>20,000</span><span style="font-size:14px;">원</span>
						</div>
						<div id="productCategory">
							<span>옷>교복</span>
						</div>
						<div id="productState">
							<span>상태: 상</span>
						</div>
						<script> state()</script>
					</div>
					<div id="product" style="z-index: 1;">
						<div id="productIMGpos">
							<img id="productIMG" src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
						</div>
						<div id="productName">
							<span>교복 마이</span>
						</div>
						<div id="productPrice">
							<span>20,000</span><span style="font-size:14px;">원</span>
						</div>
						<div id="productCategory">
							<span>옷>교복</span>
						</div>
						<div id="productState">
							<span>상태: 상</span>
						</div>
						<script> state()</script>
					</div>
					<div id="product" style="z-index: 1;">
						<div id="productIMGpos">
							<img id="productIMG" src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
						</div>
						<div id="productName">
							<span>교복 마이</span>
						</div>
						<div id="productPrice">
							<span>20,000</span><span style="font-size:14px;">원</span>
						</div>
						<div id="productCategory">
							<span>옷>교복</span>
						</div>
						<div id="productState">
							<span>상태: 상</span>
						</div>
						<script> state()</script>
					</div>
				</div>
				<div id="allproductROW" style="top: 1335px;">
					<div id="product" style="z-index: 1;">
						<div id="productIMGpos">
							<img id="productIMG" src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
						</div>
						<div id="productName">
							<span>교복 마이</span>
						</div>
						<div id="productPrice">
							<span>20,000</span><span style="font-size:14px;">원</span>
						</div>
						<div id="productCategory">
							<span>옷>교복</span>
						</div>
						<div id="productState">
							<span>상태: 상</span>
						</div>
						<script> state()</script>
					</div>
					<div id="product" style="z-index: 1;">
						<div id="productIMGpos">
							<img id="productIMG" src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
						</div>
						<div id="productName">
							<span>교복 마이</span>
						</div>
						<div id="productPrice">
							<span>20,000</span><span style="font-size:14px;">원</span>
						</div>
						<div id="productCategory">
							<span>옷>교복</span>
						</div>
						<div id="productState">
							<span>상태: 상</span>
						</div>
						<script> state()</script>
					</div>
					<div id="product" style="z-index: 1;">
						<div id="productIMGpos">
							<img id="productIMG" src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
						</div>
						<div id="productName">
							<span>교복 마이</span>
						</div>
						<div id="productPrice">
							<span>20,000</span><span style="font-size:14px;">원</span>
						</div>
						<div id="productCategory">
							<span>옷>교복</span>
						</div>
						<div id="productState">
							<span>상태: 상</span>
						</div>
						<script> state()</script>
					</div>
				</div>
			</div>

			<div id="viewmoreFONT" onclick="location.href='#'"style="top: 4066px;">
				<span>더보기 ></span>
			</div>

			<svg class="bottom">
				<rect id="bottom" rx="0" ry="0" x="0" y="0" width="1920" height="470">
				</rect>
			</svg>
			<div class="bottom">
				<img id="bottomLOGO" src="static/img/logo_whitever.png" srcset="static/img/logo_whitever.png 1x, static/img/logo_whitever@2x.png 2x">
				<div id="bottomFONT" style="left: 424px; top: 61px; font-size: 30px; font-weight: bold; opacity: 1; margin-top: -2px;">
					<span>미림마켓</span>
				</div>
				<div id="bottomFONT">
					<span>이용약관</span>
				</div>
				<div id="bottomFONT" style="left: 669px;">
					<span>유해 사용자 신고</span>
				</div>
				<div id="bottomFONT" style="left: 977px;">
					<span>1:1 문의</span>
				</div>
				<div id="bottomFONT" style="top: 177px;">
					<span>개인정보보호방침</span>
				</div>
				<div id="bottomFONT" style="left: 669px; top: 177px;">
					<span>오류 제보</span>
				</div>
				<div id="bottomFONT" style="top: 247px;">
					<span>모든 상품들에 대하여, 미림마켓은 통신판매중개자로서 중고거래마켓 미림마켓의 거래 당사자가 아니며, 입점판매자가 등록한 상품정보 및 거래에 대해 책임을 지지 않습니다.</span>
				</div>
				<svg class="bottomLINE" viewBox="0 0 1194 1">
					<path id="bottomLINE" d="M 0 0 L 1194 0"></path>
				</svg>
				<div id="bottomFONT" style="top: 327px;">
					<span>제휴문의 luckyponyo97@gmail.com</span>
				</div>
				<div id="bottomFONT" style="top: 357px;">
					<span>서울시 관악구 호암로 546 (신림동) 미림여자정보과학고등학교</span>
				</div>
				<div id="bottomFONT" style="top: 407px; opacity: 1;">
					<span>©Mirim Market Inc.</span>
				</div>
			</div>
		</div>
	</body>
</html>