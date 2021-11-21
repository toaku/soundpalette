<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>SOUND PALETTE</title> ﻿
</head>
<body>
	<%@ include file="../main/main-top.jspf"%>

	<div id="content-page" class="content-page" align="center">
		<div class="container-fluid">
			<div class="center">
				<div class="col-md-12" style="margin-left: -60%;">
					<div class="profile-img-edit" style="margin-bottom: -20%;">
						<img class="profile-pic" src="images/user/11.png"
							alt="profile-pic">
						<div class="p-image">
							<i class="ri-pencil-line upload-button"></i> <input
								class="file-upload" type="file" accept="image/*" />
						</div>
					</div>
				</div>


				<div class=" center align-items-center">
					<div class="form-group col-sm-3" style="display: -webkit-box;">
						<label for="fname" style="margin-left: -2px; padding-top: 8px;">이름:</label>
						<input type="text" class="form-control" value="Barry"
							style="margin-left: 15%;">
					</div>
					<div class="form-group col-sm-3" style="display: -webkit-box;">
						<label for="lname" style="margin-left: -2px; padding-top: 7px;">Email:</label>
						<input type="text" class="form-control" value="Tech"
							style="margin-left: 8.4%;">
					</div>
					<div class="form-group col-sm-3" style="display: -webkit-box;">
						<label for="uname" style="margin-left: -2px; padding-top: 7px;">닉네임:</label>
						<input type="text" class="form-control" value="Barry@01"
							style="margin-left: 9.5%;">
						<button type="submit" class="btn btn-primary mr-2"
							style="margin-left: 25px; margin-top: 5px">수정</button>
					</div>
					<div class="form-group col-sm-3" style="display: -webkit-box;">
						<label for="dob" style="margin-left: -2px; padding-top: 7px;">생년월일:</label>
						<input class="form-control" value="1984-01-24"
							style="margin-left: 3.6%;">
					</div>
					<div class="form-group col-sm-3" style="display: -webkit-box;">
						<label for="uname" style="margin-left: -2px; padding-top: 7px;">비밀번호:</label>
						<input type="text" class="form-control" value="Barry@01"
							style="margin-left: 3.6%;">
						<button type="submit" class="btn btn-primary mr-2"
							style="margin-left: 25px; margin-top: 5px;">수정</button>
					</div>
				</div>

				<button type="reset" class="btn iq-bg-danger"
					style="margin-left: 43%;">탈퇴하기</button>

			</div>

		</div>

	</div>

	<%@ include file="../main/main-Footer.jspf"%>



</body>
</html>