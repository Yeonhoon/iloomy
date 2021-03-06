<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ko">
<head>
    <title>공지사항</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${root}/resources/css/mainhome.css">
    <link rel="stylesheet" href="${root}/resources/css/qna.css"> <!-- footer, header css -->
     <style type="text/css">
    	.container a:hover{
    		color:white;
    	}
    </style>
    <script type="text/javascript">

        function list() {
            $.ajax({
                url: "${root}/Notice/list",
                type: "get"
            }).done(function (result) {
                console.log("결과확인");

                var html = jQuery('<div>').html(result);
                var contents = html.find("div#indexListAjax").html();
                $("#tabl1").html(contents);

            }).fail(function (jqXHR, textStatus, errorThrown) {
                console.log("에러");
                console.log(jqXHR);
                console.log(textStatus);
                console.log(errorThrown);
            });
        }
        function list2() {
            $.ajax({
                url: "${root}/Notice/list2",
                type: "get"
            }).done(function (result) {
                console.log("결과확인");
				
                var html = jQuery('<div>').html(result);
                var contents = html.find("div#indexListAjax").html();
                $("#tabl1").html(contents);

            }).fail(function (jqXHR, textStatus, errorThrown) {
                console.log("에러");
                console.log(jqXHR);
                console.log(textStatus);
                console.log(errorThrown);
            });
        }
        $(document).ready(list2());

        function pagingBoard(no) {
			console.log("test 버튼")
			$.ajax({
				url: "${root}/Notice/list?pageNo="+no,
				type: "get"
			}).done(function (result) {
				console.log("결과확인");

				var html = jQuery('<div>').html(result);
				var contents = html.find("div#indexListAjax").html();
				$("#tabl1").html(contents);

			}).fail(function (jqXHR, textStatus, errorThrown) {
				console.log("에러");
				console.log(jqXHR);
				console.log(textStatus);
				console.log(errorThrown);
			});

		}
    </script>
</head>
	<body>
		<div class="headerwrap">
		    <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
		</div>
	
	<div id="row">
		<div class="container" align="center" style="margin-bottom: 50px;">
		    <a onclick="list2()" class="btn btn-light"> 자주 묻는 질문</a>
			<a onclick="list()" class="btn btn-light" style=""> 공지사항</a>
		    <div id="tabl1" style="margin-top: 5%;"></div>
		</div>
	</div>	
		<div class="footerwrap" style="margin-top: -100px;">
		    <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
		</div>
	</body>
</html>