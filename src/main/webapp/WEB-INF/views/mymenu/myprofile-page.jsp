<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>SOUND PALETTE</title>
<script src="http://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>

<script type="text/javascript">
	function fn_deleteMember() {
		if (confirm("정말 탈퇴하시겠습니까?") == true) {

			$("#memberForm").submit();
			alert("탈퇴 되었습니다.");
		}
	}
</script>
<script>
	function check() {

		var nick = $('#MEM_NICK').val();
		var pw = $('#MEM_PW').val();

		if (nick == "") {
			alert("닉네임을 입력하세요");
			MEM_NICK.focus();
			location.href = "/palette/SOPA/myPage"
			return 0;
		}

		else if (pw == "") {
			alert("비밀번호를 입력하세요");
			MEM_PW.focus();
			return false;
		}

		/*  else if (${MEM_PW}.val() == "${palette.userDetail}") {
		 alert("현재 비밀번호가 같습니다. 다른 비밀번호를 입력해주세요.");
		 return false;
		 }
		 */
		alert("수정되었습니다.");
		return true;
	}

	$(document).ready(
			function() {
				$('#MEM_NICK').on(
						"propertychange change keyup paste input",
						function() {
							var nick = $('#MEM_NICK').val();
							var list = new Array();
							var alpha = ("${sessionScope.MEM_NICK}" == $(
									'MEM_NICK').val());
							console.log(nick);
							<c:forEach var="row" items="${list01}">
							list.push("${row.MEM_NICK}");
							</c:forEach>
							if (list.includes(nick)) {
								$('#MEM_NICKW').text(" 사용중인 닉네임입니다. ");
								$('#MEM_NICKW').css("color", "red");
								$('#MEM_NICKW').css("font-size", "9pt");
								$('#MEM_NICKW').css("font-weight", "bold");
								$('#MEM_NICK').attr("check", "0");

							} else {
								$('#MEM_NICKW').text(" 사용 가능한 닉네임입니다. ");
								$('#MEM_NICKW').css("color", "green");
								$('#MEM_NICKW').css("font-size", "9pt");
								$('#MEM_NICKW').css("font-weight", "bold");
								$('#MEM_NICK').attr("check", "1");
							}
						});
			});
	var myt_like = document.getElementById("like_img");
	myt_like.onclick = function(){ like_func(); }

	function like_func() {
		
		var MRB_NUM = ${map.MRB_NUM};
		var MEM_NUM = ${map.MEM_NUM};
		console.log("MRB_NUM, MEM_NUM : " + MRB_NUM +","+ MEM_NUM);
		
		

		
		$.ajax({
		    url: "/palette/SOPA/myHit",
		    type: "POST",
		    cache: false,
		    dataType: "json",
		    /* "MRB_NUM="+MRB_NUM+"&MEM_NUM="+MEM_NUM, */
		    /* 'MRB_NUM=' + ${map.MRB_NUM}, 'MEM_NUM=' + ${map.MEM_NUM} */
		    data: "MRB_NUM="+${map.MRB_NUM}+"&MEM_NUM="+${sessionScope.MEM_NUM},
		    success: function(data) {
		      var like_img = '';
		      
		      if(data.HIT_DEL == 'Y'){
		        like_img = "/palette/resources/images/like/unlike.png";
		      } else {
		        like_img = "/palette/resources/images/like/like.png";
		      }      
		      $('#like_img').attr('src', like_img);
		      $('#like_cnt').html('<i class="ri-heart-line" style="padding-left: 5px"></i> : '+data.COUNTHIT);
		    },
		    error: function(request, status, error){
		      alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		    }
		  });
		}
</script>

</head>
<body>
	<%@ include file="../main/main-top.jspf"%>

	<div id="content-page" class="content-page">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="iq-card">
						<div class="iq-card-body p-0">
							<div class="iq-edit-list">
								<ul class="iq-edit-profile d-flex nav nav-pills">
									<li class="col-md-3 p-0"><a class="nav-link active"
										data-toggle="pill" href="#personal-information"> 내정보 </a></li>
									<li class="col-md-3 p-0"><a class="nav-link"
										data-toggle="pill" href="#chang-pwd"> 좋아요 한 글 </a></li>
									<li class="col-md-3 p-0"><a class="nav-link"
										data-toggle="pill" href="#emailandsms"> 좋아요 한 음악 </a></li>
									<li class="col-md-3 p-0"><a class="nav-link"
										data-toggle="pill" href="#manage-contact" id="btn_mymrb">
											내가 쓴 글 </a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="iq-edit-list-data">
						<div class="tab-content">
							<div class="tab-pane fade active show" id="personal-information"
								role="tabpanel">
								<form id="frm" name="frm" action="/palette/SOPA/file/upload"
									enctype="multipart/form-data" method="post">
									<div class="iq-card">
										<div class="iq-card-header d-flex justify-content-between">
											<div class="iq-header-title">
												<h4 class="card-title">내정보 보기/수정</h4>
											</div>
										</div>
										<div id="content-page" class="content-page" align="center">
											<div class="container-fluid">
												<div class="center">
													<div class="col-md-12" style="margin-left: -60%;">
														<div class="profile-img-edit" style="margin-bottom: -20%;">
															<img class="profile-pic"
																src="/palette/resources/images/${map.IMG_NAME}"
																alt="profile-pic">
															<div class="p-image">
																<i class="ri-pencil-line upload-button"></i> <input
																	class="file-upload" type="file" accept="image/*"
																	name="file" /> <input type="submit"
																	class="btn btn-primary mr-2"
																	style="margin-left: -333%; margin-top: 100%;"
																	value="프로필 변경하기" />
															</div>
														</div>
													</div>
								</form>

								<form id="memberForm" action="/palette/SOPA/myPage/myInfoDelete"
									method="post">
									<div id="frm" class="center align-items-center">
										<div class="form-group col-sm-3" style="display: -webkit-box;">
											<label for="fname"
												style="margin-left: 4px; padding-top: 8px;">이름:</label> <input
												type="text" class="form-control" name="MEM_NAME"
												value="${MEM_NAME}" readonly style="margin-left: 15%;">
										</div>
										<div class="form-group col-sm-3" style="display: -webkit-box;">
											<label for="lname" style="margin-left: px; padding-top: 7px;">Email:</label>
											<input type="text" class="form-control" name="MEM_EMAIL"
												value="${MEM_EMAIL}" readonly style="margin-left: 8.4%;">
										</div>
										<div class="form-group col-sm-3" style="display: -webkit-box;">
											<label for="uname"
												style="margin-left: 1px; padding-top: 7px;">닉네임:</label> <input
												type="text" class="form-control" name="MEM_NICK"
												id="MEM_NICK" value="${MEM_NICK}" style="margin-left: 9.5%;">
											<br> <label for="uname" id="MEM_NICKW"></label>
										</div>
										<div class="form-group col-sm-3" style="display: -webkit-box;">
											<label for="dob" style="margin-left: -2px; padding-top: 7px;">생년월일:</label>
											<input type="date" class="form-control" name="MEM_BIRTH"
												value="${MEM_BIRTH}" readonly style="margin-left: 3.6%;">
										</div>
										<div class="form-group col-sm-3" style="display: -webkit-box;">
											<label for="uname"
												style="margin-left: -2px; padding-top: 7px;">비밀번호:</label> <input
												type="text" class="form-control" name="MEM_PW" id="MEM_PW"
												value="${MEM_PW}" style="margin-left: 3.6%;">
										</div>
									</div>
									<input type="hidden" id="MEM_NUM" name="MEM_NUM"
										value="${sessionScope.MEM_NUM}"> <input type="submit"
										formaction="/palette/SOPA/myPage/modify" onclick="check();"
										class="btn btn-primary mr-2"
										style="margin-left: 18%; margin-top: 10px" value="수정하기"></input>

									<button type="button" class="btn iq-bg-danger"
										onclick="fn_deleteMember();" style="margin-top: 10px">탈퇴하기</button>

								</form>

							</div>

						</div>

					</div>
				</div>
			</div>
			<div class="tab-pane fade" id="chang-pwd" role="tabpanel">
				<div class="iq-card">
					<div class="iq-card-header d-flex justify-content-between">
						<div class="iq-header-title">
							<h4 class="card-title">좋아요 한 글</h4>
						</div>
					</div>
					<div class="iq-card-body">
						<form>
							<div class="iq-card">
								<!--<div class="iq-card-header d-flex justify-content-between">
													<div class="iq-header-title">
														<h4 class="card-title">Table Head Options</h4>
													</div>
												</div>-->
								<div class="iq-card-body">
									<p></p>
									<div class="table-responsive">
										<table class="data-tables table table-striped table-bordered">
											<thead class="table" align="center">
												<tr>
													<th scope="col">번호</th>
													<th scope="col">제목</th>
													<th scope="col">작성자</th>
													<th scope="col">날짜</th>
													<th scope="col">좋아요</th>
													<th scope="col">조회수</th>
												</tr>
											</thead>
											<tbody align="center">
												<c:forEach items="${list2}" var="mon">
													<tr>
														<td>${mon.MRB_NUM}</td>
														<td><a
															href="/palette/SOPA/mrbDetail?MRB_NUM=${mon.MRB_NUM}"
															name="title">${mon.MRB_TITLE }</a></td>
														<td>${mon.MEM_NICK}</td>
														<td>${mon.MRB_DATE}</td>
														<td><c:choose>
																<c:when test="${sessionScope.HIT_DEL == 'Y'}">
																	<img style="width: 25px" id="like_img" src="/palette/resources/images/like/unlike.png">
																	&nbsp;</c:when>
																<c:otherwise>
																	<img style="width: 25px" id="like_img" src="/palette/resources/images/like/like.png">
																	&nbsp;</c:otherwise>
															</c:choose></td>
														<td>${mon.MRB_CNT}</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="tab-pane fade" id="emailandsms" role="tabpanel">
				<div class="iq-card">
					<div class="iq-card-header d-flex justify-content-between">
						<div class="iq-header-title">
							<h4 class="card-title">좋아요 한 음악</h4>
						</div>
					</div>
					<div class="iq-card-body">
						<form>
							<div class="iq-card">
								<div class="iq-card-body">
									<p></p>
									<div class="table-responsive">
										<table class="data-tables table table-striped table-bordered">
											<thead class="table" align="center">
												<tr>
													<th scope="col">번호</th>
													<th scope="col">이미지</th>
													<th scope="col">제목</th>
													<th scope="col">가수</th>
													<th scope="col">좋아요</th>
													<th scope="col">삭제</th>
												</tr>
											</thead>
											<tbody align="center">
												<tr>
													<th scope="row">1</th>
													<td class="text-center"><img
														class="rounded img-fluid avatar-40"
														src="images/user/01.jpg" alt="profile"></td>
													<td></td>
													<td></td>
													<td><a class="iq-icons-list" href="#"><i
															class="ion-heart"
															style="margin-top: 45%; margin-left: 10%;"></i></a></td>
													<td>
														<div class="flex align-items-center list-user-action">
															<a class="bg-primary" data-toggle="tooltip"
																data-placement="top" title=""
																data-original-title="Delete" href="#"><i
																class="ri-delete-bin-line"></i></a>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
					</div>
				</div>
				</form>
			</div>
			<div class="tab-pane fade" id="manage-contact" role="tabpanel">
				<div class="iq-card">
					<div class="iq-card-header d-flex justify-content-between">
						<div class="iq-header-title">
							<h4 class="card-title">내가 쓴 글</h4>
						</div>
					</div>
					<div class="iq-card-body">
						<form>
							<div class="iq-card">

								<div class="iq-card-body">
									<p></p>
									<div class="table-responsive">
										<table class="data-tables table table-striped table-bordered">
											<thead class="thead-dark" align="center">
												<tr>
													<th scope="col">번호</th>
													<th scope="col">제목</th>
													<th scope="col">가수</th>
													<th scope="col">작성자</th>
													<th scope="col">좋아요</th>
												</tr>
											</thead>
											<tbody align="center">
												<c:forEach items="${list}" var="row">
													<tr>
														<td>${row.MRB_NUM}</td>
														<td><a
															href="/palette/SOPA/mrbDetail?MRB_NUM=${row.MRB_NUM}"
															name="title">${row.MRB_TITLE }</a></td>
														<td>${row.MRB_ART}</td>
														<td>${row.MEM_NICK}</td>
														<td>${row.COUNTHIT}</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	<%@ include file="../main/main-Footer.jspf"%>


</body>
</html>