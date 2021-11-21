<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<head>
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
	<%@ include file="../main/main-top.jspf"%>
	<!-- Wrapper Start -->

	<!-- Page Content  -->
	<div id="content-page" class="content-page">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-12">
					<div class="iq-card">
						<div class="iq-card-header d-flex justify-content-between">
							<div class="iq-header-title">
								<h4 class="card-title"># 태그 항목</h4>
							</div>
							<div class="iq-card-header-toolbar d-flex align-items-center"
								style="padding-right: 70px;">
								<button type="button" class="btn btn-primary rmt-2"
									data-toggle="modal"
									data-target="#exampleModalCenteredScrollable"
									style="margin-right: 6px;">추가</button>
								<!-- Modal -->

								<div id="exampleModalCenteredScrollable" class="modal fade"
									tabindex="-1" role="dialog"
									aria-labelledby="exampleModalCenteredScrollableTitle"
									aria-hidden="true">
									<div
										class="modal-dialog modal-dialog-scrollable modal-dialog-centered"
										role="document">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title"
													id="exampleModalCenteredScrollableTitle"># 태그</h5>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">×</span>
												</button>
											</div>
											<div class="modal-body">
												<input type="text" class="form-control">
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-primary">저장</button>
												<button type="button" class="btn btn-secondary"
													data-dismiss="modal">닫기</button>
											</div>
										</div>
									</div>
								</div>


								<div>
									<a href="#" onclick="confirm('삭제 하시겠습니까?')"><button
											class="btn btn-primary" type="button" onclick="delete">삭제</button></a>
								</div>
							</div>
						</div>
						<div class="iq-card-body">
							<div class="table-responsive">
								<table align="center"
									class="data-tables table table-striped table-bordered"
									style="width: 80%">
									<thead>
										<tr align="center">

											<th style="width: 10%; padding-right: 13px;">
												<div
													class="custom-control custom-checkbox custom-control-inline">
													<input type="checkbox" class="custom-control-input"
														id="customCheck_All" value="selectAll"
														onclick="selectAll(this)"> <label
														class="custom-control-label" for="customCheck_All"></label>
												</div>
											</th>
											<th
												style="width: 15%; pointer-events: none; padding-right: 13px;">순서</th>
											<th
												style="width: 60%; pointer-events: none; padding-right: 13px;">태그</th>
											<th
												style="width: 15%; pointer-events: none; padding-right: 13px;">수정</th>
										</tr>
									</thead>
									<tbody>
										<tr align="center">
											<td><div
													class="custom-control custom-checkbox custom-control-inline">
													<input type="checkbox" class="custom-control-input"
														id="customCheck1"> <label
														class="custom-control-label" for="customCheck1"></label>
												</div></td>
											<td>1</td>
											<td>점심시간</td>

											<td>
												<div class="flex align-items-center list-user-action">
													<a data-toggle="modal"
														data-target="#exampleModalCenteredScrollable1"
														class="bg-primary" data-toggle="tooltip"
														data-placement="top" title="" data-original-title="Edit"><i
														class="ri-pencil-line"></i></a>
													<div id="exampleModalCenteredScrollable1"
														class="modal fade" tabindex="-1" role="dialog"
														aria-labelledby="exampleModalCenteredScrollableTitle"
														aria-hidden="true">
														<div
															class="modal-dialog modal-dialog-scrollable modal-dialog-centered"
															role="document">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title"
																		id="exampleModalCenteredScrollableTitle"># 태그</h5>
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">×</span>
																	</button>
																</div>
																<div class="modal-body">
																	<input type="text" class="form-control">
																</div>
																<div class="modal-footer">
																	<button type="button" class="btn btn-primary">수정</button>
																	<button type="button" class="btn btn-secondary"
																		data-dismiss="modal">닫기</button>
																</div>
															</div>
														</div>
													</div>

												</div>
											</td>
										</tr>
										<tr align="center">
											<td><div
													class="custom-control custom-checkbox custom-control-inline">
													<input type="checkbox" class="custom-control-input"
														id="customCheck2"> <label
														class="custom-control-label" for="customCheck2"></label>
												</div></td>
											<td>2</td>
											<td>ㅋㅋ</td>
											

											<td>
												<div class="flex align-items-center list-user-action">
													<a data-toggle="modal"
														data-target="#exampleModalCenteredScrollable2"
														class="bg-primary" data-toggle="tooltip"
														data-placement="top" title="" data-original-title="Edit"><i
														class="ri-pencil-line"></i></a>
													<div id="exampleModalCenteredScrollable2"
														class="modal fade" tabindex="-1" role="dialog"
														aria-labelledby="exampleModalCenteredScrollableTitle"
														aria-hidden="true">
														<div
															class="modal-dialog modal-dialog-scrollable modal-dialog-centered"
															role="document">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title"
																		id="exampleModalCenteredScrollableTitle"># 태그</h5>
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">×</span>
																	</button>
																</div>
																<div class="modal-body">
																	<input type="text" class="form-control">
																</div>
																<div class="modal-footer">
																	<button type="button" class="btn btn-primary">수정</button>
																	<button type="button" class="btn btn-secondary"
																		data-dismiss="modal">닫기</button>
																</div>
															</div>
														</div>
													</div>

												</div>
											</td>
										</tr>
										<tr align="center">
											<td><div
													class="custom-control custom-checkbox custom-control-inline">
													<input type="checkbox" class="custom-control-input"
														id="customCheck3"> <label
														class="custom-control-label" for="customCheck3"></label>
												</div></td>
											<td>3</td>
											<td>ㅎㅎ</td>

											<td>
												<div class="flex align-items-center list-user-action">
													<a data-toggle="modal"
														data-target="#exampleModalCenteredScrollable3"
														class="bg-primary" data-toggle="tooltip"
														data-placement="top" title="" data-original-title="Edit"><i
														class="ri-pencil-line"></i></a>
													<div id="exampleModalCenteredScrollable3"
														class="modal fade" tabindex="-1" role="dialog"
														aria-labelledby="exampleModalCenteredScrollableTitle"
														aria-hidden="true">
														<div
															class="modal-dialog modal-dialog-scrollable modal-dialog-centered"
															role="document">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title"
																		id="exampleModalCenteredScrollableTitle"># 태그</h5>
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">×</span>
																	</button>
																</div>
																<div class="modal-body">
																	<input type="text" class="form-control">
																</div>
																<div class="modal-footer">
																	<button type="button" class="btn btn-primary">수정</button>
																	<button type="button" class="btn btn-secondary"
																		data-dismiss="modal">닫기</button>
																</div>
															</div>
														</div>
													</div>

												</div>
											</td>
										</tr>
										<tr align="center">
											<td><div
													class="custom-control custom-checkbox custom-control-inline">
													<input type="checkbox" class="custom-control-input"
														id="customCheck4"> <label
														class="custom-control-label" for="customCheck4"></label>
												</div></td>
											<td>4</td>
											<td>ㅂㅂ</td>

											<td>
												<div class="flex align-items-center list-user-action">
													<a data-toggle="modal"
														data-target="#exampleModalCenteredScrollable4"
														class="bg-primary" data-toggle="tooltip"
														data-placement="top" title="" data-original-title="Edit"><i
														class="ri-pencil-line"></i></a>
													<div id="exampleModalCenteredScrollable4"
														class="modal fade" tabindex="-1" role="dialog"
														aria-labelledby="exampleModalCenteredScrollableTitle"
														aria-hidden="true">
														<div
															class="modal-dialog modal-dialog-scrollable modal-dialog-centered"
															role="document">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title"
																		id="exampleModalCenteredScrollableTitle"># 태그</h5>
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">×</span>
																	</button>
																</div>
																<div class="modal-body">
																	<input type="text" class="form-control">
																</div>
																<div class="modal-footer">
																	<button type="button" class="btn btn-primary">수정</button>
																	<button type="button" class="btn btn-secondary"
																		data-dismiss="modal">닫기</button>
																</div>
															</div>
														</div>
													</div>

												</div>
											</td>
										</tr>
										<tr align="center">
											<td><div
													class="custom-control custom-checkbox custom-control-inline">
													<input type="checkbox" class="custom-control-input"
														id="customCheck5"> <label
														class="custom-control-label" for="customCheck5"></label>
												</div></td>
											<td>5</td>
											<td>ㄱㄱ</td>

											<td>
												<div class="flex align-items-center list-user-action">
													<a data-toggle="modal"
														data-target="#exampleModalCenteredScrollable5"
														class="bg-primary" data-toggle="tooltip"
														data-placement="top" title="" data-original-title="Edit"><i
														class="ri-pencil-line"></i></a>
													<div id="exampleModalCenteredScrollable5"
														class="modal fade" tabindex="-1" role="dialog"
														aria-labelledby="exampleModalCenteredScrollableTitle"
														aria-hidden="true">
														<div
															class="modal-dialog modal-dialog-scrollable modal-dialog-centered"
															role="document">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title"
																		id="exampleModalCenteredScrollableTitle"># 태그</h5>
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">×</span>
																	</button>
																</div>
																<div class="modal-body">
																	<input type="text" class="form-control">
																</div>
																<div class="modal-footer">
																	<button type="button" class="btn btn-primary">수정</button>
																	<button type="button" class="btn btn-secondary"
																		data-dismiss="modal">닫기</button>
																</div>
															</div>
														</div>
													</div>

												</div>
											</td>
										</tr>
										<tr align="center">
											<td><div
													class="custom-control custom-checkbox custom-control-inline">
													<input type="checkbox" class="custom-control-input"
														id="customCheck6"> <label
														class="custom-control-label" for="customCheck6"></label>
												</div></td>
											<td>6</td>
											<td>겨울</td>

											<td>
												<div class="flex align-items-center list-user-action">
													<a data-toggle="modal"
														data-target="#exampleModalCenteredScrollable6"
														class="bg-primary" data-toggle="tooltip"
														data-placement="top" title="" data-original-title="Edit"><i
														class="ri-pencil-line"></i></a>
													<div id="exampleModalCenteredScrollable6"
														class="modal fade" tabindex="-1" role="dialog"
														aria-labelledby="exampleModalCenteredScrollableTitle"
														aria-hidden="true">
														<div
															class="modal-dialog modal-dialog-scrollable modal-dialog-centered"
															role="document">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title"
																		id="exampleModalCenteredScrollableTitle"># 태그</h5>
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">×</span>
																	</button>
																</div>
																<div class="modal-body">
																	<input type="text" class="form-control">
																</div>
																<div class="modal-footer">
																	<button type="button" class="btn btn-primary">수정</button>
																	<button type="button" class="btn btn-secondary"
																		data-dismiss="modal">닫기</button>
																</div>
															</div>
														</div>
													</div>

												</div>
											</td>
										</tr>
										<tr align="center">
											<td><div
													class="custom-control custom-checkbox custom-control-inline">
													<input type="checkbox" class="custom-control-input"
														id="customCheck7"> <label
														class="custom-control-label" for="customCheck7"></label>
												</div></td>
											<td>7</td>
											<td>겨울</td>

											<td>
												<div class="flex align-items-center list-user-action">
													<a data-toggle="modal"
														data-target="#exampleModalCenteredScrollable7"
														class="bg-primary" data-toggle="tooltip"
														data-placement="top" title="" data-original-title="Edit"><i
														class="ri-pencil-line"></i></a>
													<div id="exampleModalCenteredScrollable7"
														class="modal fade" tabindex="-1" role="dialog"
														aria-labelledby="exampleModalCenteredScrollableTitle"
														aria-hidden="true">
														<div
															class="modal-dialog modal-dialog-scrollable modal-dialog-centered"
															role="document">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title"
																		id="exampleModalCenteredScrollableTitle"># 태그</h5>
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">×</span>
																	</button>
																</div>
																<div class="modal-body">
																	<input type="text" class="form-control">
																</div>
																<div class="modal-footer">
																	<button type="button" class="btn btn-primary">수정</button>
																	<button type="button" class="btn btn-secondary"
																		data-dismiss="modal">닫기</button>
																</div>
															</div>
														</div>
													</div>

												</div>
											</td>
										</tr>
										<tr align="center">
											<td><div
													class="custom-control custom-checkbox custom-control-inline">
													<input type="checkbox" class="custom-control-input"
														id="customCheck8"> <label
														class="custom-control-label" for="customCheck8"></label>
												</div></td>
											<td>8</td>
											<td>겨울</td>

											<td>
												<div class="flex align-items-center list-user-action">
													<a data-toggle="modal"
														data-target="#exampleModalCenteredScrollable8"
														class="bg-primary" data-toggle="tooltip"
														data-placement="top" title="" data-original-title="Edit"><i
														class="ri-pencil-line"></i></a>
													<div id="exampleModalCenteredScrollable8"
														class="modal fade" tabindex="-1" role="dialog"
														aria-labelledby="exampleModalCenteredScrollableTitle"
														aria-hidden="true">
														<div
															class="modal-dialog modal-dialog-scrollable modal-dialog-centered"
															role="document">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title"
																		id="exampleModalCenteredScrollableTitle"># 태그</h5>
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">×</span>
																	</button>
																</div>
																<div class="modal-body">
																	<input type="text" class="form-control">
																</div>
																<div class="modal-footer">
																	<button type="button" class="btn btn-primary">수정</button>
																	<button type="button" class="btn btn-secondary"
																		data-dismiss="modal">닫기</button>
																</div>
															</div>
														</div>
													</div>

												</div>
											</td>
										</tr>
										<tr align="center">
											<td><div
													class="custom-control custom-checkbox custom-control-inline">
													<input type="checkbox" class="custom-control-input"
														id="customCheck9"> <label
														class="custom-control-label" for="customCheck9"></label>
												</div></td>
											<td>9</td>
											<td>겨울</td>

											<td>
												<div class="flex align-items-center list-user-action">
													<a data-toggle="modal"
														data-target="#exampleModalCenteredScrollable9"
														class="bg-primary" data-toggle="tooltip"
														data-placement="top" title="" data-original-title="Edit"><i
														class="ri-pencil-line"></i></a>
													<div id="exampleModalCenteredScrollable9"
														class="modal fade" tabindex="-1" role="dialog"
														aria-labelledby="exampleModalCenteredScrollableTitle"
														aria-hidden="true">
														<div
															class="modal-dialog modal-dialog-scrollable modal-dialog-centered"
															role="document">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title"
																		id="exampleModalCenteredScrollableTitle"># 태그</h5>
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">×</span>
																	</button>
																</div>
																<div class="modal-body">
																	<input type="text" class="form-control">
																</div>
																<div class="modal-footer">
																	<button type="button" class="btn btn-primary">수정</button>
																	<button type="button" class="btn btn-secondary"
																		data-dismiss="modal">닫기</button>
																</div>
															</div>
														</div>
													</div>

												</div>
											</td>
										</tr>
										<tr align="center">
											<td><div
													class="custom-control custom-checkbox custom-control-inline">
													<input type="checkbox" class="custom-control-input"
														id="customCheck10"> <label
														class="custom-control-label" for="customCheck10"></label>
												</div></td>
											<td>10</td>
											<td>겨울</td>

											<td>
												<div class="flex align-items-center list-user-action">
													<a data-toggle="modal"
														data-target="#exampleModalCenteredScrollable10"
														class="bg-primary" data-toggle="tooltip"
														data-placement="top" title="" data-original-title="Edit"><i
														class="ri-pencil-line"></i></a>
													<div id="exampleModalCenteredScrollable10"
														class="modal fade" tabindex="-1" role="dialog"
														aria-labelledby="exampleModalCenteredScrollableTitle"
														aria-hidden="true">
														<div
															class="modal-dialog modal-dialog-scrollable modal-dialog-centered"
															role="document">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title"
																		id="exampleModalCenteredScrollableTitle"># 태그</h5>
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">×</span>
																	</button>
																</div>
																<div class="modal-body">
																	<input type="text" class="form-control">
																</div>
																<div class="modal-footer">
																	<button type="button" class="btn btn-primary">수정</button>
																	<button type="button" class="btn btn-secondary"
																		data-dismiss="modal">닫기</button>
																</div>
															</div>
														</div>
													</div>

												</div>
											</td>
										</tr>
										<tr align="center">
											<td><div
													class="custom-control custom-checkbox custom-control-inline">
													<input type="checkbox" class="custom-control-input"
														id="customCheck11"> <label
														class="custom-control-label" for="customCheck11"></label>
												</div></td>
											<td>11</td>
											<td>겨울</td>

											<td>
												<div class="flex align-items-center list-user-action">
													<a data-toggle="modal"
														data-target="#exampleModalCenteredScrollable11"
														class="bg-primary" data-toggle="tooltip"
														data-placement="top" title="" data-original-title="Edit"><i
														class="ri-pencil-line"></i></a>
													<div id="exampleModalCenteredScrollable11"
														class="modal fade" tabindex="-1" role="dialog"
														aria-labelledby="exampleModalCenteredScrollableTitle"
														aria-hidden="true">
														<div
															class="modal-dialog modal-dialog-scrollable modal-dialog-centered"
															role="document">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title"
																		id="exampleModalCenteredScrollableTitle"># 태그</h5>
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">×</span>
																	</button>
																</div>
																<div class="modal-body">
																	<input type="text" class="form-control">
																</div>
																<div class="modal-footer">
																	<button type="button" class="btn btn-primary">수정</button>
																	<button type="button" class="btn btn-secondary"
																		data-dismiss="modal">닫기</button>
																</div>
															</div>
														</div>
													</div>

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
		</div>
	</div>
	</div>
	<!-- Wrapper END -->

	
		﻿<%@ include file="../main/main-Footer.jspf"%>
	</div>
	
</body>
</html>