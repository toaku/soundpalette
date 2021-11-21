<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>SOUND PALETTE</title>

﻿
</head>
<body>
	<%@ include file="../main/main-top.jspf"%>

	<!-- Page Content  -->
	<div id="content-page" class="content-page">
	<form action="/palette/SOPA/mrbUpdate" method="POST">
	<input type="hidden" name="MRB_NUM" value="${map.MRB_NUM}">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-12 col-lg-6" style="min-width: 100%;">
					<!-- 테스트 -->
					<div class="iq-card">
						<div class="iq-card-header d-flex justify-content-between">
							<div class="iq-header-title">
								<h4 class="card-title">글 수정하기</h4>
							</div>
						</div>
						
						<table class="table">
							<tbody>
								<td colspan="2" style="width: 50%;">
									<div class="iq-card">
										<div class="iq-card-body">
											<div class="iq-thumb-artist" style=" width: 50%;">
										<div class="iq-music-overlay"></div>
											<a href="music-player.html">
												<img src="/palette/resources/images/dashboard/realease-song/iub.jpg" class="w-100 img-fluid" alt="">
											</a>
										<div class="overlay-music-icon">
											<a href="music-player.html"> 
												<i class="las la-play-circle"></i>
											</a>
										</div>
									</div>
										</div>
									</div>
								</td>

								<td colspan="3"> 
									<div class="form-group row">
										<label class="control-label col-sm-2 align-self-center mb-0" for="title" style="font-size: 18px;">제목 : </label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="title" name="MRB_TITLE" value="${map.MRB_TITLE}" placeholder="" style="margin-left: -40px;">
										</div>
									</div>
									<div class="form-group row">
										<label class="control-label col-sm-2 align-self-center mb-0" for="artist" style="font-size: 18px;">가수 : </label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="artist" name="MRB_ART" value="${map.MRB_ART}" placeholder="" style="margin-left: -40px;">
										</div>
									</div>
									

								</td>
							</tbody>
						</table>

					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-12 col-lg-6" style="min-width: 100%;">
			<div class="iq-card">
				<div class="iq-card-body">
					<div class="form-group">
						<label for="exampleFormControlTextarea1">글 내용</label>
						<textarea class="form-control" id="exampleFormControlTextarea1" name="MRB_CON" rows="5">${map.MRB_CON}</textarea>
					</div>
					<div class="form-group" style="text-align: right;">
						<input type="submit" class="btn btn-primary" class="btn mb-1 btn-primary" value="수정">
						&nbsp;&nbsp;
						<button type="button" class="btn iq-bg-danger" onclick="location.href='/palette/SOPA/mrbList' " class="btn mb-1 btn-primary">취소</button>
					</div>
				</div>
			</div>
			</div>
			</form>
		</div>
		<!-- 끝 -->
		<!-- Page Footer -->
		<%@ include file="../main/main-Footer.jspf"%>
		
</body>
</html>