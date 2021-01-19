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

    <style type="text/css">

    </style>
</head>
<body>

<div id="indexListAjax">
    <style>
       .questionfreq .flip:hover {
            cursor: pointer;
            font-weight: bold;
        }

       .questionfreq li{
           width: 50%;
           background-color: #f1f3f5;
           text-align: left;
       }
       .questionfreq ul{
           text-align: left;
           width: 50%;
           /*border-top: 1px solid lightgrey;*/
           padding-top: 20px;
           padding-bottom : 20px;
           border-bottom: 1px solid  #f1f3f5;
           margin-bottom: 0;
       }
    </style>
    <div class="questionfreq">
        <ul style="text-align: center"><h3>자주 묻는 질문</h3></ul>
        <ul class="flip" onclick="myShowFunction(0)">Q&nbsp&nbsp&nbsp직접거래를 요청할 경우 어떻게 해야하나요?</ul>
        <li>
            <div id="panel0" style="display: none;">
                <p style="float: left; margin-bottom: 30px;">A&nbsp&nbsp&nbsp</p>
                <p style="text-align: justify">
                    쿠팡은 판매자 직접거래를 허용하고 있지 않습니다.
                    판매자가 현금결제를 통한 직거래를 유도하는 경우 절대 응하지 마시고, 즉시 사기 거래 신고센터로 신고하시기 바랍니다.
                </p>
            </div>
        </li>
        <ul class="flip" onclick="myShowFunction(1)">Q 배송이 지연된다는 문자</ul>
        <li>
            <div id="panel1" style="display: none;">
                <p style="float: left; margin-bottom: 30px;">A&nbsp&nbsp&nbsp</p>
                <p>
                    배송지연으로 불편을 드려 죄송합니다.
                    받으신 문자로 안내드린 날짜에 다시 방문할 예정입니다.
                </p>
            </div>
        </li>
        <ul class="flip" onclick="myShowFunction(2)">Q 상품을 받지 못했는데 배송완료</ul>
        <li>
            <div id="panel2" style="display: none;">
                <p style="float: left; margin-bottom: 30px;">A&nbsp&nbsp&nbsp</p>
                <p>
                    만약 '배송완료'로 확인되나 상품을 받지 못했다면 다음을 먼저 확인해 주십시오
                    1) 배송완료 문자 혹은 [마이쿠팡 > 주문목록] > [배송조회]에서 사진 확인
                    2) 대리 수령 가능 장소(경비실, 이웃, 주변 편의점 등) 확인
                </p>
            </div>
        </li>
        <ul class="flip" onclick="myShowFunction(3)">Q 주문한 상품은 언제 배송</ul>
        <li>
            <div id="panel3" style="display: none;">
                <p style="float: left; margin-bottom: 30px;">A&nbsp&nbsp&nbsp</p>
                <p>
                    주문하신 상품은 결제완료 후 안내된 배송예정일까지 배송됩니다.
                    배송예정일은 판매자 및 배송지에 따라 차이가 있을 수 있습니다.
                    또한, 도서산간 지역 배송 혹은 천재지변으로 인해 배송일정이 변동될 수 있습니다.
                </p>
            </div>
        </li>
        <ul class="flip" onclick="myShowFunction(4)">Q 휴일에 상품 배송</ul>
        <li>
            <div id="panel4" style="display: none;">
                <p style="float: left; margin-bottom: 30px;">A&nbsp&nbsp&nbsp</p>
                <p>
                    일반 택배사는 휴일에 운영하지 않아요
                </p>
            </div>
        </li>
        <ul class="flip" onclick="myShowFunction(5)">Q 주문한 상품 취소</ul>
        <li>
            <div id="panel5" style="display: none;">
                <p style="float: left; margin-bottom: 30px;">A&nbsp&nbsp&nbsp</p>
                <p>
                    주문하신 상품은 마이쿠팡에서 쉽고 빠르게 취소 및 반품을 신청할 수 있습니다.
                    판매자배송 상품의 경우 판매자에게 직접 문의하여 취소도 가능합니다.
                </p>
            </div>
        </li>
        <ul class="flip" onclick="myShowFunction(6)">Q 상품이 오지 않아 주문 취소</ul>
        <li>
            <div id="panel6" style="display: none;">
                <p style="float: left; margin-bottom: 30px;">A&nbsp&nbsp&nbsp</p>
                <p>
                    상품 배송일정은 상품별로 다르며, 주문 시 안내해 드린 배송예정일에 배송됩니다.
                    단, 배송상태에 따라 [주문취소]가 되지 않아 [반품접수]로 진행될 수 있습니다.
                </p>
            </div>
        </li>

    </div>
    <script>

        function myShowFunction(no) {
            var o = document.getElementById("panel" + no)
            if (o.style.display === 'block') {
                o.style.display = 'none';
            } else {
                o.style.display = 'block';
            }

            return false;

            // document.getElementById("panel").style.display = "block";
        }

    </script>

</div>
</body>

</html>