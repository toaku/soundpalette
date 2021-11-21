<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>SOUND PALETTE</title>

</head>
<body>
	<%@ include file="../main/main-top.jspf"%>

	<!-- Page Content  -->
	<div id="content-page" class="content-page">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="iq-card">
						<div class="iq-card-header d-flex justify-content-between align-items-center">
							<div class="iq-header-title">
								<h4 class="card-title">마이플레이 리스트</h4>
							</div>
							<div id="feature-album-artist-slick-arrow" class="slick-aerrow-block"></div>
						</div>
						<div class="iq-card-body">
							<ul class="list-unstyled row feature-album-artist mb-0">
								<c:forEach var="map" items="${list}">
									<li class="col-lg-2  iq-music-box">
										<div class="iq-thumb-artist" style="width: 200px;">
											<div class="iq-music-overlay"></div>
											<a href="music-player.html"> <img src="/palette/resources/images/${map.IMG_NAME}" class="w-100 img-fluid" alt="">
											</a>
											<div class="overlay-music-icon">
												<a href="/palette/SOPA/myPage/playList?PLAY_NUM=${map.PLAY_NUM}"> <i class="las la-play-circle"></i>
												</a> <a onclick="confirm('삭제 하시겠습니까?')" href="myPlayList2.jsp"> <i class="las la-trash" style="color: #fff"></i>
												</a>
											</div>
										</div>
										<div class="feature-list text-center">
											<h6 class="font-weight-600  mb-0">${map.PLAY_TITLE}</h6>
										</div>
									</li>
								</c:forEach>
							</ul>
							<div class="d-flex align-items-center" style="display: inline-block; float: right;">
								<a href="/palette/SOPA/myPage/myPlayList/New" class="btn btn-primary iq-play mr-2">추가</a>
							</div>
							<br />
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	</div>
	<!-- Wrapper END -->
	<%@ include file="../main/main-Footer.jspf"%>

</body>
</html>