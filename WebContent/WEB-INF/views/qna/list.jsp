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
    <style>
        .qnatable table {
            width: 100%;
            border-top: 1px solid #444444;
            border-collapse: collapse;
        }

        .qnatable th, td {
            border-bottom: 1px solid #444444;
            padding: 10px;
        }
        /* 공통옵션 */

        .fl {float:left; }
        .tc {text-align:center; }

        /* 게시판 목록 */
        .board {width: 950px; }
        .w70 {width:70px; height: 100px;}
        .w500 {width:500px; height: 100px;}
        .w120 {width:120px; height: 100px;}
        .w100 {width:100px; height: 100px;}
        .w890 {width: 890px; height: 100px;}
        .title {
            height: 50px;
            line-height: 50px;
            background: #F3ECE3;
            font-weight: bold;
        }
        .t_line {border-right:solid 0px #D7D7D7;}
        .lt_line {border-bottom:solid 1px #D7D7D7;}
        .list {
            height: 40px;
            line-height: 40px;
            background: white;
        }
        
        .list:hover{
        	background-color: #FCFAFA;
        }
        
    </style>
    <div class="uliltable">
        <!---기본 메뉴--->
        <ul class="board">
            <li class="fl tc w70 title t_line">번호</li>
            <li class="fl tc w500 title t_line">제목</li>
            <li class="fl tc w120 title t_line">글쓴이</li>
            <li class="fl tc w100 title t_line">작성일</li>
            <li class="fl tc w100 title ">조회수</li>
        </ul>
        <c:if test="${list.size() == 0 }">
            <ul class="board">
                <p>현재 데이타가 없습니다.</p>
            </ul>
        </c:if>

        <c:forEach var="item" items="${list}" varStatus="status">
            <ul class="board">
                <li class="fl tc w70 list t_line lt_line"><a href="javascript:void(0);"  onclick="myShowFunction(${item.qnaNo})"><c:out value="${item.qnaNo}"/></a></li>
                <li class="fl tc w500 list t_line lt_line"><a href="javascript:void(0);"  onclick="myShowFunction(${item.qnaNo})"><c:out value="${item.qnaTitle}"/></a></li>
                <li class="fl tc w120 list t_line lt_line"><c:out value="${item.qnaUserid}"/></li>
                <fmt:formatDate var="resultRegDt" value="${item.qnaDatetime}" pattern="yyyy-MM-dd"/>
                <li class="fl tc w100 list t_line lt_line"><c:out value="${resultRegDt}"/></li>
                <li class="fl tc w100 list  lt_line">0</li>
            </ul>
            <ul class="board" id="panel${item.qnaNo}" style="display: none;">
                <li  class="fl tc w890 list t_line lt_line" ><c:out value="${item.qnaContent}"/>
                </li>
            </ul>

        </c:forEach>

    </div>

    <script>
        function myShowFunction(no) {
            console.log(no)
            var o=document.getElementById("panel"+no);
            console.log(o)
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