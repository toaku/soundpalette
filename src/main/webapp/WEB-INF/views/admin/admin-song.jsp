<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>SOUND PALETTE</title> ﻿
</head>
<body>
	<%@ include file="../main/main-top.jspf"%>

	<!-- Page Content  -->
	<div id="content-page" class="content-page">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-12">
					<div class="iq-card">
						<div class="iq-card-header d-flex justify-content-between">
							<div class="iq-header-title">
								<h4 class="card-title">관리자 플레이리스트</h4>
							</div>


						</div>
						<div class="iq-card-body">
							<div class="table-responsive">
								<table class="data-tables table table-striped table-bordered" style="width: 100%">
									<thead>
										<tr style="text-align: center;">
											<th style="width: 5%;">NO</th>
											<th style="width: 5%;">Image</th>
											<th style="width: 15%;">PlayList Title</th>
											<th style="width: 10%;">Total Song</th>
											<th style="width: 10%;">Create Date</th>
											<th style="width: 10%;">Action</th>
										</tr>
									</thead>
									<tbody align="center">
										<c:forEach var="value" items="${list}" varStatus="status">
											<tr>
												<td>${status.count}</td>
												<td><img src="/palette/resources/images/dashboard/feature-album/playList.jpg" class="img-fluid avatar-50 rounded" alt="author-profile"></td>
												<td><a href="/palette/SOPA/myPage/playList?PLAY_NUM=${value.PLAY_NUM}">${value.PLAY_TITLE}</a></td>
												<td>${value.COUNTPIM}곡</td>
												<td>2019.09.30</td>
												<td>
													<div class="flex align-items-center list-user-action">
														<a class="bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="메인에 추가" href="/palette/SOPA/admin/addMain?PLAY_NUM=${value.PLAY_NUM}&PLAY_MAIN=Y"><i class="ion-plus-circled"></i></a> <a class="bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="삭제" href="#"><i class="ri-delete-bin-line"></i></a>
													</div>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-12">
				<div class="iq-card">
					<div class="iq-card-header d-flex justify-content-between align-items-center">
						<div class="iq-header-title">
							<h4 class="card-title">메인화면 리스트</h4>
						</div>
						<div id="feature-album-slick-arrow" class="slick-aerrow-block"></div>
					</div>
					<div class="iq-card-body">
						<ul class="list-unstyled row  feature-album iq-box-hover mb-0">
							<c:forEach var="main" items="${mainList}">
							<li class="col-lg-2  iq-music-box" style="width: 100px; margin:15px;" >
								<div class="iq-card mb-0" style="width: 100px;" >
									<div class="iq-card-body p-0">
										<div class="iq-thumb">
											<div class="iq-music-overlay"></div>
											<a href="/palette/SOPA/myPage/playList"> <img src="/palette/resources/images/${main.IMG_NAME}" class="img-border-radius img-fluid w-100" alt="">
											</a>
											<div class="overlay-music-icon">
												<a href="#this"> <i class="fa fa-trash"></i>
												</a>
											</div>
										</div>
										<div class="feature-list text-center">
											<h6 class="font-weight-600 mb-0">Doja Cat</h6>
											<p class="mb-0">${main.PLAY_TITLE}</p>
										</div>
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
	</div>
	<!-- Wrapper END -->
	<%@include file="../main/main-Footer.jspf"%>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->


</body>
</html>