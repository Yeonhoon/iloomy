<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>

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

</head>
<body>
<div></div>
<div class="container" align="center">
    <h1><b>iloomy</b></h1>
    <div>
        <form id="findpwform" method="post">
            <input type="hidden" name="act" value="login">
            <div class="form-group" align="left" style="margin-top: 50px">
                <label for="">아이디</label> <input type="text" class="form-control" id="userid" name="id" placeholder="">
            </div>

            <div class="form-group" align="left">
                <label for="">이름</label> <input onkeydown="enterkey()" type="text" class="form-control" id="username"
                                                name="name" placeholder="">
            </div>

            <div class="form-group" align="right">
                <button type="button" class="btn btn-danger" onclick="findpw()">비밀번호찾기</button>
            </div>
        </form>
    </div>
</div>
</body>
<script type="text/javascript">
    function findpw() {
        var keyCode = window.event.keyCode;
        let id = document.getElementById("userid").value;
        let name = document.getElementById("username").value;
        if (id == "") {
            alert("아이디 입력!!!");
            return;
        } else if (name == "") {
            alert("이름 입력!!!");
            return;
        } else {
            var form_data = {
                id: id,
                name: name
            };

            $.ajax({
                url: "${root}/user/findpw",
                type: "POST",
                data: form_data,
                success:function (data) {
                    console.log(data);
                    console.log(data.result);
                    alert("비밀번호 : "+data.result);
                    location.href = "${root}/";
                }
            });
            <%--document.getElementById("findpwform").action = "${root}/user/findpw";--%>
            <%--document.getElementById("findpwform").submit();--%>
        }
    }

    function enterkey() {
        if (window.event.keyCode == 13) {
            findpw();
        }
    }
</script>
</html>