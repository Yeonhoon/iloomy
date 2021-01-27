<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
    <title>로그인</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="${root}/resources/css/login.css">
    <script type="text/javascript">
        function login() {
            if (document.getElementById("userid").value == "") {
                alert("아이디 입력!!!");
                return;
            } else if (document.getElementById("userpassword").value == "") {
                alert("비밀번호 입력!!!");
                return;
            } else {
                document.getElementById("loginform").action = "${root}/user/login";
                document.getElementById("loginform").submit();
            }
        }

        function moveJoin() {
            document.location.href = "${root}/user/regist";
        }

        function moveFindPwd() {
            document.location.href = "${root}/user/findpwd";
        }
    </script>
</head>
<body>
<div></div>
<div class="container" align="center" >
	<h1><b>iloomy</b></h1>
    <div>
        <form id="loginform" method="post" action="">
            <input type="hidden" name="act" value="login">
            <div class="form-group" align="left" style="margin-top: 50px">
                <label for="">아이디</label> <input type="text" class="form-control" id="userid" name="id" placeholder="">
            </div>

            <div class="form-group" align="left">
                <label for="">비밀번호</label> <input type="password" class="form-control" id="userpassword" name="passWord" placeholder="">
            </div>

            <div class="form-group" align="right">
                <button type="button" class="btn btn-danger" onclick="javascript:login();">로그인</button>
                <button type="button" class="btn btn-primary" onclick="javascript:moveJoin();">회원가입</button><br/>
                <a id="pw" href="#" type="button" onclick="javascript:moveFindPwd();">비밀번호찾기</a>
            </div>
        </form>
    </div>
</div>
</body>
</html>