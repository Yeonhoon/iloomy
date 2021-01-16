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
    <link rel="stylesheet" href="${root}/resources/css/mainhome.css"> <!-- footer, header css -->
    <script type="text/javascript">

    </script>
</head>
<body>
<div class="headerwrap">
    <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
</div>


<div class="container" align="center" >
    <div class="col-lg-6" align="center">

        <table border="1" style="text-align: center;">
            <thead>
            <tr>
                <th>no</th>
                <th>제목</th>
                <th>내용</th>
                <th>글쓴이</th>
                <th>날짜</th>
            </tr>
            </thead>
            <tbody>
                <tr>
                    <td><c:out value="${result.qnaNo}"/></td>
                    <td><c:out value="${result.qnaTitle}"/></td>
                    <td><c:out value="${result.qnaContent}"/></td>
                    <td><c:out value="${result.qnaUserid}"/></td>
                    <td><c:out value="${result.qnaDatetime}"/></td>
                </tr>
            </tbody>
        </table>


    </div>
</div>
<div class="footerwrap">
    <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
</div>
</body>
</html>