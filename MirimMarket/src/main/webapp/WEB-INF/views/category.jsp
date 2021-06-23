<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>카테고리별 상품 목록</title>

		<script type="text/javascript" src="static/js/product.js"></script>

		<link href="static/css/top.css" rel="stylesheet" type="text/css" />
		<link href="static/css/selectbox.css" rel="stylesheet" type="text/css" />
		<link href="static/css/product.css" rel="stylesheet" type="text/css" />
		<link href="static/css/bottom.css" rel="stylesheet" type="text/css" />
		<style id="applicationStylesheet" type="text/css">
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
			#categoryFONT {
				opacity: 0.4;
				left: 363px;
				top: 199px;
				position: absolute;
				overflow: visible;
				white-space: nowrap;
				line-height: 30px;
				margin-top: -5px;
				text-align: left;
				font-family: 'TmoneyRoundWind';
				font-style: normal;
				font-weight: normal;
				font-size: 20px;
				color: rgba(69,69,69,1);
			}
			#categorySECTION {
				left: 363px;
				top: 236px;
				position: absolute;
				overflow: visible;
				white-space: nowrap;
				text-align: left;
				font-family: 'TmoneyRoundWind';
				font-style: normal;
				font-weight: normal;
				font-size: 26px;
				color: rgba(0,0,0,1);
			}
			.categoryBOX{
				cursor: pointer;
				appearance: none;
				-webkit-appearance: none;
				border: 0;
				outline: 0;
				font-family: 'TmoneyRoundWind';
				font-style: normal;
				font-weight: normal;
				font-size: 26px;
				background: rgba(255, 255, 255, 0);
				color: rgba(0,0,0,1);
			}
			.categoryBOX option{ font-size: 20px; }

			#allproduct {
				position: absolute;
				left: 348px;
				top: 337px;
				width: 1230px;
				height: 1730px;
			}
			#allproductROW{
				position: absolute;
				width: 1230px;
				height: 400px;
				overflow: hidden;
			}
			
			#selectPAGE {
				position: absolute;
				left: 850px;
				top: 2150px;
				overflow: visible;

				font-family: 'TmoneyRoundWind';
				font-style: normal;
				font-weight: normal;
				font-size: 26px;
				color: rgba(69,69,69,1);
			}
			#selectPAGE li{
				list-style: none;
				height: 35px;
				width: 35px;
				text-align: center;
				margin-right: 15px;
				float: left;
				border-radius: 70%;
			}
			#selectPAGE a{
				text-decoration: none;
				color: rgba(69,69,69,1);
			}

			#selected{ background-color: rgba(242,197,61,1); }
			#selected a{
				text-decoration: none; 
				color: rgb(255, 255, 255);
			}

			.bottom {
				position: absolute;
				overflow: visible;
				width: 1920px;
				height: 470px;
				left: 0px;
				top: 2350px;
			}
		</style>
	</head>
	<body>
		<div id="">
			<!-- 상단바 -->
			<div id="topMENU1">
				<!-- 고정되어 있는 상단바-->
				<div id="topLOGO">
					<a href="index"><img src="static/img/logo_g.png" srcset="static/img/logo_g.png 1x, static/img/logo_g@2x.png 2x"></a>
				</div>
				<!-- 이거 링크 꼭!!!!!! 걸어주세요-->
				<ul>
					<li><a href="index">HOME</a></li>
					<li><a href="category?cate1=의류">CLOTHES</a></li>
					<li><a href="category?cate1=도서">BOOKS</a></li>
					<li><a href="category?cate1=기타">OTHERS</a></li>
					<li><a href="category?cate1=요청">WANT</a></li>
				</ul>
				<!-- 사진 찾는데 한계가 있어, html으로 그린걸로 사용했습니다.
					 원하는 아이콘 주시면 그걸로 바꿔서 다시 드리도록 하겠습니다.
				-->
				<span id="name"></span>
				<a id="signinButton"><svg class="topMY" viewBox="61.076 32.612 30 32">
					<path id="topMY" d="M 83.69393920898438 47.11613464355469 C 84.70953369140625 45.61999893188477 85.30586242675781 43.79904937744141 85.30586242675781 41.83426666259766 C 85.30586242675781 36.74092864990234 81.30147552490234 32.61199951171875 76.36181640625 32.61199951171875 C 71.42215728759766 32.61199951171875 67.41777801513672 36.74092864990234 67.41777801513672 41.83426666259766 C 67.41777801513672 43.70920181274414 67.96092224121094 45.4531135559082 68.89311981201172 46.9088134765625 C 64.23535919189453 49.04409408569336 61.07599639892578 54.56227111816406 61.07599639892578 59.32867050170898 C 61.07599639892578 66.27806854248047 91.07599639892578 66.41953277587891 91.07599639892578 59.47016906738281 C 91.07599639892578 54.85367965698242 88.11231231689453 49.30550384521484 83.69393920898438 47.11613464355469 Z">
					</path>
				</svg></a>
				
				<script>
					  $('#signinButton').click(function() {
						  auth2 = gapi.auth2.getAuthInstance();
					    // signInCallback defined in step 6.
					    attachSignin();
					  });
				</script>
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
				<!--<a href="#">--><svg class="topCHAT" viewBox="2.835 0 32 32" onclick="alert('업데이트예정');">
					<path id="topCHAT" d="M 3.73769998550415 30.53096389770508 L 5.74560022354126 23.63983154296875 C 5.769867420196533 23.55661582946777 5.802201271057129 23.47894477844238 5.841295719146729 23.40716934204102 C 3.949563980102539 20.97958946228027 2.835000038146973 18.00008583068848 2.835000038146973 14.7806282043457 C 2.835000038146973 6.617892265319824 9.998100280761719 0 18.83430099487305 0 C 27.67140007019043 0 34.83449935913086 6.617892265319824 34.83449935913086 14.7806282043457 C 34.83449935913086 22.94336318969727 27.67140007019043 29.56125640869141 18.83430099487305 29.56125640869141 C 16.03469657897949 29.56125640869141 13.40354633331299 28.89715194702148 11.11445426940918 27.7298469543457 L 5.422500133514404 31.79301452636719 C 5.221633911132813 31.93643379211426 5.005940437316895 31.9999942779541 4.797270774841309 31.99999809265137 C 4.114921092987061 32.0000114440918 3.507498264312744 31.32039642333984 3.73769998550415 30.53096389770508 Z">
					</path>
				</svg><!-- </a>-->
				
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
						<li><a href="category?cate1=의류&cate2=교복">교복</a></li>
						<li><a href="category?cate1=의류&cate2=체육복">체육복</a></li>
						<li><a href="category?cate1=의류&cate2=사복">사복</a></li>
						<li><a href="category?cate1=의류&cate2=액세서리">액세서리</a></li>
					</ul>
					<ul id="books" style="margin-left: 10px;">
						<li><a href="category?cate1=도서&cate2=전공도서">전공도서</a></li>
						<li><a href="category?cate1=도서&cate2=일반도서">일반도서</a></li>
						<li><a href="category?cate1=도서&cate2=교과서">교과서</a></li>
					</ul>
					<ul id="others" style="margin-left: 5px;">
						<li><a href="category?cate1=기타&cate2=교복">학용품</a></li>
						<li><a href="category?cate1=기타&cate2=학교굿즈">학교굿즈</a></li>
						<li><a href="category?cate1=기타&cate2=주변기기">주변기기</a></li>
						<li><a href="category?cate1=기타&cate2=기타 상품">기타 상품</a></li>
					</ul>
					<ul id="user" style="width: 190px; margin-left: 448px;">
						<li><a href="mypage">마이페이지</a></li>
						<li><a href="registration">상품 등록</a></li>
						<li onclick="alert('업데이트예정');"><a href="">채팅</a></li>
						<li><a href="https://mail.google.com/mail/?view=cm&amp;fs=1&amp;to=s2019s30@e-mirim.hs.kr" target="_blank">1:1 문의</a></li>
					</ul>
				</div>
			</div>


			<div id="categoryFONT">
				<span>카테고리</span>
			</div>
			<!-- [카테고리] 셀렉트 박스 -->
			<!-- 링크 추가!! -->
			<div id="categorySECTION">
				<span>${cateName }</span>
			</div>

			<!-- [정렬순] 셀렉트 박스 -->
			<select class="selectbox" style="top: 287px;">
				<option selected>최신순</option>
				<option>인기순</option>
			</select>
			<svg class="selectboxARROW" style="top: 292px;" viewBox="0 0 17 13">
				<path id="selectboxARROW" d="M 7.663029670715332 1.280071258544922 C 8.057735443115234 0.6764036417007446 8.942263603210449 0.6764036417007446 9.336969375610352 1.280071139335632 L 15.98833656311035 11.45275020599365 C 16.4232120513916 12.11785411834717 15.94602394104004 13 15.1513671875 13 L 1.848632454872131 13 C 1.053975701332092 13.00000095367432 0.576787531375885 12.11785411834717 1.011662840843201 11.45275115966797 Z"></path>
			</svg>

			<!-- 상품 나열 -->
			<div id="allproduct">
				<div id="allproductROW">
					<a id="product" href="static/page4/productpage.html">
						<div id="productIMGpos">
							<img src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
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
						<script> state(287, 19, 377, 7.5)</script>
					</a>
					<a id="product" href="static/page4/productpage.html">
						<div id="productIMGpos">
							<img src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
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
						<script> state(287, 19, 377, 7.5)</script>
					</a>
					<a id="product" href="static/page4/productpage.html">
						<div id="productIMGpos">
							<img src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
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
						<script> state(287, 19, 377, 7.5)</script>
					</a>
				</div>					
				<div id="allproductROW" style="top: 445px;">
					<a id="product" href="static/page4/productpage.html">
						<div id="productIMGpos">
							<img src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
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
						<script> state(287, 19, 377, 7.5)</script>
					</a>
					<a id="product" href="static/page4/productpage.html">
						<div id="productIMGpos">
							<img src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
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
						<script> state(287, 19, 377, 7.5)</script>
					</a>
					<a id="product" href="static/page4/productpage.html">
						<div id="productIMGpos">
							<img src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
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
						<script> state(287, 19, 377, 7.5)</script>
					</a>
				</div>
				<div id="allproductROW" style="top: 890px;">
					<a id="product" href="static/page4/productpage.html">
						<div id="productIMGpos">
							<img src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
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
						<script> state(287, 19, 377, 7.5)</script>
					</a>
					<a id="product" href="static/page4/productpage.html">
						<div id="productIMGpos">
							<img src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
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
						<script> state(287, 19, 377, 7.5)</script>
					</a>
					<a id="product" href="static/page4/productpage.html">
						<div id="productIMGpos">
							<img src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
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
						<script> state(287, 19, 377, 7.5)</script>
					</a>
				</div>
				<div id="allproductROW" style="top: 1335px;">
					<a id="product" href="static/page4/productpage.html">
						<div id="productIMGpos">
							<img src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
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
						<script> state(287, 19, 377, 7.5)</script>
					</a>
					<a id="product" href="static/page4/productpage.html">
						<div id="productIMGpos">
							<img src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
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
						<script> state(287, 19, 377, 7.5)</script>
					</a>
					<a id="product" href="static/page4/productpage.html">
						<div id="productIMGpos">
							<img src="static/img/puppy.jpg" onerror="this.src = 'static/img/noimage.PNG'"/>
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
						<script> state(287, 19, 377, 7.5)</script>
					</a>
				</div>
			</div>
			
			<!-- 페이지 번호 -->
			<div id="selectPAGE">
				<ul>
					<li id="selected"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">></a></li>
				</ul>
			</div>

			<!-- 하단바 -->
			<svg class="bottom">
				<rect id="bottom" rx="0" ry="0" x="0" y="0" width="1920" height="470"></rect>
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