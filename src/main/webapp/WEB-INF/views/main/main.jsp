<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<!DOCTYPE html>
<html>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>SOUND PALETTE</title>


﻿
</head>
<body>
	<%@ include file="main-top.jspf"%>

	<!-- Page Content  -->
	<div id="content-page" class="content-page">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="iq-card iq-realease">
						<div
							class="iq-card-header d-flex justify-content-between border-0">
							<div class="iq-header-title">
								<h4 class="card-title">오늘의 당신에게 추천하는 플레이리스트</h4>
							</div>
						</div>
						<div class="iq-card-body  iq-realeses-back">
							<div class="row">
								<div class="col-lg-5 iq-realese-box ">
									<div class="iq-music-img">
										<div class="equalizer">
											<span class="bar bar-1"></span> <span class="bar bar-2"></span>
											<span class="bar bar-3"></span> <span class="bar bar-4"></span>
											<span class="bar bar-5"></span>
										</div>
									</div>

								</div>
								<div class="col-lg-7">
									<ul class="list-unstyled iq-song-slide mb-0 realeases-banner">
									<c:forEach var="music" items="${mainMusics}">
										<li class="row">
											<div
												class="d-flex justify-content-between align-items-center">
												<div class="media align-items-center col-10 col-md-5">
													<div class="iq-realese-song ">
														<a href="myPlayList.jsp"><img
															src="/palette/resources/images/dashboard/realease-song/iu2.jpg"
															class="img-border-radius avatar-60 img-fluid" alt=""></a>
													</div>
													<div class="media-body text-white ml-3">
														<p class="mb-0 iq-music-title">${music.MUSIC_TITLE}</p>
														<small>${music.MUSIC_ART}</small>
													</div>
												</div>
												<p class="mb-0 col-md-2  iq-m-time">3:24</p>
												<p class="mb-0 col-md-2 iq-m-icon">
													<i class="ion-heart font-size-20"></i>
												</p>
												<p class="mb-0 col-2 col-md-2">
												<a href="#" onclick="javascript:setMusic(this.id)" id="${music.MUSIC_NUM}">
													<i class="las la-play-circle font-size-32"></i>
													</a>
												</p>
												<div
													class="iq-card-header-toolbar iq-music-drop d-flex align-items-center  col-md-1">

												</div>
											</div>
										</li>
										</c:forEach>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="iq-card">
						<div
							class="iq-card-header d-flex justify-content-between align-items-center">
							<div class="iq-header-title">
								<h4 class="card-title">관리자 추천 플레이리스트</h4>
							</div>
							<div id="feature-album-slick-arrow" class="slick-aerrow-block"></div>
						</div>
						<div class="iq-card-body">
							<ul class="list-unstyled row  feature-album iq-box-hover mb-0">
							<c:forEach var="main" items="${mainList}">
								<li class="col-lg-2  iq-music-box">
									<div class="iq-card mb-0">
										<div class="iq-card-body p-0">
											<div class="iq-thumb">
												<div class="iq-music-overlay"></div>
												<a href="music-player.html"> <img
													src="/palette/resources/images/${main.IMG_NAME}"
													class="img-border-radius img-fluid w-100" alt="">
												</a>
												<div class="overlay-music-icon">
													<a href="/palette/SOPA/main?PLAY_NUM=${main.PLAY_NUM}&PLAY_TITLE=${main.PLAY_TITLE}"> <i
														class="las la-play-circle"></i>
													</a>
												</div>
											</div>
											<div class="feature-list text-center">
												<h6 class="font-weight-600 mb-0">${main.PLAY_TITLE}</h6>
											</div>
										</div>
									</div>
								</li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="iq-card">
						<div
							class="iq-card-header d-flex justify-content-between align-items-center">
							<div class="iq-header-title">
								<h4 class="card-title">마이리스트</h4>
							</div>
							<div id="feature-album-artist-slick-arrow"
								class="slick-aerrow-block"></div>
						</div>
						<div class="iq-card-body">
							<ul class="list-unstyled row feature-album-artist mb-0">
								<li class="col-lg-2  iq-music-box">
									<div class="iq-thumb-artist">
										<div class="iq-music-overlay"></div>
										<a href="music-player.html"> <img
											src="/palette/resources/images/dashboard/realease-song/iu3.jpg"
											class="w-100 img-fluid" alt="">
										</a>
										<div class="overlay-music-icon">
											<a href="music-player.html"> <i
												class="las la-play-circle"></i>
											</a>
										</div>
									</div>
									<div class="feature-list text-center">
										<h6 class="font-weight-600  mb-0">Pixie Lott</h6>
									</div>
								</li>
								<li class="col-lg-2  iq-music-box">
									<div class="iq-thumb-artist">
										<div class="iq-music-overlay"></div>
										<a href="music-player.html"> <img
											src="/palette/resources/images/dashboard/realease-song/iu3.jpg"
											class="w-100 img-fluid" alt="">
										</a>
										<div class="overlay-music-icon">
											<a href="music-player.html"> <i
												class="las la-play-circle"></i>
											</a>
										</div>
									</div>
									<div class="feature-list text-center">
										<h6 class="font-weight-600 mb-0">Jessie Ware</h6>
									</div>
								</li>
								<li class="col-lg-2  iq-music-box">
									<div class="iq-thumb-artist">
										<div class="iq-music-overlay"></div>
										<a href="music-player.html"> <img
											src="/palette/resources/images/dashboard/realease-song/iu3.jpg"
											class="w-100 img-fluid" alt="">
										</a>
										<div class="overlay-music-icon">
											<a href="music-player.html"> <i
												class="las la-play-circle"></i>
											</a>
										</div>
									</div>
									<div class="feature-list text-center">
										<h6 class="font-weight-600  mb-0">Alesha Dixon</h6>
									</div>
								</li>
								<li class="col-lg-2  iq-music-box">
									<div class="iq-thumb-artist">
										<div class="iq-music-overlay"></div>
										<a href="music-player.html"> <img
											src="/palette/resources/images/dashboard/realease-song/iu3.jpg"
											class="w-100 img-fluid" alt="">
										</a>
										<div class="overlay-music-icon">
											<a href="music-player.html"> <i
												class="las la-play-circle"></i>
											</a>
										</div>
									</div>
									<div class="feature-list text-center">
										<h6 class="font-weight-600  mb-0">Sarah Connor</h6>
									</div>
								</li>
								<li class="col-lg-2  iq-music-box">
									<div class="iq-thumb-artist">
										<div class="iq-music-overlay"></div>
										<a href="music-player.html"> <img
											src="/palette/resources/images/dashboard/realease-song/iu3.jpg"
											class="w-100 img-fluid" alt="">
										</a>
										<div class="overlay-music-icon">
											<a href="music-player.html"> <i
												class="las la-play-circle"></i>
											</a>
										</div>
									</div>
									<div class="feature-list text-center">
										<h6 class="font-weight-600 mb-0">Agnes</h6>
									</div>
								</li>
								<li class="col-lg-2  iq-music-box">
									<div class="iq-thumb-artist">
										<div class="iq-music-overlay"></div>
										<a href="music-player.html"> <img
											src="/palette/resources/images/dashboard/realease-song/iu3.jpg"
											class="w-100 img-fluid" alt="">
										</a>
										<div class="overlay-music-icon">
											<a href="music-player.html"> <i
												class="las la-play-circle"></i>
											</a>
										</div>
									</div>
									<div class="feature-list text-center">
										<h6 class="font-weight-600  mb-0">Rebecca</h6>
									</div>
								</li>
								<li class="col-lg-2  iq-music-box">
									<div class="iq-thumb-artist">
										<div class="iq-music-overlay"></div>
										<a href="music-player.html"> <img
											src="/palette/resources/images/dashboard/realease-song/iu3.jpg"
											class="w-100 img-fluid" alt="">
										</a>
										<div class="overlay-music-icon">
											<a href="music-player.html"> <i
												class="las la-play-circle"></i>
											</a>
										</div>
									</div>
									<div class="feature-list text-center">
										<h6 class="font-weight-600 mb-0">Grace</h6>
									</div>
								</li>
								<li class="col-lg-2  iq-music-box">
									<div class="iq-thumb-artist">
										<div class="iq-music-overlay"></div>
										<a href="music-player.html"> <img
											src="images/dashboard/feature-album-artist/08.png"
											class="w-100 img-fluid" alt="">
										</a>
										<div class="overlay-music-icon">
											<a href="music-player.html"> <i
												class="las la-play-circle"></i>
											</a>
										</div>
									</div>
									<div class="feature-list text-center">
										<h6 class="font-weight-600  mb-0">Courtney</h6>
									</div>
								</li>
								<li class="col-lg-2  iq-music-box">
									<div class="iq-thumb-artist">
										<div class="iq-music-overlay"></div>
										<a href="music-player.html"> <img
											src="/palette/resources/images/dashboard/realease-song/iu3.jpg"
											class="w-100 img-fluid" alt="">
										</a>
										<div class="overlay-music-icon">
											<a href="music-player.html"> <i
												class="las la-play-circle"></i>
											</a>
										</div>
									</div>
									<div class="feature-list text-center">
										<h6 class="font-weight-600 mb-0">Billie Eilish</h6>
									</div>
								</li>
								<li class="col-lg-2  iq-music-box">
									<div class="iq-thumb-artist">
										<div class="iq-music-overlay"></div>
										<a href="music-player.html"> <img
											src="/palette/resources/images/dashboard/realease-song/iu3.jpg"
											class="w-100 img-fluid" alt="">
										</a>
										<div class="overlay-music-icon">
											<a href="music-player.html"> <i
												class="las la-play-circle"></i>
											</a>
										</div>
									</div>
									<div class="feature-list text-center">
										<h6 class="font-weight-600  mb-0">Normani</h6>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>

			</div>
		</div>

		﻿<%@ include file="main-Footer.jspf"%>
	</div>
<script>
function setTrackList() {
	track_list = ${track_list};
	loadTrack(0);
}

function setMusic(music_num) {
		track_list = ${track_list};
	for(var i in track_list) {
		if(track_list[i].MUSIC_NUM == music_num){
			loadTrack(i);
			track_index = i;
			playTrack();
			break;
		}
	}
}
</script>

</body>
</html>
