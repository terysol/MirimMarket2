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
	<title>상품 페이지</title>

	<link href="static/css/top.css" rel="stylesheet" type="text/css" />
	<link href="static/css/slider.css" rel="stylesheet" type="text/css" />
	<link href="static/css/otherProduct.css" rel="stylesheet" type="text/css" />
	<style id="applicationStylesheet" type="text/css">
		@font-face {
			font-family: 'TmoneyRoundWind';
			src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/TmoneyRoundWindRegular.woff') format('woff');
			font-weight: normal;
			font-style: normal;
		}
		* {
			margin: 0;
			padding: 0;
			box-sizing: border-box;
			border: none;
		}
		.productIMGslider {
			position: absolute;
			left: 363px;
			top: 200px;
			width: 582px;
			margin: auto;
		}
		.imgSlider {
			display: none;
			cursor: pointer;
		}            
		.fade {
			-webkit-animation-name: fade;
			-webkit-animation-duration: 1.5s;
			animation-name: fade;
			animation-duration: 1.5s;
		}
		.imgSlider img {
			vertical-align: middle;
			width: 582px;
			height: 493px;
		} 
		.productPREV, .productNEXT {
			cursor: pointer;
			position: absolute;
			top: 5px;
			height: 100%;
			padding: 16px;
			padding-top: 220px;
			color: white;
			font-weight: bold;
			font-size: 18px;
			transition: 0.6s ease;
			border-radius: 0 3px 3px 0;
		}
		.productNEXT { right: 0; }
		.productHEART img{
			cursor: pointer;
			position: absolute;
			bottom: 50px;
			right: 10px;
			height: 50px;
			width: 50px;
		}
		.productDOT {
			cursor: pointer;
			height: 15px;
			width: 15px;
			margin: 0 2px;
			background-color: rgb(255, 255, 255);
			border: 1px solid rgba(0, 0, 0, 0.2);
			border-radius: 50%;
			display: inline-block;
			transition: background-color 0.6s ease;
		}
		.active, .productDOT:hover { background-color: rgba(102,140,74,1); }
		@-webkit-keyframes fade {
			from {opacity: .4} 
			to {opacity: 1}
		}
		@keyframes fade {
			from {opacity: .4} 
			to {opacity: 1}
		}
		@media only screen and (max-width: 300px) {
			.productPREV, .productNEXT {font-size: 11px}
		}
		
		.modal {
			display: none;
			z-index: 500;
			width: 100%;
			height: 100%;
			position: fixed;
			top: 0;
			left: 0;
			background-color: rgba(0, 0, 0, 0.4);
		}
		.modal button {
			cursor: pointer;
			position: absolute;
			top: 10px;
			right: 30px;
			background: transparent;
			border: 0;
			color: #ffffff;
			font-size: 3rem;
		}
		.modalBox { width: 30%; }
		.modalBox img {
			position: absolute;
			width: auto;             
			top: 50%;
			left: 50%;
			transform: translate(-50%,-50%);
		}
		#category {
			left: 975px;
			top: 219px;
			position: absolute;
			overflow: visible;
			white-space: nowrap;
			text-align: left;
			font-family: 'TmoneyRoundWind';
			font-style: normal;
			font-weight: normal;
			font-size: 26px;
			color: rgba(0,0,0,0.5);
		}
		#productFONT1 {
			opacity: 0.8;
			left: 1297px;
			top: 218px;
			position: absolute;
			overflow: visible;
			white-space: nowrap;
			line-height: 30px;
			margin-top: -6px;
			text-align: right;
			font-family: 'TmoneyRoundWind';
			font-style: normal;
			font-weight: normal;
			font-size: 18px;
			color: rgba(69,69,69,1);
		}
		#productTITLE {
			left: 975px;
			top: 284px;
			width: 300px;
			position: absolute;
			font-family: 'TmoneyRoundWind';
			font-style: normal;
			font-weight: normal;
			font-size: 50px;
			color: rgba(69,69,69,1);
		}
		#productFONT2{
			left: 975px;
			top: 408px;
			width: 180px;
			position: absolute;
			font-family: 'TmoneyRoundWind';
			font-style: normal;
			font-weight: normal;
			font-size: 24px;
			color: rgba(69,69,69,1);
		}
		#productFONT3{
			left: 180px;
			top: 30px;
			position: absolute;
			width: 287px;
			font-family:'TmoneyRoundWind';
			font-style: normal;
			font-weight: normal;
			font-size: 30px;
			color: rgba(69,69,69,1);
		}
		.productCHAT {
			position: absolute;
			width: 582px;
			height: 104px;
			left: 975px;
			top: 589px;
			background: rgba(242,197,61,1);
			border-radius: 10px;
		}
		.productCHAT_ {
			position: absolute;
			background: rgba(177,177,172,1);
			border-radius: 70%;
			width: 60px;
			height: 60px;
			left: 110px;
			top: 23px;
		}
		.productCHAT__ {
			overflow: visible;
			position: absolute;
			width: 21.451px;
			height: 22.881px;
			left: 19.958px;
			top: 17.098px;
			transform: matrix(1,0,0,1,0,0);
			fill: rgba(255,255,255,1);
		}

		.detailANDother{
			position: absolute;
			left: 363px;
			top: 781px;
			width: 1200px;
		}
		.detailFONT {
			font-family:'TmoneyRoundWind';
			font-style: normal;
			font-weight: normal;
			font-size: 30px;
			color: rgba(69,69,69,1);
		}
		hr{
			width: 1194px;
			border: 2px solid rgba(242, 197, 61, 1);
			margin-top: 20px;
		}
		.detailSECTION {
			width: 1194px;
			line-height: 40px;
			font-size: 24px;
			margin-top: 23px;
		}
		.other{
			width: 1194px;
			height: 450px;
			border-radius: 10px;
			border: 3px solid rgba(242,197,61,1);
			margin: 200px auto 150px auto;		
		}
		.otherSlidebox {
			position: relative; 
			height: 350px; 
			width: 1050px;
			margin: auto;
			padding: 0px;
		} 
		.otherSECTION{
			font-family:'TmoneyRoundWind';
			font-style: normal;
			font-weight: bold;
			font-size: 24px;
			color: rgba(69,69,69,1);		
			margin: 25px;
			margin-left: 105px;
		}
	</style>

	<script type="text/javascript" src="static/js/product.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
		function plusSlides(n) {
			showSlides(slideIndex += n);
		}
		function currentSlide(n) {
			showSlides(slideIndex = n);
		}
		function showSlides(n) {
			var i;
			var slides = document.getElementsByClassName("imgSlider");
			var dots = document.getElementsByClassName("productDOT");
			if (n > slides.length) {slideIndex = 1}    
			if (n < 1) {slideIndex = slides.length}
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";  
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex-1].style.display = "block";  
			dots[slideIndex-1].className += " active";
		}

		$(function(){
			$(".productHEART").click(function(){
				var on = 'static/img/heartON.png';
				var off = 'static/img/heartOFF.png';
				var currentIMG = $(this).children("img").attr("src");
				
				var imgSrc = on === currentIMG ? off : on;
				$(".productHEART img").attr("src", imgSrc);
			});
			// 이미지 클릭시 해당 이미지 모달
			$(".imgSlider").click(function(){
				$(".modal").show();
				// 해당 이미지 가져오기
				var imgSrc = $(this).children("img").attr("src");
				$(".modalBox img").attr("src", imgSrc);
			});
			//.modal안에 button을 클릭하면 .modal닫기
			$(".modal button").click(function(){
				$(".modal").hide();
			});
		
			//.modal밖에 클릭시 닫힘
			$(".modal").click(function (e) {
				if (e.target.className != "modal") {
					return false;
				} else {
					$(".modal").hide();
				}
			});
		});

		window.onload = function(){
			currentSlide(1);
		}
	</script>
</head>
<body>
	<jsp:include page="menubar.jsp"></jsp:include>
	
	<!-- 이미지 슬라이드-->
	<div class="productIMGslider">
		<!-- 상품 이미지 -->
		<div class="imgSlider fade">
			<img src="static/img/noimage.PNG">
		</div>            
		<div class="imgSlider fade">
		  	<img src="static/img/puppy.jpg">
		</div>     
		<!-- 슬라이드 화살표 -->        
		<a class="productPREV" onclick="plusSlides(-1)">&#10094;</a>
		<a class="productNEXT" onclick="plusSlides(1)">&#10095;</a>
		<!-- 관심하기 -->
		<div class="productHEART">
		  	<img src="static/img/heartOFF.png">
		</div>
		<br>
		<!-- 슬라이드 점 -->
		<div style="text-align:center">
		  	<span class="productDOT" onclick="currentSlide(1)"></span> 
		  	<span class="productDOT" onclick="currentSlide(2)"></span>
		</div>
	</div>
	<!-- 이미지 슬라이드의 이미지를 선택했을 때 확대하는거-->
	<!-- 제이쿼리로 작동중 -->
	<div class="modal">
		<button>&times;</button>
		<div class="modalBox">
			<img src="" alt="">
		</div>
	</div>

	<div id="category">의류 > 교복</div>
	<div id="productFONT1">조회 50회</div>
	<div id="productFONT1" style="left: 1406px;">등록일 2021-04-02</div>
	<div id="productTITLE">1학년 체육복</div>
	<div id="productFONT2">재고 : 1개 남음</div>
	<div id="productFONT2" style="top:455px">상태 : 상</div>
	<!-- 상품 상태 시각화(점들로 표현) -->
	<script>state(1075, 38, 457, 15)</script>
	<div id="productFONT2" style="left: 1385px; top: 512px; font-size: 42px;">20,000<span style="font-size:26px;">원</span></div>
	<!-- 채팅하기 -->
	<a href="#" class="productCHAT">
		<div id="productFONT3">판매자에게 채팅 걸기</div>
		<div class="productCHAT_">
			<svg class="productCHAT__" viewBox="61.076 32.612 21.451 22.881">
				<path d="M 77.24864196777344 42.98297500610352 C 77.97481536865234 41.91318893432617 78.40121459960938 40.61114501953125 78.40121459960938 39.20626068115234 C 78.40121459960938 35.56433486938477 75.53793334960938 32.61199951171875 72.00588989257813 32.61199951171875 C 68.473876953125 32.61199951171875 65.610595703125 35.56433486938477 65.610595703125 39.20626068115234 C 65.610595703125 40.54690170288086 65.99897003173828 41.79386138916016 66.66551208496094 42.83473205566406 C 63.33505630493164 44.36153793334961 61.07599258422852 48.30723190307617 61.07599258422852 51.71537780761719 C 61.07599258422852 56.68445205688477 82.52707672119141 56.78560256958008 82.52707672119141 51.81656265258789 C 82.52707672119141 48.51559829711914 80.40794372558594 44.54845809936523 77.24864196777344 42.98297500610352 Z">
				</path>
			</svg>
		</div>
	</a>

	<!-- 상세 정보 ~ 다른 상품 둘러보기-->
	<!-- 상세정보의 글이 길어지더라도 일정한 거리유지를 하기위해 함께 묶음-->
	<div class="detailANDother">
		<!-- 상세정보 -->
		<div class="detailFONT">상세 정보</div>
		<hr>
		<div class="detailFONT detailSECTION">
			잘 세탁해서 냄새가 나지 않습니다. 색이 같아서 입을 수 있을 겁니다. 사이즈는 100입니다!
		</div>

		<!-- 다른 상품 둘러보기 -->
		<div class="other">
			<div class="otherSECTION" style="font-size: 24px;">다른 상품도 둘러보세요🎈</div>
			<!-- 상품 슬라이드 -->
			<div class="otherSlidebox">
				<input type="radio" name="slide" id="slide01" checked>
				<input type="radio" name="slide" id="slide02">
				<input type="radio" name="slide" id="slide03">
				<input type="radio" name="slide" id="slide04">
				<ul class="slidelist">
					<!-- 첫번째 -->
					<li class="slideitem">
						<a>
							<div id="product" onclick="">
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
								<script> state(222, 17, 321.4, 7)</script>
							</div>
						</a>
						<a>
							<div id="product">
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
								<script> state(222, 17, 321.4, 7)</script>
							</div>
						</a>
						<a>
							<div id="product">
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
								<script> state(222, 17, 321.4, 7)</script>
							</div>
						</a>
					</li>
					<!-- 두번째 -->
					<li class="slideitem">
						<a>
							<div id="product" onclick="">
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
								<script> state(222, 17, 321.4, 7)</script>
							</div>
						</a>
						<a>
							<div id="product">
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
								<script> state(222, 17, 321.4, 7)</script>
							</div>
						</a>
						<a>
							<div id="product">
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
								<script> state(222, 17, 321.4, 7)</script>
							</div>
						</a>
					</li>
					<!-- 세번째 -->
					<li class="slideitem">
						<a>
							<div id="product" onclick="">
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
								<script> state(222, 17, 321.4, 7)</script>
							</div>
						</a>
						<a style>
							<div id="product">
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
								<script> state(222, 17, 321.4, 7)</script>
							</div>
						</a>
						<a>
							<div id="product">
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
								<script> state(222, 17, 321.4, 7)</script>
							</div>
						</a>
					</li>
				</ul>
				
				<!-- 슬라이드의 버튼과 컨트롤 -->
				<div class="slide-control">
					<div class="control01">
						<label for="slide03" class="prev" style="left: -85px;"></label>
						<label for="slide02" class="next" style="right: -85px;"></label>
					</div>
					<div class="control02">
						<label for="slide01" class="prev" style="left: -85px;"></label>
						<label for="slide03" class="next" style="right: -85px;"></label>
					</div>
					<div class="control03">
						<label for="slide02" class="prev" style="left: -85px;"></label>
						<label for="slide01" class="next" style="right: -85px;"></label>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>