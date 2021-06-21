	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메인</title>
		<link rel="shortcut icon" href="#">
		<style type="text/css">
		#topMY {
			fill: transparent;
			stroke: rgba(26, 24, 24, 1);
			stroke-width: 2px;
			stroke-linejoin: miter;
			stroke-linecap: butt;
			stroke-miterlimit: 10;
			shape-rendering: auto;
		}
		
		.topMY {
			cursor: pointer;
			overflow: visible;
			position: absolute;
			width: 32px;
			height: 34px;
			left: 1636px;
			top: 40px;
			transform: matrix(1, 0, 0, 1, 0, 0);
		}
		</style>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
		<script>
			
			function checkLoginStatus() { // 로그인인지 아닌지 확인
				//var loginBtn = document.querySelector('#loginBtn');
				var nameTxt = document.querySelector('#name');
				// gauth.isSignedIn.get()   -> 로그인이 되어 있는지 아닌지 확인 
				if (gauth.isSignedIn.get()) { // 로그인이 되어 있다면
					console.log('logined');
					//loginBtn.value = 'Logout';
					var profile = gauth.currentUser.get().getBasicProfile(); // 현제 로그인 사용자 정보를 가져오기
					nameTxt.innerHTML = profile.getName();
				} else {		// 로그인이 안 되어 있다면 
					console.log('logouted');
					//loginBtn.value = 'Login';
					nameTxt.innerHTML = '';
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
			/* function onSignIn(googleUser) {
				
				  var profile = googleUser.getBasicProfile();
				  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
				  console.log('Name: ' + profile.getName());
				  console.log('Image URL: ' + profile.getImageUrl());
				  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
			} */
			function Logout(){
				var auth2 = gapi.auth2.getAuthInstance();
			    auth2.signOut().then(function () {
				   checkLoginStatus();
			      console.log('User signed out.');
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
				                     
				                      localStorage.setItem('token', payload.token);
				                      localStorage.setItem('name', userName);
				                  } else {
				                      console.error(xhr.responseText);
				                  }
				              }
				          };
				          xhr.send("at=" + userInfo_at + "&it=" + userInfo_it );
				          location.href="./main_2";
				      }else{
						gauth.signOut().then(alert("미림학교 계정만 가능합니다. !!"));
					  }
			      });
				}else{
					gauth.signOut().then(alert("로그아웃 되었습니다."));
					location.href="./main_2";
				}
			  }
		</script>
		<!-- Last part of BODY element in file index.html -->
	</head>
	<body>
		<span id="name"></span>
		<!-- <input type="button" id="loginBtn" value = "checking.." onclick="
			if(this.value === 'Login'){
			      gauth.signIn({
			        scope:'https://people.googleapis.com/v1/people/me'
			      }).then(function(){
			        checkLoginStatus();	
			      });
			    } else {
			      gauth.signOut().then(function(){
			        checkLoginStatus();
			      });
			    }
			"/> -->
			
			
			<!-- Add where you want your sign-in button to render -->
			<!-- Use an image that follows the branding guidelines in a real app -->
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
			
		
    		
			
			<!-- <svg class="topMY" viewBox="61.076 32.612 30 32">
			<path id="topMY"
			d="M 83.69393920898438 47.11613464355469 C 84.70953369140625 45.61999893188477 85.30586242675781 43.79904937744141 85.30586242675781 41.83426666259766 C 85.30586242675781 36.74092864990234 81.30147552490234 32.61199951171875 76.36181640625 32.61199951171875 C 71.42215728759766 32.61199951171875 67.41777801513672 36.74092864990234 67.41777801513672 41.83426666259766 C 67.41777801513672 43.70920181274414 67.96092224121094 45.4531135559082 68.89311981201172 46.9088134765625 C 64.23535919189453 49.04409408569336 61.07599639892578 54.56227111816406 61.07599639892578 59.32867050170898 C 61.07599639892578 66.27806854248047 91.07599639892578 66.41953277587891 91.07599639892578 59.47016906738281 C 91.07599639892578 54.85367965698242 88.11231231689453 49.30550384521484 83.69393920898438 47.11613464355469 Z">
			</path></svg> -->
			
		
	
		<%-- <c:forEach items="${productlist }" var="p">
		      [${p.category }]
		      	<a href="BuyProduct?seq=${p.seq }"> ${p.title }
				&nbsp;${p.price}원 </a>
			<br />
		</c:forEach> --%>
			<a href="Registration">상품등록 </a>
			<a href="login">로그인</a>
			<a href="mypage">마이페이지</a>
	</body>
</html>