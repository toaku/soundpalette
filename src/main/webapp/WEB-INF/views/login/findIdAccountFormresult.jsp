<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>SOUND PALETTE</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/palette/resources/css/bootstrap.min.css">
<!-- Typography CSS -->
<link rel="stylesheet" href="/palette/resources/css/typography.css">
<!-- Style CSS -->
<link rel="stylesheet" href="/palette/resources/css/style.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="/palette/resources/css/responsive.css">
</head>
<body>

	<!-- Sign in Start -->
	<section class="sign-in-page" style="background: #fff;">
		<div class="container h-100">
			<div class="row justify-content-center align-items-center h-100">
				<div class="col-md-6 col-sm-12 col-12 ">
					<a href="/palette/SOPA/loginForm" class="header-logo">
						<h3 class="mb-3 text-center">
							<span style="color: #ff4545">SOUND PALETTE</span>
						</h3>
					</a>

					<div class="sign-user_card ">

						<div class="sign-in-page-data">
							<div class="sign-in-from w-100 m-auto pt-5">
								<h1 class="mb-0">
									<span style="color: #000000">E-Mail 조회 결과</span>
								</h1>
								<p class="text-white">
									<span style="color: #000000">조회된 회원님의 정보는 아래와 같습니다.</span>
								</p>
								<div class="#t">
								
									<H5>
									<c:if test="${empty list || list==''}">
										조회된 아이디가 없습니다.
									</c:if>
									</H5>
									<H4>
										<c:if test="${list != null && list != ''}">
											<c:forEach items="${list}" var="item" varStatus="i">
												<div>
													회원님의 아이디는
													<c:out value="${item.MEM_EMAIL}" />
													입니다.
												</div>
											</c:forEach>
										</c:if>
										</H4>
										<br /> <br />
								</div>
								<div class="d-inline-block w-100">
									<a href="/palette/SOPA/loginForm"
										class="btn btn-primary float-right">Login하러 가기</span></a>
								</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Sign in END -->

	<!-- color-customizer END -->
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

	<!-- am core JavaScript -->
	<script src="/palette/resources/js/core.js"></script>
	<!-- am charts JavaScript -->
	<script src="/palette/resources/js/charts.js"></script>
	<!-- am animated JavaScript -->
	<script src="/palette/resources/js/animated.js"></script>
	<!-- am kelly JavaScript -->
	<script src="/palette/resources/js/kelly.js"></script>
	<!-- am maps JavaScript -->
	<script src="/palette/resources/js/maps.js"></script>
	<!-- am worldLow JavaScript -->
	<script src="/palette/resources/js/worldLow.js"></script>
	<!-- Style Customizer -->
	<script src="/palette/resources/js/style-customizer.js"></script>
	<!-- Chart Custom JavaScript -->
	<script src="/palette/resources/js/chart-custom.js"></script>
	<!-- Custom JavaScript -->
	<script src="/palette/resources/js/custom.js"></script>
</body>
</html>