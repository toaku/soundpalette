<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>

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
   <script>
	function fsubmit() {
		var mem_name = $('#mem_name').val();
		var mem_birth = $('#mem_birth').val();

		if (mem_name == null || mem_name == '') {
			alert("이름을 입력하세요.");
			return 0;
		} else if (mem_birth == null || mem_birth == '') {
			alert("생년월일를 입력하세요.");
			return 0;
		}

		$("#MEM_NAME").val(mem_name);
		$("#MEM_BIRTH").val(mem_birth);

		frm.submit();
	}
</script>
   </head>
   
   <body>

      <!-- Sign in Start -->
      <section class="sign-in-page" style="background:#fff;">
         <div class="container h-100">
            <div class="row justify-content-center align-items-center h-100">
               <div class="col-md-6 col-sm-12 col-12 ">
                  <a href="/palette/SOPA/loginForm" class="header-logo">
				  	<h3 class="mb-3 text-center"><span style="color: #ff4545">SOUND PALETTE</span></h3>
                  </a>
                  	
                  <div class="sign-user_card ">
                    
                     <div class="sign-in-page-data">
                        <div class="sign-in-from w-100 m-auto pt-5">
                           <h1 class="mb-0" align="center"><span style="color: #000000">E-Mail찾기</span></h1>
                           <form id="frm" class="mt-4" action="/palette/SOPA/findIdResult" method="post">
                              <input type="hidden" id="MEM_NAME" name="MEM_NAME"> 
                              <input type="hidden" id="MEM_BIRTH" name="MEM_BIRTH">
                              <div class="form-group">
                                 <label for="E-Mail"><span style="color: #000000">이름</span></label>
                                 <input type="text" class="form-control mb-0" id="mem_name" name="mem_name" placeholder="이름을 입력하세요." style="color: #000000">
                              </div>
                               <div class="form-group">
                                 <label for="Birth"><span style="color: #000000">생년월일</span></label>
                                 <input type="date" class="form-control mb-0" id="mem_birth" name="mem_birth"  style="color: #000000">
                              </div>
                              <div class="d-inline-block w-100">
                                 <input type="submit" class="btn btn-primary float-right" onclick="fsubmit();" value="E-Mail찾기"></input>
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
      
      <!-- color-customizer END -->
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
     
      <!-- am core JavaScript -->
      <script src="/palette/resources/js/core.js"></script>
      <!-- am charts JavaScript -->
      <script src="/palette/resources/js/charts.js"></script>
      <!-- am animated JavaScript -->
      <script src="/palette/resources/js/animated.js"></script>
      <!-- am kelly JavaScript -->
      <script src="/palette/resources/js/kelly.js"></script>
      <!-- am maps JavaScript -->
      <script src="/palette/resources/js/maps.js"></script>
      <!-- am worldLow JavaScript -->
      <script src="/palette/resources/js/worldLow.js"></script>
      <!-- Style Customizer -->
      <script src="/palette/resources/js/style-customizer.js"></script>
      <!-- Chart Custom JavaScript -->
      <script src="/palette/resources/js/chart-custom.js"></script>
      <!-- Custom JavaScript -->
      <script src="/palette/resources/js/custom.js"></script>
   </body>
</html>