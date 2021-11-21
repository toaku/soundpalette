<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
  <!-- Required meta tags -->
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <title>SOUND PALETTE</title>
  
﻿
</head>
<body>
<%@ include file="../main/main-top.jspf" %>

<!-- Page Content  -->
<div id="content-page" class="content-page">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-sm-12 col-lg-6" style="min-width: 100%;">
    			<!-- 이거 -->
                     <div class="iq-card">
                        <div class="iq-card-header d-flex justify-content-between">
                           <div class="iq-header-title">
                              <h4 class="card-title">음악 추천 게시판</h4>
                           </div>
                            <button type="button" onclick="location.href='/palette/SOPA/mrbWriteForm' " class="btn mb-1 btn-primary" ><i class="ri-bill-fill"></i>글쓰기</button>
                        </div>
                   
               
					<!-- 테스트 끝  -->
                        
                        <div class="iq-card-body ">  
                           <div class="table-responsive">
                           <table class="data-tables table table-striped table-bordered" style="width: 100%;">
                              <thead class="thead-dark">
                                 <tr align="center">
                                    <th scope="col" style="width:7%">번호</th>
                                    <th scope="col" style="width:53%">제목</th>
                                   	<th scope="col" style="width:13%">가수</th>
                                    <th scope="col" style="width:13%">작성자</th>
                                   	<!-- <th scope="col" style="width:13%">날짜</th> -->
                                    <th scope="col" style="width:7%">좋아요</th>
                                    <th scope="col" style="width:7%">조회수</th>
                                 
                                 </tr>
                              </thead>
                              <tbody align="center">
                                 <c:forEach items="${list}" var="row">
                                 	<tr>
                                 		<td>${row.MRB_NUM}</td>
                                 		<td>
											<a href="/palette/SOPA/mrbDetail?MRB_NUM=${row.MRB_NUM}" name="title">${row.MRB_TITLE }</a>
										</td>
										<td>${row.MRB_ART}</td>
                                 		<td>${row.MEM_NICK}</td>
										<%-- <td>${row.MRB_DATE}</td> --%>
										<td>${row.COUNTHIT}</td>
										<td>${row.MRB_CNT}</td>
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
                     
                  
<!-- Page Footer -->
<%@ include file="../main/main-Footer.jspf" %>

   
</body>
</html>