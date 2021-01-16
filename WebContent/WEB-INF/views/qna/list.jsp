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
    <script type="text/javascript">

    </script>
</head>
<body>

<div class="container" align="center">
    <div class="col-lg-6" align="center">
        <%--        ${list}--%>

        <%--          ${result["resultUser"]}<br>--%>

        <table border="1" style="text-align: center;">
            <thead>
            <tr>
                <th>no</th>
                <th>제목</th>
                <th>글쓴이</th>
                <th>날짜</th>
            </tr>
            </thead>

            <c:if test="${list.size() == 0 }">
                <tfoot>
                <tr>
                    <td colspan="3">현재 데이타가 없습니다.</td>
                </tr>
                </tfoot>
            </c:if>
            <tbody>
            <c:set var = "total" value = "0" />
            <c:forEach var="item" items="${list}" varStatus="status">
                <tr>
                    <td><a href="${root}/QnA/detail?no=${item.qnaNo}"><c:out value="${item.qnaNo}"/></a></td>
                    <td><c:out value="${item.qnaTitle}"/></td>
                    <td><c:out value="${item.qnaUserid}"/></td>
                    <td><c:out value="${item.qnaDatetime}"/></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>