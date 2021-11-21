<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>SOUND PALETTE</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/palette/resources/css/bootstrap.min.css">
<!-- Typography CSS -->
<link rel="stylesheet" href="/palette/resources/css/typography.css">
<!-- Style CSS -->
<link rel="stylesheet" href="/palette/resources/css/style.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="/palette/resources/css/responsive.css">
<script>

	function loginSubmit() {
		
		var id = $("#MEM_EMAIL").val();
		var pw = $("#MEM_PW").val();
		var c = "${message}";
		var r = "${result}";
		
		if (id == null || id == '') {
			alert("이메일을 입력하세요.");
			return 0;
		} else if(pw == null || pw == '') {
			alert("비밀번호를 입력하세요.");
			return 0;
		}
		
		
		loginForm.submit();
		
		
	
	}
	
	<c:if test="${message ne null}">
		alert("${message}");
	</c:if>
	

	
</script>
</head>
<body>

	<!-- Sign in Start -->
	<section class="sign-in-page" style="background: #fff;">
		<div class="container">
			<div class="row justify-content-center align-items-center height-self-center">
				<div class="col-md-6 col-sm-12 col-12 align-self-center">
					<a href="/palette/SOPA/loginForm" class="header-logo">
						<h3 class="mb-3 text-center">
							<span style="color: #ff4545">SOUND PALETTE
						</h3>
					</a></span>
					<div class="sign-user_card ">
						<div class="d-flex justify-content-center"></div>
						<div class="sign-in-page-data">
							<div class="sign-in-from w-100 pt-5 m-auto">
								<h1 class="mb-3 text-center">
									<span style="color: #000000">로그인</span>
								</h1>
								<form class="mt-4" action="/palette/SOPA/login" method="post">
									<div class="form-group">
										<label for="exampleInputEmail2"><span style="color: #000000">E-mail</span></label> <input
											type="email" class="form-control mb-0" id="MEM_EMAIL" placeholder="이메일 입력"
											style="color: #000000" name="MEM_EMAIL">
									</div>
									<div class="form-group">
										<label for="exampleInputPassword2"><span style="color: #000000">비밀번호</span></label> <input
											type="password" class="form-control mb-0" id="MEM_PW"
											placeholder="비밀번호 입력" style="color: #000000" name="MEM_PW">
									</div>
									<div class="sign-info" style="background: #ff4545;">
										<input type="submit" class="btn btn-primary mb-2"
											style="background: #ff4545; border-color: #ff4545;" value="로그인" onclick="loginSubmit()"></input>
										<!-- button -> input으로 바꿈, value=로그인, onclick="loginSubmit()" -->
									</div>
									<div class="d-inline-block w-100">
										<div class="custom-control custom-checkbox d-inline-block mt-2 pt-1">
											<input type="checkbox" class="custom-control-input" id="customCheck1"> <label
												class="custom-control-label" for="customCheck1"><span style="color: #000000">아이디
													기억하기</span></label>
										</div>
									</div>
								</form>
							</div>
						</div>
						<div class="mt-2">
							<div class="d-flex justify-content-center links">
								<span style="color: #000000"> 계정이 없으신가요?</span><a href="/palette/SOPA/join" class="ml-2"
									style="color: #ff4545">회원가입</a>
							</div>
							<div class="d-flex justify-content-center links">
								<a href="/palette/SOPA/findPw" style="color: #ff4545">비밀번호를 잊어버렸습니까?</a>
							</div>
							<div class="d-flex justify-content-center links">
								<a href="/palette/SOPA/findId" style="color: #ff4545">E-Mail을 잊어버렸습니까?</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Sign in END -->
			<!-- Optional JavaScript -->
			<!-- jQuery first, then Popper.js, then Bootstrap JS -->
			<script src="/palette/resources/js/jquery.min.js"></script>
			<script src="/palette/resources/js/popper.min.js"></script>
			<script src="/palette/resources/js/bootstrap.min.js"></script>
			<!-- Appear JavaScript -->
			<script src="/palette/resources/js/jquery.appear.js"></script>
			<!-- Countdown JavaScript -->
			<script src="/palette/resources/js/countdown.min.js"></script>
			<!-- Counterup JavaScript -->
			<script src="/palette/resources/js/waypoints.min.js"></script>
			<script src="/palette/resources/js/jquery.counterup.min.js"></script>
			<!-- Wow JavaScript -->
			<script src="/palette/resources/js/wow.min.js"></script>
			<!-- Apexcharts JavaScript -->
			<script src="/palette/resources/js/apexcharts.js"></script>

			<!-- Slick JavaScript -->
			<script src="/palette/resources/js/slick.min.js"></script>
			<!-- Select2 JavaScript -->
			<script src="/palette/resources/js/select2.min.js"></script>
			<!-- Owl Carousel JavaScript -->
			<script src="/palette/resources/js/owl.carousel.min.js"></script>
			<!-- Magnific Popup JavaScript -->
			<script src="/palette/resources/js/jquery.magnific-popup.min.js"></script>
			<!-- Smooth Scrollbar JavaScript -->
			<script src="/palette/resources/js/smooth-scrollbar.js"></script>
			<!-- Style Customizer -->
			<script src="/palette/resources/js/style-customizer.js"></script>
			<!-- Chart Custom JavaScript -->
			<script src="/palette/resources/js/chart-custom.js"></script>
			<!-- Custom JavaScript -->
			<script src="/palette/resources/js/custom.js"></script>
			<!-- ID저장 -->
			<script src="/palette/resources/js/cookie.js"></script>
			
</body>
</html>