<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/main.css">
	</head>
	
	<body>
		<div class="wrap">
			<%--헤더 --%>
			<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
			<%-- 아래와 같은 방법은 복사 붙여넣기라서 동일한 내용이 있으면 에러가 난다.
			<%@ include file="/WEB-INF/views/include/header.jsp" %> --%>
			
			<%--내용 --%>
			<div class="mainCenter">
				
					<div class="content">
						
						<div class="sector">
							<h5>DTO의 객체 데이터 읽기</h5>
							<div>
							<%-- ${ }가 EL --%>
								<div>품명: ${BestSeller.uproduct} </div>
								<div>가격: ${BestSeller.uprice}</div>
								<div>모델명: ${BestSeller.umodel}</div>
								<div>브랜드: ${BestSeller.ubrand}</div>
								<div>제조사: ${BestSeller.umnc}</div>
								<div>원산지: ${BestSeller.uorigin}</div>
							</div>
						</div>

</body>
</html>