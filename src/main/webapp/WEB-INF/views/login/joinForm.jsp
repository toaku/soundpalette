<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html lang="en">
   <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>SOUND PALETTE</title>
      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="/palette/resources/css/bootstrap.min.css">
      <!-- Typography CSS -->
      <link rel="stylesheet" href="/palette/resources/css/typography.css">
      <!-- Style CSS -->
      <link rel="stylesheet" href="/palette/resources/css/style.css">
      <!-- Responsive CSS -->
      <link rel="stylesheet" href="/palette/resources/css/responsive.css">
		<script 
		  src="http://code.jquery.com/jquery-3.5.1.js"
		  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
		  crossorigin="anonymous"></script>
      <script>
  	/* 아이디 중복 체크  */
	$(document).ready(function() {
		$('#MEM_EMAIL').on("propertychange change keyup paste input", function() {
			var id = $('#MEM_EMAIL').val();
			var list = new Array();
			console.log(id);
			<c:forEach var="row" items="${list1}">
				list.push("${row.MEM_EMAIL}");
			</c:forEach>
			if (list.includes(id)) {
				$('#MEM_EMAILW').text(" 사용중인 이메일입니다. ");
				$('#MEM_EMAILW').css("color", "red");
				$('#MEM_EMAILW').css("font-size", "9pt");
				$('#MEM_EMAILW').css("font-weight", "bold");
				$('#MEM_EMAIL').attr("check", "0");
				
			} else {
				$('#MEM_EMAILW').text(" 사용 가능한 이메일입니다. ");
				$('#MEM_EMAILW').css("color", "green");
				$('#MEM_EMAILW').css("font-size", "9pt");
				$('#MEM_EMAILW').css("font-weight", "bold");
				$('#MEM_EMAIL').attr("check", "1");
			}
		});
	});
  	
  	/* 닉네임 중복 체크  */
	$(document).ready(function() {
		$('#MEM_NICK').on("propertychange change keyup paste input", function() {
			var nick = $('#MEM_NICK').val();
			var list = new Array();
			console.log(nick);
			<c:forEach var="row" items="${list2}">
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
  	
	/* 비밀번호 확인  */
    $(function(){
        $("input").keyup(function(){
            var pwd1=$("#MEM_PWC").val();
            var pwd2=$("#MEM_PW").val();
            if(pwd1 != "" || pwd2 != ""){
                if(pwd1 == pwd2){
    				$('#MEM_PWW').text(" 비밀번호가 일치합니다. ");
    				$('#MEM_PWW').css("color", "green");
    				$('#MEM_PWW').css("font-size", "9pt");
    				$('#MEM_PWW').css("font-weight", "bold");
    				$('#MEM_PW').attr("check", "1");
                }else{
    				$('#MEM_PWW').text(" 비밀번호가 일치하지 않습니다. ");
    				$('#MEM_PWW').css("color", "red");
    				$('#MEM_PWW').css("font-size", "9pt");
    				$('#MEM_PWW').css("font-weight", "bold");
    				$('#MEM_PW').attr("check", "0");
                }    
            }
        });
    });
      </script>
   </head>
   <body>

      <!-- Sign in Start -->
      <section class="sign-in-page" style="background: #fff;">
         <div class="container">
            <div class="row justify-content-center align-items-center height-self-center">
               <div class="col-md-6 col-sm-12 col-12 align-self-center">
                  <a href="/palette/SOPA/loginForm" class="header-logo">
					<h3 class="mb-3 text-center"><span style="color: #ff4545">SOUND PALETTE</h3>
                     </a></span>
                  <div class="sign-user_card ">
                     <div class="d-flex justify-content-center">
                     </div>
                     <div class="sign-in-page-data">
                        <div class="sign-in-from w-100 m-auto pt-5">
                           <h4 class="mb-3 text-center"><span style="color: #000000">회원가입</h4>
                           <form class="mt-4" action="/palette/SOPA/memberVerify" method="post">
	                           <div class="form-group">
	                              <label><span style="color: #000000">E-mail</label>
	                              <input type="email" class="form-control mb-0" name="MEM_EMAIL" id="MEM_EMAIL" placeholder="이메일 입력" style="color: #000000">
	                              <label id="MEM_EMAILW" name="MEM_EMAIL"></label>
	                           </div>
                              <div class="form-group">
                                 <label for="exampleInputEmail2"><span style="color: #000000">이름</label>
                                 <input type="text" class="form-control mb-0" name="MEM_NAME" id="exampleInputEmail2" placeholder="이름 입력" style="color: #000000">
                              </div>
                              <div>
                              	<label><span style="color: #000000">닉네임</label>
                              	<input type="text" class="form-control mb-0" name="MEM_NICK" id="MEM_NICK" placeholder="닉네임 입력" style="color: #000000">                    
                           		<label id="MEM_NICKW"></label>
                              	
                              </div>

                              <div class="form-group">
                                 <label for="exampleInputPassword2"><span style="color: #000000">비밀번호</label>
                                 <input type="password" class="form-control mb-0" name="MEM_PW" id="MEM_PW" placeholder="비밀번호 입력" style="color: #000000">
                              </div>
                              <div class="form-group">
                                <label for="confirmPw"><span style="color: #000000">비밀번호 확인</label>
                                <input type="password" class="form-control mb-0" name="MEM_PWC" id="MEM_PWC" placeholder="비밀번호 재입력" style="color: #000000">
                           		<label id="MEM_PWW"></label>
                                 
                              </div>
                              <div>
                              	<label><span style="color:#000000">생년월일</span></label>
                              	<input type="date" class="form-control mb-0" name="MEM_BIRTH" style="color:#000000">
                              </div>
                              <div class="sign-info mt-3">
                                 <input type="submit" class="btn btn-primary mb-2" value="회원가입">
                              </div>
                           </form>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- Sign in END -->
      <!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script src="/palette/resources/js/jquery.min.js"></script>
      <script src="/palette/resources/js/popper.min.js"></script>
      <script src="/palette/resources/js/bootstrap.min.js"></script>
      <!-- Appear JavaScript -->
      <script src="/palette/resources/js/jquery.appear.js"></script>
      <!-- Countdown JavaScript -->
      <script src="/palette/resources/js/countdown.min.js"></script>
      <!-- Counterup JavaScript -->
      <script src="/palette/resources/js/waypoints.min.js"></script>
      <script src="/palette/resources/js/jquery.counterup.min.js"></script>
      <!-- Wow JavaScript -->
      <script src="/palette/resources/js/wow.min.js"></script>
     
      <!-- Apexcharts JavaScript -->
      <script src="/palette/resources/js/apexcharts.js"></script>
      <!-- Slick JavaScript -->
      <script src="/palette/resources/js/slick.min.js"></script>
      <!-- Select2 JavaScript -->
      <script src="/palette/resources/js/select2.min.js"></script>
      <!-- Owl Carousel JavaScript -->
      <script src="/palette/resources/js/owl.carousel.min.js"></script>
      <!-- Magnific Popup JavaScript -->
      <script src="/palette/resources/js/jquery.magnific-popup.min.js"></script>
      <!-- Smooth Scrollbar JavaScript -->
      <script src="/palette/resources/js/smooth-scrollbar.js"></script>
      <!-- Style Customizer -->
      <script src="/palette/resources/js/style-customizer.js"></script>
      <!-- Chart Custom JavaScript -->
      <script src="/palette/resources/js/chart-custom.js"></script>
      <!-- Custom JavaScript -->

		
   </body>
</html>