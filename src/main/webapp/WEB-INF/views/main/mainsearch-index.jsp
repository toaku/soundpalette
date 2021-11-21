<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
<%@ include file="main-top.jspf"%>

  
     
      <!-- Page Content  -->
      <div id="content-page" class="content-page">
			<div class="iq-card">
				<div class="iq-card-header d-flex justify-content-between">
					<div class="iq-header-title">
						<h4 class="card-title">검색결과</h4><br/>
						<p>'아이유'에 대한 곡 검색 결과입니다.</p>
					</div>
				</div>
				<div class="iq-card-body">
					
                </div>
					<table class="table">
						<thead align="center">
							<tr>
								<th scop="col" style="width:5%" align="center">
									<div class="custom-control custom-checkbox custom-control-inline" style="padding-top: 6px;">
                              			<input type="checkbox" style="padding-top: 6px;"data-toggle="modal" data-target=".bd-example-modal-sm" class="custom-control-input" id="customCheck_All" name="song" value="selectAll" onclick="selectAll(this)">
                             			<label class="custom-control-label" for="customCheck_All"></label>
                             			<div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog"  aria-hidden="true">
                    						<div class="modal-dialog modal-sm">
                        						<div class="modal-content" style="margin-top: 50%">
                            						<div class="modal-header" style="border-radius: 5px;">
                            							<span style="position: absolute; left: 14px; top:-23px; display: block; min-width: 11px; height: 37px; padding: 0 13px; border-radius: 20px; border: 2px solid #FF4545; background-color: #fff; color: #FF4545; font-size: 16px; font-weight: 700; line-height: 38px; text-align: center">1</span>
                                 							<button type="button" class="btn btn-primary mb-1"><i class="ri-heart-fill pr-0"></i><br>
                                 								선택해제
                                 							</button>&nbsp;&nbsp;
                                 							<button type="button" class="btn btn-primary mb-1"><i class="las la-play"></i><br>
                                 								듣기
                                 							</button>&nbsp;&nbsp;
                                 							<button type="button" class="btn btn-primary mb-1"><i class="las la-tasks"></i><br>
                                 								재생목록
                                 							</button>&nbsp;&nbsp;
                                 							<button type="button" class="btn btn-primary mb-1"><i class="ion-plus-circled"></i><br>
                                 								내리스트
                                 							</button>
                        									
                              						</div>
                            					</div>
                        					</div>
                    					</div>
                           			</div>
                             	</th>
								<th scope="col" style="width:5%">No</th>
								<th scope="col" style="width:10%">이미지</th>
								<th scope="col" style="width:25%">곡명</th>
								<th scope="col" style="width:15%">아티스트</th>
								<th scope="col" style="width:5%">좋아요</th>
								<th scople="col" style="width:5%">듣기</th>
								<th scople="col" style="width:5%">추가</th>
							</tr>
						</thead>
						<tbody align="center">
							<tr>
								<th>
									<div class="custom-control custom-checkbox custom-control-inline">
                              			<input type="checkbox" class="custom-control-input" id="customCheck_1" data-toggle="modal" data-target=".bd-example-modal-sm" name="song">
                             			<label class="custom-control-label" for="customCheck_1"></label>
                           			</div>
                             	</th>
								<th scope="row">1</th>
								<td>
                                    <img src="images/dashboard/popular-hindi-song/02.png" class="img-fluid avatar-50 rounded" alt="author-profile">
                                </td>
								<td>라일락</td>
								<td>아이유(IU)</td>
								<td>
									<div>
                                 		<a class="iq-icons-list" href="#"><i class="ion-heart" style="padding-top: 12px;"></i></a>
                              		</div>
								</td>
								<td>
									<div>
                                 		<a class="iq-icons-list" href="#"><i class="ion-play" style="padding-top: 12px;"></i></a>
                              		</div>
								</td>
								<td>
									<div>
                                 		<a class="iq-icons-list" href="#"><i class="ion-plus-circled" style="padding-top: 12px;"></i></a>
                              		</div>
								</td>
							</tr>
							<tr>
								<th>
									<div class="custom-control custom-checkbox custom-control-inline" >
                              			<input type="checkbox" class="custom-control-input" id="customCheck2" name="song">
                             			<label class="custom-control-label" for="customCheck2"></label>
                           			</div>
                             	</th>
								<th scope="row">2</th>
								<td>
                                    <img src="images/dashboard/popular-hindi-song/02.png" class="img-fluid avatar-50 rounded" alt="author-profile">
                                </td>
								<td>celebrity</td>
								<td>아이유(IU)</td>
								<td>
									<div>
                                 		<a class="iq-icons-list" href="#"><i class="ion-heart"></i></a>
                              		</div>
								</td>
								<td>
									<div>
                                 		<a class="iq-icons-list" href="#"><i class="ion-play"></i></a>
                              		</div>
								</td>
								<td>
									<div>
                                 		<a class="iq-icons-list" href="#"><i class="ion-plus-circled"></i></a>
                              		</div>
								</td>
							</tr>
							<tr>
								<th>
									<div class="custom-control custom-checkbox custom-control-inline">
                              			<input type="checkbox" class="custom-control-input" id="customCheck3" name="song">
                             			<label class="custom-control-label" for="customCheck3"></label>
                           			</div>
                             	</th>
								<th scope="row">3</th>
								<td>
                                    <img src="images/dashboard/popular-hindi-song/02.png" class="img-fluid avatar-50 rounded" alt="author-profile">
                                </td>
								<td>내손을 잡아</td>
								<td>아이유(IU)</td>
								<td>
									<div>
                                 		<a class="iq-icons-list" href="#"><i class="ion-heart"></i></a>
                              		</div>
								</td>
								<td>
									<div>
                                 		<a class="iq-icons-list" href="#"><i class="ion-play"></i></a>
                              		</div>
								</td>
								<td>
									<div>
                                 		<a class="iq-icons-list" href="#"><i class="ion-plus-circled"></i></a>
                              		</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
   </div>
   <!-- Wrapper END -->
  ﻿<%@ include file="main-Footer.jspf"%>
	</div>

</body>
</html>
