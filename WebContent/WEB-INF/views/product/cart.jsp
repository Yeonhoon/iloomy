<%--page 지시자 --%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>details</title>
		<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="${root}/resources/css/mainhome.css">
		<link rel="stylesheet" href="${root}/resources/css/cart.css">
	</head>
	
	<body rightmargin="0">
		<div class="headerwrap">
      		<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
		</div>
		<section>
			<article>
				<div id="order">
					01 장바구니 --- 02 주문서 작성 --- 03 주문완료
				</div>
				<div id="sec">
					<p style="font-size: 3rem;">장바구니</p>
					<p style=" padding: 10px;"><b>주문하실 상품을 선택해주세요</b></p>
				</div>
				<button id="button" type="button" class="btn btn-danger btn-sm">공간제안 서비스</button>
				<table id="orderList">
					<tr style="color: #adb5bd;">
						<td><i class="far fa-check-circle"></i></td>
						<td>상품정보</td>
						<td>단가</td>
						<td>수량</td>
						<td>상품금액</td>
						<td>주문</td>
					</tr>
					<!-- 추가 하면 됨 
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr> -->
				
				</table>
			</article>
		</section>
		<div class="footerwrap">
      		<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
		</div>
	</body>
</html>