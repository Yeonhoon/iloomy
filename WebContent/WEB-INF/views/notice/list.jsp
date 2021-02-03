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
        .w790 {width: 790px; height: 100px;}
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
        .listImage {
            height: 400px;
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
            <li class="fl tc w70 title t_line"></li>
            <li class="fl tc w500 title t_line">제목</li>
            <li class="fl tc w120 title t_line">글쓴이</li>
            <li class="fl tc w100 title t_line">작성일</li>
            <c:if test="${userinfo eq 'admin'}">
                <li class="fl tc w100 title ">기능</li>
            </c:if>
            <c:if test="${userinfo ne 'admin'}">
                <li class="fl tc w100 title "></li>
            </c:if>

        </ul>

        <c:if test="${list.size() == 0 }">
            <ul class="board">
                <p>현재 데이타가 없습니다.</p>
            </ul>
        </c:if>
        <div id="testtest">
        <c:forEach var="item" items="${list}" varStatus="status">
            <ul class="board">
                <li class="fl tc w70 list t_line lt_line"><a href="javascript:void(0);"  onclick="myShowFunction(${item.noticeNo})">공지</a></li>
                <li class="fl tc w500 list t_line lt_line"><a href="javascript:void(0);"  onclick="myShowFunction(${item.noticeNo})"><c:out value="${item.noticeTitle}"/></a></li>
                <li class="fl tc w120 list t_line lt_line"><c:out value="${item.noticeUser}"/></li>
                <li class="fl tc w100 list t_line lt_line"><fmt:formatDate value="${item.noticeDate}" pattern="yyyy-MM-dd"/></li>
                <c:if test="${userinfo eq 'admin'}">
                    <li class="fl tc w100 list  lt_line"><a style="color: red" href="${root}/Notice/delete?no=${item.noticeNo}">삭제</a></li>
                </c:if>
                <c:if test="${userinfo ne 'admin'}">
                    <li class="fl tc w100 list  lt_line"><a href="javascript:void(0);"  onclick="myShowFunction(${item.noticeNo})">▼</a></li>
                </c:if>
            </ul>
            <c:choose>
                <c:when test="${userinfo eq 'admin'}">
                    <ul class="board" id="panel${item.noticeNo}" style="display: none;">
                        <c:if test="${item.noticeAttachSname ne null}">
                            <li  class="fl tc w890 listImage t_line lt_line" >
                                <c:out value="${item.noticeContent}"/> <br>
                                <img class="rounded" src="${root}/Notice/noticeAttach?no=${item.noticeNo}" width="200px"> <br/>
                            </li>
                        </c:if>
                        <c:if test="${item.noticeAttachSname eq null}">
                            <li  class="fl tc w890 list t_line lt_line" >
                                <c:out value="${item.noticeContent}"/> <br>
                            </li>
                        </c:if>

                    </ul>
                </c:when>
                <c:otherwise>
                    <ul class="board" id="panel${item.noticeNo}" style="display: none;">
                        <c:if test="${item.noticeAttachSname ne null}">
                            <li  class="fl tc w890 listImage t_line lt_line" >
                                <c:out value="${item.noticeContent}"/> <br>
                                <img class="rounded" src="${root}/Notice/noticeAttach?no=${item.noticeNo}" width="200px"> <br/>
                            </li>
                        </c:if>
                        <c:if test="${item.noticeAttachSname eq null}">
                            <li  class="fl tc w890 list t_line lt_line" >
                                <c:out value="${item.noticeContent}"/> <br>
                            </li>
                        </c:if>
                    </ul>
                </c:otherwise>
            </c:choose>
        </c:forEach>
        </div>
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
    <div style="display:inline-block; padding-top: 20px;">
        <a class="btn btn-outline-info btn-sm mr-1" onclick="pagingBoard(1);">처음 </a>
        <c:if test="${pager.groupNo>1}">
            <a class="btn btn-outline-info btn-sm mr-1" onclick="pagingBoard(${pager.startPageNo-1});">이전 </a>
        </c:if>
        <c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
            <c:if test="${i==pager.pageNo}">
                <a class="btn btn-warning btn-sm mr-1" onclick="pagingBoard(${i});">${i}</a>
            </c:if>
            <c:if test="${i!=pager.pageNo}">
                <a class="btn btn-outline-warning btn-sm mr-1" onclick="pagingBoard(${i});">${i}</a>
            </c:if>
        </c:forEach>
        <c:if test="${pager.groupNo < pager.totalGroupNo}">
            <a class="btn btn-outline-info btn-sm mr-1" onclick="pagingBoard(${pager.endPageNo+1});">다음 </a>
        </c:if>
        <a class="btn btn-outline-info btn-sm mr-1" onclick="pagingBoard(${pager.totalPageNo});">맨끝 </a>
    </div>

</div>
</body>

</html>