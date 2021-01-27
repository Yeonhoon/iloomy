<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>회원가입</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#registerBtn").click(function() {
		
		if($("#username").val() == "") {
			alert("이름 입력!!!");
			return;
		} else if($("#userid").val() == "") {
			alert("아이디 입력!!!");
			return;
		} else if($("#userpwd").val() == "") {
			alert("비밀번호 입력!!!");
			return;
		} else if($("#userpwd").val() != $("#pwdcheck").val()) {
			alert("비밀번호 확인!!!");
			return;
		} else {
			$("#memberform").attr("action", "${root}/user/regist").submit();
		}
	});
});

	function moveLogin() {
		document.location.href = "${root}/user/login";
	}
</script>
</head>
<body>

<div class="container" align="center">
	<div class="col-lg-6" align="center">
		<br>
		<h3> 회원가입 페이지 </h3>
		<form id="memberform" method="post" action="">
		<input type="hidden" name="act" id="act" value="">
			<div class="form-group" align="left">
				<label for="name">이름</label>
				<input type="text" class="form-control" id="username" name="username" placeholder="">
			</div>
			<div class="form-group" align="left">
				<label for="">아이디</label>
				<input type="text" class="form-control" id="userid" name="userid" placeholder="">
			</div>
			<div class="form-group" align="left">
				<label for="">비밀번호</label>
				<input type="password" class="form-control" id="userpwd" name="userpassword" placeholder="">
			</div>
			<div class="form-group" align="left">
				<label for="">비밀번호재입력</label>
				<input type="password" class="form-control" id="pwdcheck" name="pwdcheck" placeholder="">
			</div>

			<div class="form-group" align="left">
				<label for="tel">도시</label><br>
				<div id="tel" class="custom-control-inline">
				<input type="text" class="form-control" id="city" name="city" placeholder="">
				</div>
			</div>
			
			<div class="form-group" align="left">
				<label for="email">도로명</label><br>
				<div id="email" class="custom-control-inline">
				<input type="text" class="form-control" id="street" name="street" placeholder="">
				</div>
			</div>
			<div class="form-group" align="left">
				<label for="tel">우편변호</label><br>
				<div id="tel" class="custom-control-inline">
				<input type="text" class="form-control" id="zipcode" name="zipcode" placeholder="">
				</div>
			</div>
			
			<div class="form-group" align="center">
				<button type="button" class="btn btn-primary" id="registerBtn">회원가입</button>
				<button type="reset" class="btn btn-warning">초기화</button>
				<br><br>
				<button type="button" class="btn btn-primary" onclick="javascript:moveLogin();">로그인 하러가기</button>
			</div>
			
		</form>
	</div>
</div>


</body>
</html>