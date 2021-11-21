<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>SOUND PALETTE</title>

</head>
<body>
	<%@ include file="../main/main-top.jspf"%>

	<!-- Page Content  -->
	<div id="content-page" class="content-page"
		style="padding-bottom: 20px;">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-12 col-lg-6" style="min-width: 100%;">
					<!-- 테스트 -->
					<div class="iq-card">
						<div class="iq-card-header d-flex justify-content-between">
							<div class="iq-header-title">
								<h4 class="card-title">${map.MRB_TITLE}</h4>
							</div>
							<div>
								<c:choose>
									<c:when test="${map.HIT_DEL == 'Y'}">

										<img style="width: 25px" id="like_img"
											src="/palette/resources/images/like/unlike.png">
										&nbsp;
									</c:when>
									<c:otherwise>
										<img style="width: 25px" id="like_img"
											src="/palette/resources/images/like/like.png">
										</a>&nbsp;
									</c:otherwise>
								</c:choose>
								<button type="button" class="btn btn-primary active mb-1"
									data-toggle="modal" data-target="#exampleModal">
									<i class="las la-bell"></i>신고하기
								</button>
								<button type="button" class="btn btn-primary active mb-1"
									onclick="location.href='/palette/SOPA/mrbList'">목록으로</button>
								<button type="button" class="btn btn-primary active mb-1"
									onclick="location.href='/palette/SOPA/mrbUpdateForm?MRB_NUM=${map.MRB_NUM}'">글수정</button>
								<button type="button" class="btn btn-primary active mb-1"
									onclick="location.href='/palette/SOPA/mrbDelete?MRB_NUM=${map.MRB_NUM}'">삭제</button>
							</div>
						</div>
						<table class="table">
							<thead>
								<tr>
									<th scope="col" width="15%">글 번호 : ${map.MRB_NUM}</th>
									<th scope="col" width="15%">글작성자 : ${map.MEM_NICK}</th>
									<th scope="col" width="15%">글작성일 : ${map.MRB_DATE }</th>
									<th scope="col" width="8%" id="like_cnt"><i
										class="ri-heart-line" style="padding-left: 5px"></i> :
										${map.COUNTHIT}</th>
									<th scope="col" width="10%">조회수 : ${map.MRB_CNT}</th>
								</tr>
							</thead>

							<tbody>
								<td colspan="2" >
									<div class="iq-thumb-artist" style="width: 50%;">
										<div class="iq-music-overlay" ></div>
										<a href="music-player.html"> <img
											src="/palette/resources/images/dashboard/realease-song/iub.jpg" class="w-100 img-fluid"
											alt="">
										</a>
										<div class="overlay-music-icon">
											<a href="music-player.html"> <i
												class="las la-play-circle"></i>
											</a>
										</div>
									</div>
								</td>

								<td colspan="3">
									<div class="form-group">
										<label for="exampleInputText1">노래 제목 :
											${map.MRB_TITLE}</label>

									</div>
									<div class="form-group">
										<label for="exampleInputEmail3">가수 : ${map.MRB_ART}</label>

									</div>
									
									<div class="form-group">
										<label>내용 : ${map.MRB_CON}</label>
									</div>
								</td>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="iq-card">
			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">

						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">신고하기</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							신고 사유를 선택해주세요! <br /> 여러 사유에 해당되는 경우, 대표적인 사유 1개를 선택해 주세요.
							<form action="/palette/SOFA/mrbRep" style="padding-left: 10%">
								<div>
									<input type="checkbox" id="customCheck1" class="custom-control-input" name="rep" value="부적절한 홍보 게시글">
									<label class="custom-control-label" for="customCheck1">부적절한
										홍보 게시글</label> <br />
								</div>
								<div>
									<input type="checkbox" id="customCheck2"
										class="custom-control-input" name="rep"
										value="음란성 또는 청소년에게 부적합한 내용"> <label
										class="custom-control-label" for="customCheck2"> 음란성
										또는 청소년에게 부적합한 내용</label> <br />
								</div>
								<div>
									<input type="checkbox" id="customCheck3"
										class="custom-control-input" name="rep"
										value="명예훼손/사생활 침해 및 저작권침해등"> <label
										class="custom-control-label" for="customCheck3">
										명예훼손/사생활 침해 및 저작권침해등</label> <br />
								</div>
								<div>
									<input type="checkbox" id="customCheck4"
										class="custom-control-input" name="rep" value="불법촬영물등 신고">
									<label class="custom-control-label" for="customCheck4">
										불법촬영물등 신고</label>
								</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">취소</button>
							<button type="button" class="btn btn-primary"
								data-dismiss="modal" id="btn_rep">신고하기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		</form>

		<div class="iq-card">
			<div class="iq-card-header d-flex justify-content-between">
				<div class="iq-header-title">
					<h4 class="card-title">댓글</h4>
				</div>
			</div>
			<div class="iq-card-body">
				<table align="center" style="width: 100%" class="table">
					<form action="/palette/SOPA/mrbDetail/cmtWrite" method="POST">
						<input type="hidden" name="MRB_NUM" value="${map.MRB_NUM}" />
						<tr>
							<div>
								<td colspan="1" align="center" style="width: 10%; padding-left: 20px;">
									<a href="#" style="" class="search-toggle iq-waves-effect d-flex align-items-center">
										<img src="/palette/resources/images/${sessionScope.IMG_NAME}" style="width: 100px;" class="img-fluid rounded-circle" alt="user">
									</a>
								</td>
							</div>
							<td colspan="5" style="width: 60%">
								<div class="form-group">
									<label for="exampleFormControlTextarea1"></label>
									<textarea class="form-control" id="exampleFormControlTextarea1"
										rows="2" cols="130" placeholder="댓글 내용을 입력해주세요."
										name="CMT_CON"></textarea>
								</div>
							</td>
							<td colspan="2" style="padding-left: 25px; width: 15%">
								<button type="submit" class="btn btn-primary"
									style="width: 100px">댓글등록</button>
							</td>
						</tr>
					</form>
					<c:forEach var="row" items="${list}" varStatus="status">
						<tr align=left>
							<td>${status.count}<img src="/palette/resources/images/user/11.png" style="width: 80px; height: 80px; margin-left: 30px" class="img-fluid rounded-circle" alt="user"></td>
							<td colspan=5>
								<div class="card iq-mb-3 border-primary">
									<div class="card-body text-primary" id="listReplay">
										<p>${row.MEM_NICK}&nbsp; ${row.CMT_DATE}
										<p>
										<p class="card-text" style="color: #000000;">${row.CMT_CON}</p>
									</div>
								</div>
							</td>
							<td align=center colspan=4 style="padding-left: 50px;">
								<!-- 삭제 --> 
								<form action="/palette/SOPA/mrbDetail/cmtDelete" method="POST" id="cmtdel">
								<input type="hidden" name="CMT_NUM" value="${row.CMT_NUM}">
								<i class="las la-bell" data-toggle="modal" data-target="#exampleModal2" style="font-size: 30px; color: #ff4545;"></i>&nbsp; 
								<a href="#" onclick="document.getElementById('cmtdel').submit();"><i class="fa fa-trash" style="font-size: 30px; color: #ff4545;" aria-hidden="true"></i></a> 
								</form>
								<!-- Modal -->
								<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel">댓글신고</h5>
												<button type="button" class="close" data-dismiss="modal" aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body" style="text-align: left;">
												신고 사유를 선택해주세요! <br />여러 사유에 해당되는 경우, 대표적인 사유 1개를 선택해 주세요.
													<div class="custom-control custom-checkbox custom-control-inline">
														<input type="checkbox" class="custom-control-input" id="customCheck5" name="cmtrep" value="부적절한 홍보 댓글">
														<label class="custom-control-label" for="customCheck5">부적절한 홍보 댓글</label>
													</div><br>
													<div class="custom-control custom-checkbox custom-control-inline">
														<input type="checkbox" class="custom-control-input" id="customCheck6" name="cmtrep" value="음란성 또는 청소년에게 부적합한 내용">
														<label class="custom-control-label" for="customCheck6">음란성 또는 청소년에게 부적합한 내용</label>
													</div><br>
													<div class="custom-control custom-checkbox custom-control-inline">
														<input type="checkbox" class="custom-control-input" id="customCheck7" name="cmtrep" value="명예훼손/사생활 침해 및 저작권침해">
														<label class="custom-control-label" for="customCheck7">명예훼손/사생활 침해 및 저작권침해</label>
													</div><br>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
												<button type="button" class="btn btn-primary" data-dismiss="modal" name="${row.CMT_NUM}" id="btn_cmtRep${row.CMT_NUM}" onclick="btn_cmtRep(this.id);">신고하기</button>
											</div>
										</div>
									</div>
								</div>

							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>

	<!-- Page Footer -->
	<%@ include file="../main/main-Footer.jspf"%>

<script>
//좋아요 기능구현
var btn_like = document.getElementById("like_img");
btn_like.onclick = function(){ like_func(); }

function like_func() {
	
	var MRB_NUM = ${map.MRB_NUM};
	var MEM_NUM = ${map.MEM_NUM};
	console.log("MRB_NUM, MEM_NUM : " + MRB_NUM +","+ MEM_NUM);
	
	

	
	$.ajax({
	    url: "/palette/SOPA/mrbHit",
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
	
//게시글 신고
var btn_rep = document.getElementById("btn_rep");
btn_rep.onclick = function(){ rep_func(); }


function rep_func() {
    var rep_con = [];
    var len = $("input[name='rep']:checked").length;

        $("input[name='rep']:checked").each(function(e){
            var value = $(this).val();
            rep_con.push(value);
        })

    $.ajax({
        url: "/palette/SOPA/mrbRep",
        type: "POST",
        cache: false,
        dataType: "json",
        data: "MRB_NUM="+${map.MRB_NUM}+"&MEM_NUMED="+${map.MEM_NUM}+"&REP_CON="+rep_con+"&MEM_NICK=${sessionScope.MEM_NICK}",
        success: function(data) {

        },
        error: function(request, status, error){
          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
        }
      });

}

//댓글 신고
function btn_cmtRep(id) {
    var rep_con = [];
    var len = $("input[name='cmtrep']:checked").length;
    let cmtNum = $("#"+id).attr('name');

        $("input[name='cmtrep']:checked").each(function(e){
            var value = $(this).val();
            rep_con.push(value);
        })

    $.ajax({
        url: "/palette/SOPA/mrbDetail/cmtRep",
        type: "POST",
        cache: false,
        dataType: "json",
        data: "MEM_NUMED="+${map.MEM_NUM}+"&REP_CON="+rep_con+"&MEM_NICK=${sessionScope.MEM_NICK}"+"&CMT_NUM="+cmtNum,
        success: function(data) {

        },
        error: function(request, status, error){
          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
        }
      });

}


</script>


</body>
</html>