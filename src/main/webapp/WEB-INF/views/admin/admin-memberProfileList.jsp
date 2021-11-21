<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
  
<html>
  <!-- Required meta tags -->
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <title>SOUND PALETTE</title>


</head>
<body>
<%@ include file="../main/main-top.jspf" %>
      <!-- Page Content  -->
   <div id="content-page" class="content-page">
      <div class="container-fluid">
         <div class="row">
            <div class="col-sm-12">
                  <div class="iq-card">
                     <div class="iq-card-header d-flex justify-content-between" style="border-bottom: 0px solid; margin-bottom: -2rem;">
                           <h4 class="card-title">회원 리스트</h4>
                     </div>
                     <form id="memberForm" action="/palette/SOPA/admin/memberDelete" method="POST">
                         <input type="text" name="MEM_NUM" id="memNum" hidden="true"/>
	                 </form>
	                 
	                 <form id="memberForm2" action="/palette/SOPA/admin/memberstop" method="POST">
                         <input type="hidden" name="MEM_NUM" id="MEM_NUM">
	                 </form>
	                 
	                 <form id="memberForm3" action="/palette/SOPA/admin/membernotstop" method="POST">
                         <input type="hidden" name="MEM_NUM" id="MEM_NUM2">
	                 </form>
	              
                     <div class="iq-card-body">
                        <div class="table-responsive">
                           <table class="data-tables table table-striped table-bordered" style="width:100%; text-align: center;">
                              <thead>
                                 <tr>
                                    <th style="width: 8%; ">회원번호</th>
                                    <th style="width: 25%;">회원이메일</th>
                                    <th style="width: 8%;">이름</th>
                                    <th style="width: 12%;">닉네임</th>
                                    <th style="width: 8%; ">총 게시글</th>
                                    <th style="width: 8%; ">총 덧글</th>
                                    <th style="width: 8%;">신고누적</th>
                                    <th style="width: 5%;">정지</th>
                                    <th style="width: 5%; ">탈퇴</th>
                                 </tr>
                              </thead>
                              <tbody align="center">
                              	<c:forEach items="${memberlist}" var="row" varStatus="status">
                                
                                 <tr id="trcolor">
                                 	
	                                    <td class="memNum">${row.MEM_NUM}</td> <!-- 회원번호 -->
	                                    <td class="memEmail">${row.MEM_EMAIL}</td> <!-- 회원이메일 -->
	                                    <td class="memName">${row.MEM_NAME}</td> <!-- 회원이름 -->
	                                    <td class="memNick">${row.MEM_NICK}</td> <!-- 회원닉네임 -->
	                                    <td class="countMrb">${row.COUNTMRB}</td> <!-- 게시글수 -->
	                                    <td class="countCmt">${row.COUNTCMT}</td> <!-- 덧글수 -->
	                                    <td class="memDec">${row.MEM_DEC}</td> <!-- 신고누적횟수 -->
	                                	
	                                	
	                                		<c:if test="${row.MEM_STDATE eq null}">
		                                		<td class="${row.MEM_NUM}" align="center" >
		                                		<div class="memtest" id="memstdate${row.MEM_STDATE}" onclick="fn_repmemberstdate(this.id);"><i class="las la-id-card-alt"></i></div>
		                                		</td>
	                                		</c:if>
	                                		<c:if test="${row.MEM_STDATE ne null}">
		                                		<td class="${row.MEM_NUM}" align="center" >
		                                		<div class="${row.MEM_NUM}" id="${row.MEM_NUM}${status.count}" onclick="fn_repmemberstdate2(this.id);"><span class="badge badge-primary">정지해제</span></div>
		                                		</td>
	                                		</c:if>
	                                	
	                                    <td class="${row.MEM_NUM}">
		                                  <div class="flex align-items-center list-user-action" id="btnDelete${row.MEM_NUM}" onclick="fn_deleteMember(this.id);">
											 <i class="ri-delete-bin-line"></i>
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

  
 <script>
 function fn_deleteMember(id){
	if(confirm("해당 유저를 정말 탈퇴시키겠습니까?") == true){
		let memNum = $("#"+id).closest("td").attr('class');
		$("#memNum").val(memNum);  
		$("#memberForm").submit();
		alert("해당 유저를 탈퇴 시켰습니다.");
	}
 }
 
 function fn_repmemberstdate(id){
		if(confirm("해당 유저를 정지시키겠습니까?") == true){
			let memNum = $("#"+id).closest("td").attr('class');
			$("#MEM_NUM").val(memNum);
			$("#memberForm2").submit();
			
			var con = document.getelementbyid("memstdRe");
		
			alert("해당 유저를 정지시켰습니다.");
		}
	 }
 
 function fn_repmemberstdate2(id){
		if(confirm("정지된 회원입니다. 정지를 해제하시겠습니까?") == true){
			let memNum = $("#"+id).attr('class');
			$("#MEM_NUM2").val(memNum);
			$("#memberForm3").submit();
			
			var con = document.getelementbyid("memstdRe");
		
			alert("해당 유저를 정지 해제 시켰습니다.");
		}
	 }
 
 
   </script>
﻿<%@ include file="../main/main-Footer.jspf" %>

   </body>
   </html>
   