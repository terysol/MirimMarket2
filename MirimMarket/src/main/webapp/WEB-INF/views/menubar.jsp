<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="static/css/top.css" rel="stylesheet" type="text/css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<script>
			function checkLoginStatus() { // 로그인인지 아닌지 확인
				//var loginBtn = document.querySelector('#loginBtn');
				var nameTxt = document.querySelector('#name');
				// gauth.isSignedIn.get()   -> 로그인이 되어 있는지 아닌지 확인 
				if (gauth.isSignedIn.get()) { // 로그인이 되어 있다면
					console.log('logined');
					
					var profile = gauth.currentUser.get().getBasicProfile(); // 현제 로그인 사용자 정보를 가져오기
					nameTxt.innerHTML = profile.getName().split("_")[1];

					document.getElementById('topLogInOut').innerText = "Logout"
				} else {		// 로그인이 안 되어 있다면 
					console.log('logouted');
					
					nameTxt.innerHTML = '';
					document.getElementById('topLogInOut').innerText = "Login"
				}
			}
		
			function init() { // oauth 초기화
				gapi.load('auth2',function() {
					window.gauth = gapi.auth2
							.init({ // gauth -> Google Aouth 객체
								client_id : '252752654293-55as25063oqcqrdouv9qk4j5o4qbdk27.apps.googleusercontent.com'
							})
					gauth.then(function() {
						checkLoginStatus();
					}, function() {
						console.log('googleAuth fail');
					});
				});
			}
			function attachSignin() {
				if(!(gauth.isSignedIn.get())){
				 const xhr = new XMLHttpRequest();
			      gauth.signIn().then(result => {
			          var user = gauth.currentUser.get();
			          var userName = user.getBasicProfile().getName();
			          var userEmail=user.getBasicProfile().getEmail().split('@');
			          
			          var userInfo_it = result.getAuthResponse().id_token;
			          var userInfo_at = result.getAuthResponse(true).access_token;
			          if(userEmail[1] === "e-mirim.hs.kr"){
			        	  xhr.open('post', './login.do', true);
				          xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
				          xhr.onreadystatechange = function () {
				              if (xhr.readyState === xhr.DONE) {
				                  if (xhr.status === 200 || xhr.status === 201) {
					                  var string = '{ "token":"' + userInfo_at + '"}';
				                      var payload = JSON.parse(string);
				                     
				                      // localStorage.setItem('token', payload.token);
				                      // localStorage.setItem('name', userName);
				                  } else {
				                      console.error(xhr.responseText);
				                  }
				              }
				          };
				          xhr.send("at=" + userInfo_at + "&it=" + userInfo_it );
				          location.href="./main";
				      }else{
						gauth.signOut().then(alert("미림학교 계정만 가능합니다. !!"));
					  }
			      });
				}else{
					gauth.signOut()
					.then(
							//localStorage.removeItem('token');
							//localStorage.removeItem('name');
							alert("로그아웃 되었습니다.")
					);
					location.href="./logOut.do";
				}
			  }
		</script>
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
						<li><a href="category?cate1=의류">CLOTHES</a></li>
						<li><a href="category?cate1=도서">BOOKS</a></li>
						<li><a href="category?cate1=기타">OTHERS</a></li>
						<li><a href="category?cate1=요청">WANT</a></li>
					</ul>
					<!-- 사진 찾는데 한계가 있어, html으로 그린걸로 사용했습니다.
						 원하는 아이콘 주시면 그걸로 바꿔서 다시 드리도록 하겠습니다.
					-->
					<span id="topUSER">
		               <strong style="color: rgba(102,140,74,1);" id="name"></strong>
		            </span>
					<a id="signinButton"><svg class="topMY" viewBox="61.076 32.612 30 32">
						<path id="topMY" d="M 83.69393920898438 47.11613464355469 C 84.70953369140625 45.61999893188477 85.30586242675781 43.79904937744141 85.30586242675781 41.83426666259766 C 85.30586242675781 36.74092864990234 81.30147552490234 32.61199951171875 76.36181640625 32.61199951171875 C 71.42215728759766 32.61199951171875 67.41777801513672 36.74092864990234 67.41777801513672 41.83426666259766 C 67.41777801513672 43.70920181274414 67.96092224121094 45.4531135559082 68.89311981201172 46.9088134765625 C 64.23535919189453 49.04409408569336 61.07599639892578 54.56227111816406 61.07599639892578 59.32867050170898 C 61.07599639892578 66.27806854248047 91.07599639892578 66.41953277587891 91.07599639892578 59.47016906738281 C 91.07599639892578 54.85367965698242 88.11231231689453 49.30550384521484 83.69393920898438 47.11613464355469 Z">
						</path>
						<div id="topLogInOut"></div>
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
	</body>
</html>