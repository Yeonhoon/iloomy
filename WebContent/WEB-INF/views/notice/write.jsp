<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>글작성</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#writeBtn").click(function() {
		$("#writeForm").attr("action", "${root}/Notice/board/new").submit();
	});
});

</script>
</head>
<body>

<div class="container" align="center">
	<div class="col-lg-6" align="center">
		<br>
		<h3> 글쓰기 </h3>
		<form  enctype="multipart/form-data" id="writeForm" method="post" action="">
		<input type="hidden" name="act" id="act" value="">

			<div class="form-group" align="left">
				<label for="">제목</label>
				<input type="text" class="form-control" id="noticeTitle" name="noticeTitle" placeholder="">
			</div>
			<div class="form-group" align="left">
				<label for="">글내용</label>
				<textarea class="form-control" id="noticeContent" name="noticeContent" rows="10" placeholder=""></textarea>
			</div>
			<div class="form-group">
				<label for="">첨부</label><br/>
				<input type="file" id="noticeAttach" name="noticeAttach"/>
			</div>
			<div class="form-group" align="center">
				<button type="button" class="btn btn-primary" id="writeBtn">글 저장</button>
			</div>
			<input type="hidden" name="noticeUser" value="admin" />
		</form>
	</div>
</div>


</body>
</html>