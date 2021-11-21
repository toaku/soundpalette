<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>SOUND PALETTE</title>


<script>
   function selectAll(selectAll)  {
	   const checkboxes 
	      = document.querySelectorAll('input[type="checkbox"]');
	   
	   checkboxes.forEach((checkbox) => {
	     checkbox.checked = selectAll.checked
	   })
	 }
   </script>
</head>
<body>
	<%@ include file="../main/main-top.jspf"%>

	<!-- Page Content  -->
	<div id="content-page" class="content-page">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="iq-card">
						<div class="iq-card-body">
							<div class="row">
								<div class="col-lg-4">
									<img src="/palette/resources/images/page-img/0.jpg" " class="rounded ml-3" alt="Responsive image" style="width: 80%;">
								</div>
								<div class="col-lg-8">
									<div class="d-flex align-items-top justify-content-between iq-music-play-detail">
										<div class="music-detail">
											<h3>${map.PLAY_TITLE}</h3>
											<p>${map.CM}곡</p>
											<div class="d-flex align-items-center">
												<a href="javascript:setTrackList();" class="btn btn-primary iq-play mr-2">재생</a>
												<button type="button" class="btn btn-primary rmt-2" data-toggle="modal" data-target="#exampleModalCenteredScrollable">추가</button>
											</div>
										</div>
										<div class="music-right">
											<div class="d-flex align-items-center">
												<div class="iq-circle mr-2">
													<a href="javascript:void();"><i class="ri-heart-fill  text-primary"></i></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>



		<table class="table">
			<thead align="center">
				<tr>
					<th scop="col" width="10%">
						<div class="custom-control custom-checkbox custom-control-inline" style="padding-top: 6px">
							<input type="checkbox" class="custom-control-input" id="customCheck_All" onclick="selectAll(this)"> <label class="custom-control-label" for="customCheck_All"></label>
						</div>
					</th>
					<th scope="col" width="5%">No</th>
					<th scope="col" width="10%">이미지</th>
					<th scope="col" width="25%">곡명</th>
					<th scope="col" width="10%">재생시간</th>
					<th scope="col" width="10%">아티스트</th>
					<th scope="col" width="5%">좋아요</th>
					<th scople="col" width="5%">듣기</th>
					<th scople="col" width="12%">순서</th>
					<th scople="col" width="8%">삭제</th>
				</tr>
			</thead>
			<tbody align="center">
			<c:forEach var="value" items="${list}">
				<tr>
					<th>
						<div class="custom-control custom-checkbox custom-control-inline" style="padding-top: 6px">
							<input type="checkbox" class="custom-control-input" id="customCheck_1"> <label class="custom-control-label" for="customCheck_1"></label>
						</div>
					</th>
					<td scope="row">1</td>
					<td><img src="/palette/resources/images/dashboard/realease-song/0.jpg" " class="img-fluid avatar-50 rounded" alt="author-profile"></td>
					<td>${value.MUSIC_TITLE}</td>
					<td>3:29</td>
					<td>${value.MUSIC_ART}</td>
					<td>
						<div>
							<a class="iq-icons-list" href="#"><i class="ion-heart" style="padding-top: 10px"></i></a>
						</div>
					</td>
					<td>
						<div>
							<a class="iq-icons-list" href="#" onclick="setMusic(this.id);" id="${value.MUSIC_NUM}"><i class="ion-play" style="padding-top: 10px"></i></a>
						</div>
					</td>
					<td><a class="iq-icons-list" href="#">
							<div data-icon="n" class="icon"></div>
					</a> <a class="iq-icons-list" href="#">
							<div data-icon="k" class="icon"></div>
					</a></td>
					<td>
						<div>
							<a class="iq-icons-list" href="#" onclick="confirm('삭제 하시겠습니까?')"><i class="ion-close-circled" style="padding-top: 10px"></i></a>
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
	<!-- Wrapper END -->
	<!-- color-customizer -->


	<%@ include file="../main/main-Footer.jspf"%>
	<div id="exampleModalCenteredScrollable" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenteredScrollableTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-scrollable modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenteredScrollableTitle">음악 검색</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<div style="text-aling: left;">
						<select class="form-control" id="searchRef" style="width: 82px; padding: 0; font-size: 14px; display: inline-block;">
							<option selected>제목</option>
							<option>아티스트</option>
						</select> <input type="text" class="form-control" id="searchText" placeholder="내용을 입력해주세요" style="display: inline-block; width: 80%;">
						<table id="musicList">
							<tr>
								<th>아티스트</th>
								<th style="padding: 5px;">제목</th>
							</tr>
						</table>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
					<button type="button" class="btn btn-primary" id="searchBtn">검색</button>
				</div>
			</div>
		</div>
	</div>
	<script>
	var searchBtn = document.getElementById("searchBtn");
	searchBtn.onclick = function() {
		var selected = $("#searchRef option:selected").val();
		var searchText = $("#searchText").val();
		
		$.ajax(
		{
			type:"POST",
			url:"/palette/SOPA/myPage/searchMusic",
			data: "selected="+selected+"&searchText="+searchText,
			dataType: "json",
			success: function(data) {
				const table = document.getElementById('musicList');
				var tableLength = table.rows.length;
				for(var i=0; i <= tableLength; i++) {
					if(table.rows.length == 1) {
						break;
					}
					table.deleteRow(-1);
				}
				for(var i in data.list) {
					const newRow = table.insertRow();
					
					const newCell1 = newRow.insertCell(0);
					const newCell2 = newRow.insertCell(1);
					
					newCell2.style = "padding:5px;";
					
					newCell1.innerText = data.list[i].MUSIC_ART;
					newCell2.innerHTML = "<a href='/palette/SOPA/myPage/addMusic?PLAY_NUM=${map.PLAY_NUM}&MUSIC_NUM="+data.list[i].MUSIC_NUM+"' >" + data.list[i].MUSIC_TITLE + "</a>";
			};
			if(table.rows.length == 1) {
				alert("조회된 음악이 없습니다");
			};
			},
			error: function(request, status, error){
	          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	        }
		})
	};
	
	function setTrackList() {
		track_list = ${track_list};
		loadTrack(0);
	}
	
	function setMusic(music_num) {
		var music_list = ${track_list};
		for(var i in music_list) {
			if(music_list[i].MUSIC_NUM == music_num){
				track_list = [music_list[i]];
				loadTrack(0);
				break;
			}
		}
	}
</script>
</body>
</html>