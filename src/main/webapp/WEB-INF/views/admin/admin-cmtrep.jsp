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
   <!-- loader Start -->
   </div>
   <!-- loader END -->
   
      <!-- TOP Nav Bar END -->
      <!-- Page Content  -->
      <div id="content-page" class="content-page">
         <div class="container-fluid">
            <div class="row">
               <div class="col-sm-12">
                  <div class="iq-card">
                     <div class="iq-card-header d-flex justify-content-between" style="border-bottom: 0px solid; margin-bottom: -2rem;">
                           <h4 class="card-title">신고댓글 목록</h4>
                     </div>
                      <ul class="nav nav-tabs" id="myTab-1" role="tablist" style="position: relative; top: 10px;">
                              <li class="nav-item">
                                 <a class="nav-link" id="home-tab" href="/palette/SOPA/admin/repmrbView" role="tab" aria-controls="home" aria-selected="true">신고게시글 목록</a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link active" id="profile-tab" href="/palette/SOPA/admin/repcmtView" role="tab" aria-controls="profile" aria-selected="false">신고댓글 목록</a>
                              </li>
                           </ul>
                     <div class="iq-card-body">
                        <div class="table-responsive">
                           <table class="data-tables table table-striped table-bordered" style="width:100%; text-align: center;">
                              <thead>
                                 <tr>
                                    <th style="width: 8%;">회원번호</th>
                                    <th style="width: 10%;">회원이메일</th>
                                    <th style="width: 10%; ">댓글번호</th>
                                    <th style="width: 10%; ">댓글내용</th>
                                    <th style="width: 8%; ">신고사유</th>
                                    <th style="width: 6%; ">신고자</th>
                                    <th style="width: 8%;">신고날짜</th>
                                    <th style="width: 12%;">신고누적횟수</th>
                                    <th style="width: 4%;">확인</th>
                                 </tr>
                              </thead>
                              <tbody>
                               <c:forEach items="${repcmtlist}" var="row" varStatus="status">

                                 <tr> 
                                    <td>${row.MEM_NUMED}</td> 
                                    <td>${row.MEM_EMAIL}</td>
                                    <td>${row.CMT_NUM}</td>
                                    <td>${row.CMT_CON}</td>
                                    <td>${row.REP_CON}</td>
                                    <td>${row.MEM_NICK}</td>
                                    <td>${row.REP_DATE}</td>
                                    <td>${row.MEM_DEC}</td>
                                      <td>
                                       <div class="flex align-items-center list-user-action">
                                          <a class="bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete" href="#"><i class="ri-delete-bin-line"></i></a>
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
         </div>
      </div>
   </div>
   <!-- Wrapper END -->
   <!-- Footer -->
   ﻿<%@ include file="../main/main-Footer.jspf" %>
 
</body>
</html>