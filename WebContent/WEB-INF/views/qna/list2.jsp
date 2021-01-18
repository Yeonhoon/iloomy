<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <link rel="stylesheet" href="${root}/resources/css/mainhome.css"> <!-- footer, header css -->

</head>
<body>

<div id="indexListAjax">

    <ul class="flip" onclick="myShowFunction(0)">직접거래를 요청할 경우 어떻게 해야하나요?</ul>
    <div id="panel0" style="display: none;">
        <p>
            쿠팡은 판매자 직접거래를 허용하고 있지 않습니다.
            판매자가 현금결제를 통한 직거래를 유도하는 경우 절대 응하지 마시고, 즉시 사기 거래 신고센터 (02-2621-4699)로 신고하시기 바랍니다.
        </p>
    </div>

    <ul class="flip" onclick="myShowFunction(1)">배송이 지연된다는 문자</ul>
    <div id="panel1" style="display: none;">
        <p>
            배송지연으로 불편을 드려 죄송합니다.
            받으신 문자로 안내드린 날짜에 다시 방문할 예정입니다.
        </p>
    </div>



    <script>

        function myShowFunction(no) {
            var o=document.getElementById("panel"+no)
            if(o.style.display === 'block')
            {
                o.style.display='none';
            }
            else {
                o.style.display='block';
            }

            return false;

            // document.getElementById("panel").style.display = "block";
        }

    </script>

</div>
</body>

</html>