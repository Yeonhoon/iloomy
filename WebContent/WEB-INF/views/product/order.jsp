<%--page 지시자 --%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>details</title>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${root}/resources/css/mainhome.css">
<link rel="stylesheet" href="${root}/resources/css/cart.css">
</head>

<body rightmargin="0">
	<div class="headerwrap">
		<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
	</div>
	<section id="row">
		<div class="contain">
			<div id="sec">
				<p style="font-size: 3rem;">장바구니</p>
			</div>
			<div id="order">
				01 장바구니 ---02 배송지 확인 --- <span style="color: red"> 03 주문완료</span>
			</div>
			<div id="sec">
				<p style="padding: 10px;">
					<b>주문 목록</b>
				</p>
			</div>
			<form id="chk" method="get" action="order">
				<table id="orderList">
					<tr style="color: #adb5bd;">
						<th>목록</th>
						<th colspan="3">상품정보</th>
						<th>주문 날짜</th>
						<th>수량</th>
						<th>주문금액</th>
						<th>배송 현황</th>
					</tr>
					<c:forEach var="orderItemList" items="${orderItemLists}" varStatus="status">
						<tr>
							<td>${status.count}</td>
							<td>${orderItemList.item.itemsName}</td>
							<td>${orderItemList.item.itemsOption}</td>
							<td>${orderItemList.item.itemsColor}</td>
							<td><fmt:formatDate value="${orderItemList.order.ordersDatetime}" pattern="yyyy-MM-dd" /></td>
							<td><span id="totalPrice">
									${orderItemList.orderItemsCount}</span></td>
							<td>
								<fmt:formatNumber
									value="${orderItemList.orderItemsPrice}" pattern="###,###,###"></fmt:formatNumber>원
							</td>
							<td>
								<a class="text-decoration-none" href="addressread?deliveryNo=${orderItemList.delivery.deliveryNo}">
									<b>${orderItemList.delivery.status}</b>
								</a>
							</td>
						</tr> 
					
					</c:forEach>
				</table>
				<!-- "checked" 속성은 기능관련 속성이라 prop 함수에서는 true/false로 출력 -->
				<div id="cartOrder">
					<a href="${root}/product/list" class="btn btn-info btn-sm"
						style="color: white">목록 보기</a>
				</div>
			</form>
		</div>
	</section>

	<div class="footerwrap" style="margin-top: -100px;">
		<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
	</div>
</body>

</html>