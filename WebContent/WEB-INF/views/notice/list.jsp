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
            <li class="fl tc w70 title t_line">번호</li>
            <li class="fl tc w500 title t_line">제목</li>
            <li class="fl tc w120 title t_line">글쓴이</li>
            <li class="fl tc w100 title t_line">작성일</li>
            <c:if test="${userinfo eq 'admin'}">
                <li class="fl tc w100 title ">기능</li>
            </c:if>
            <c:if test="${userinfo ne 'admin'}">
                <li class="fl tc w100 title ">조회수</li>
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
                <li class="fl tc w70 list t_line lt_line"><a href="javascript:void(0);"  onclick="myShowFunction(${item.noticeNo})"><c:out value="${item.noticeNo}"/></a></li>
                <li class="fl tc w500 list t_line lt_line"><a href="javascript:void(0);"  onclick="myShowFunction(${item.noticeNo})"><c:out value="${item.noticeTitle}"/></a></li>
                <li class="fl tc w120 list t_line lt_line"><c:out value="${item.noticeUser}"/></li>
                <li class="fl tc w100 list t_line lt_line"><fmt:formatDate value="${item.noticeDatetime}" pattern="yyyy-MM-dd"/></li>
                <c:if test="${userinfo eq 'admin'}">
                    <li class="fl tc w100 list  lt_line"><a style="color: red" href="${root}/Notice/delete?no=${item.noticeNo}">삭제</a></li>
                </c:if>
                <c:if test="${userinfo ne 'admin'}">
                    <li class="fl tc w100 list  lt_line">0</li>
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
    <div>
        <a href="${root}/Notice/list?pageNo=1" class="btn btn-outline-info btn-sm mr-1">처음 </a>
        <c:if test="${pager.groupNo>1}">
            <a href="${root}/Notice/list?pageNo=${pager.startPageNo-1}" class="btn btn-outline-info btn-sm mr-1">이전 </a>
        </c:if>
        <c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
            <c:if test="${i==pager.pageNo}">
                <a href="${root}/Notice/list?pageNo=${i}" class="btn btn-warning btn-sm mr-1">${i}</a>
            </c:if>
            <c:if test="${i!=pager.pageNo}">
                <a href="${root}/Notice/list?pageNo=${i}" class="btn btn-outline-warning btn-sm mr-1">${i}</a>
            </c:if>
        </c:forEach>
        <c:if test="${pager.groupNo < pager.totalGroupNo}">
            <a href="${root}/Notice/list?pageNo=${pager.endPageNo+1}" class="btn btn-outline-info btn-sm mr-1">다음 </a>
        </c:if>
        <a href="${root}/Notice/list?pageNo=${pager.totalPageNo}" class="btn btn-outline-info btn-sm mr-1">맨끝 </a>
    </div>
    <button id="addBtn" onclick="moreList();"><span>더보기</span></button>
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

        function moreList() {

            var startNum = $("#listBody tr").length;  //마지막 리스트 번호를 알아내기 위해서 tr태그의 length를 구함.
            var addListHtml = "";
            console.log("startNum", startNum); //콘솔로그로 startNum에 값이 들어오는지 확인

            $.ajax({
                url: "${root}/Notice/listPlus",
                type: "get",
                success : function(data) {
                    if(data.length < 10){
                        $("#addBtn").remove();   // 더보기 버튼을 div 클래스로 줘야 할 수도 있음
                    }else{
                        var addListHtml ="";
                        if(data.length > 0){
                            console.log(data);
                            // for(var i=0; i<data.length;i++) {
                            //
                            //     var idx = Number(startNum)+Number(i)+1;
                            //     // 글번호 : startNum 이  10단위로 증가되기 때문에 startNum +i (+1은 i는 0부터 시작하므로 )
                            //     addListHtml += "<tr>";
                            //     addListHtml += "<td>"+ idx + "</td>";
                            //     addListHtml += "<td>"+ data[i].title + "</td>";
                            //     addListHtml += "<td>"+ data[i].description + "</td>";
                            //     addListHtml += "</tr>";
                            // }
                            // $("#listBody").append(addListHtml);
                        }
                    }
                }
            });

        }
    </script>
</div>
</body>

</html>