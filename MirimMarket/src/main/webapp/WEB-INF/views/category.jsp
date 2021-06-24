<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8"/>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>미림마켓</title>
      <link rel="icon" type="image/png" href="static/img/logo.png"/>
      
      <script type="text/javascript" src="static/js/product.js"></script>
      <script>
         function state(left, leftDIS, top, size){
             const maxState = 5;
             var state = 0;
             var state1='<c:out value="${product.state }"/>';
             if(state1 === "최상") state=5;
             else if (state1 === "상") state=4;
             else if(state1 === "중") state=3;
             else if(state1 === "하") state=2;
             else if(state1 === "최하") state=1;
             for(var i=1; i<=state; i++){
                 document.write(
                     '<svg class="productStateFill" style="left: '+ left + 'px; top: ' + top + 'px;"> <ellipse id="productStateFill" rx="' + size + '" ry="' + size + '" cx="' + size + '" cy="' + size + '"/> </svg>'
                 );
                 left += leftDIS;
             }
      
             for(var i=state; i<maxState; i++){
                 document.write(
                     '<svg class="productStateNoneFill" style="left: '+ left + 'px; top: ' + top + 'px;"> <ellipse id="productStateNoneFill" rx="' + size + '" ry="' + size + '" cx="' + size + '" cy="' + size + '"/> </svg>'
                 );
                 left += leftDIS;
             }
         }
      </script>
      
      <link href="static/css/top.css" rel="stylesheet" type="text/css" />
      <link href="static/css/selectbox.css" rel="stylesheet" type="text/css" />
      <link href="static/css/product.css" rel="stylesheet" type="text/css" />
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

         .categorySET{
			position: absolute;
			left: 348px;
			top: 337px;
			width: 1230px;
			height: auto;
		}
		#allproduct {
			width: 1230px;
		}
		#allproductROW{
			margin-bottom: 45px;
			width: 1230px;
			height: 400px;
			overflow: hidden;
		}
	
		#selectPAGE {
			margin-left: 500px;
			margin-top: 75px;
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
				margin-top: 275px;
				margin-left: -348px;
				overflow: visible;
				width: 1920px;
				height: 470px;
				background-color: rgba(177,177,172,1);
			}
			#bottomLOGO {
				margin-top: 38px;
				margin-left: 345px;
				width: 87px;
				height: 87px;
				overflow: visible;
			}
			#bottomFONT {
				margin-top: -70px;
				margin-left: 425px;
				opacity: 0.6;
				overflow: visible;
				white-space: nowrap;
				line-height: 34px;
				text-align: left;
				font-family: 'TmoneyRoundWind';
				font-style: normal;
				font-weight: normal;
				font-size: 14px;
				color: rgba(255,255,255,1);
			}
			#bottomLINE {
				opacity: 0.6;
				fill: rgba(0,0,0,0);
				stroke: rgba(255,255,255,1);
				stroke-width: 1px;
				stroke-linejoin: miter;
				stroke-linecap: round;
				stroke-miterlimit: 4;
				shape-rendering: auto;
			}
			.bottomLINE {
				overflow: visible;
				margin-top: -50px;
				margin-left: 365px;
				transform: matrix(1,0,0,1,0,0);
			}
      </style>
   </head>
   <body>
         <jsp:include page="menubar.jsp"></jsp:include>
         <div id="categoryFONT">
            <span>카테고리</span>
         </div>
         
         <div id="categorySECTION">
               <span>${cateName}</span>
         </div>
   
            <!-- [정렬순] 셀렉트 박스 -->
            <select class="selectbox" style="top: 287px;">
               <option selected>최신순</option>
               <option>인기순</option>
            </select>
            <svg class="selectboxARROW" style="top: 292px;" viewBox="0 0 17 13">
               <path id="selectboxARROW" d="M 7.663029670715332 1.280071258544922 C 8.057735443115234 0.6764036417007446 8.942263603210449 0.6764036417007446 9.336969375610352 1.280071139335632 L 15.98833656311035 11.45275020599365 C 16.4232120513916 12.11785411834717 15.94602394104004 13 15.1513671875 13 L 1.848632454872131 13 C 1.053975701332092 13.00000095367432 0.576787531375885 12.11785411834717 1.011662840843201 11.45275115966797 Z"></path>
            </svg>
            
            
            <!-- [카테고리] 셀렉트 박스 -->
            <!-- 링크 추가!! -->
            <!-- 상품 나열 -->
            <c:set var="i" value="0" />
            <c:set var="j" value="3" />
               
            <div class="categorySET">
            	<div id="allproduct">
               		<c:forEach items="${productlist}" var="product">
                  		<c:if test="${i%j == 0 }" >
                   			<div id="allproductROW" style="top:${i/j*445}px">
                  		</c:if>
                  				<a id="product" href="product?productID=${product.productID }">
			                    	<div id="productIMGpos">
	    			                    <img src="static/img${product.gdsImg }" onerror="this.src = 'static/img/noimage.PNG'"/>
    	    			             </div>
        	    	         		<div id="productName">
		            	    	        <span>${product.title}</span>
        		        	    	 </div>
	            		    	     <div id="productPrice">
    	                			    <span>${product.price }</span><span style="font-size:14px;">원</span>
			        	             </div>
    			        	         <div id="productCategory">
        	    		    	        <span>${product.cate1 } > ${product.cate2}</span>
	        	        		     </div>
		    	        	         <div id="productState">
        			        	        <span>상태: ${product.state }</span>
            			        	 </div>
                	    		 	<script> state(287, 19, 377, 7.5)</script>
		                  		</a>
        	           <c:if test="${i%j == j-1 }">
        	           		</div>
    	    			</c:if>
	                  <c:set var="i" value="${i+1 }" />
              		</c:forEach>
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
				<div class="bottom">
					<img id="bottomLOGO" src="static/img/logo_whitever.png" srcset="static/img/logo_whitever.png 1x, static/img/logo_whitever@2x.png 2x">
					<div id="bottomFONT" style="font-size: 30px; font-weight: bold; opacity: 1;">
						<span>미림마켓</span>
					</div>
					<div id="bottomFONT" style="margin-top: 37px; margin-left: 363px;">
						<span>이용약관</span>
					</div>
					<div id="bottomFONT" style="margin-top: -35px; margin-left: 670px;">
						<span>유해 사용자 신고</span>
					</div>
					<div id="bottomFONT" style="margin-top: -35px; margin-left: 963px;">
						<span>1:1 문의</span>
					</div>
					<div id="bottomFONT" style="margin-top: 5px; margin-left: 363px;">
						<span>개인정보보호방침</span>
					</div>
					<div id="bottomFONT" style="margin-top: -35px; margin-left: 670px;">
						<span>오류 제보</span>
					</div>
					<div id="bottomFONT" style="margin-top: 38px; margin-left: 363px;">
						<span>모든 상품들에 대하여, 미림마켓은 통신판매중개자로서 중고거래마켓 미림마켓의 거래 당사자가 아니며, 입점판매자가 등록한 상품정보 및 거래에 대해 책임을 지지 않습니다.</span>
					</div>
					<svg class="bottomLINE" viewBox="0 0 1194 1">
						<path id="bottomLINE" d="M 0 0 L 1194 0"></path>
					</svg>
					<div id="bottomFONT" style="margin-top: 25px; margin-left: 363px;">
						<span>제휴문의 luckyponyo97@gmail.com</span>
					</div>
					<div id="bottomFONT" style="margin-top: -5px; margin-left: 363px;">
						<span>서울시 관악구 호암로 546 (신림동) 미림여자정보과학고등학교</span>
					</div>
					<div id="bottomFONT" style="margin-top: 15px; margin-left: 363px; opacity: 1;">
						<span>©Mirim Market Inc.</span>
					</div>
				</div>
            </div>
   </body>
</html>