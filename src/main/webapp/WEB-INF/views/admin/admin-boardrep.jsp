<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
<head>
   <!-- Required meta tags -->
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <title>SOUND PALETTE</title>
   
</head>
<body>
<%@ include file="../main/main-top.jspf" %>
 
      <!-- TOP Nav Bar END -->
      <!-- Page Content  -->
      <div id="content-page" class="content-page">
         <div class="container-fluid">
            <div class="row">
               <div class="col-sm-12">
                  <div class="iq-card">
                     <div class="iq-card-header d-flex justify-content-between" style="border-bottom: 0px solid; margin-bottom: -2rem;">
                           <h4 class="card-title">신고게시글 목록</h4>
                     </div>
                      <ul class="nav nav-tabs" id="myTab-1" role="tablist" style="position: relative; top: 10px;">
                              <li class="nav-item">
                                 <a class="nav-link active" id="home-tab" href="/palette/SOPA/admin/repmrbView" role="tab" aria-controls="home" aria-selected="true">신고게시글 목록</a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link" id="profile-tab" href="/palette/SOPA/admin/repcmtView" role="tab" aria-controls="profile" aria-selected="false">신고댓글 목록</a>
                              </li>
                           </ul>
                     <div class="iq-card-body">
                        <div class="table-responsive">
                           <table class="data-tables table table-striped table-bordered" style="width:100%; text-align: center;">
                              <thead>
                                 <tr>
                                    <th style="width: 8%; ">회원번호</th>
                                    <th style="width: 10%;">회원이메일</th>
                                    <th style="width: 10%;">게시글번호</th>
                                    <th style="width: 10%;">게시글제목</th>
                                    <th style="width: 8%; ">신고사유</th>
                                    <th style="width: 6%; ">신고자</th>
                                    <th style="width: 8%; ">신고날짜</th>
                                    <th style="width: 12%;">신고누적횟수</th>
                                    <th style="width: 4%; ">확인</th>
                                 </tr>
                              </thead>
                              <tbody>
                                  <c:forEach items="${repmrblist}" var="row" varStatus="status">
                            
                                 <tr> 
                                    <td class="memNum">${row.MEM_NUMED}</td> 
                                    <td>${row.MEM_EMAIL}</td>
                                    <td>${row.MRB_NUM}</td>
                                    <td><div class="txt_li2"><a href="/palette/SOPA/mrbDetail?MRB_NUM=${row.MRB_NUM}">${row.MRB_TITLE}</a></div></td>
                                    <td><div class="txt_li">${row.REP_CON}</div></td>
                                    <td>${row.MEM_NICK}</td>
                                    <td>${row.REP_DATE}</td>
                                    <td>${row.MEM_DEC}</td>
                                    <td>
                                       <div class="flex align-items-center list-user-action">
                                            <i class="ri-delete-bin-line" data-toggle="modal" data-target=".bd-example-modal-sm"></i>
                                             <!-- 모달시작 -->
                                                <div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog"  aria-hidden="true">
                                                <div class="modal-dialog modal-sm">
                                                   <div class="modal-content">
                                                      <div class="modal-header">
                                                         <h5 class="modal-title">신고 처리</h5>
                                                         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                         <span aria-hidden="true">&times;</span>
                                                         </button>
                                                      </div>
                                                      <div class="modal-body">
                                                         신고된 회원의 처리를 선택해주세요.
                                                      <br/>
                                                      </div>
                                                      <div class="modal-footer">
                                                       <form id="repmemberForm" action="/palette/SOPA/admin/repmrb" method="POST">
                                                       <input type="text" name="MEM_NUMED" id="memNum" hidden="true"/>
                                                  </form>
                                                         <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                                                         <button type="submit" class="btn btn-primary" formaction="/palette/SOPA/admin/repmrb2" >신고누적</button>
                                                         <button type="submit" class="btn btn-primary ${row.MEM_NUMED}" id="btnrepDelete${row.MEM_NUMED}" onclick="fn_repdeleteMember(this.id);">허위신고</button>
                                             </form>                                  
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                             </div>
                                             <!-- 끝 -->
                                 
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
         </div>
      </div>
   </div>
   <!-- Wrapper END -->
   <!-- Footer -->
   ﻿<%@ include file="../main/main-Footer.jspf" %>
   <!-- Footer END -->
   <!-- color-customizer -->
   
   
</body>
</html>