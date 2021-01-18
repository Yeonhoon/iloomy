<%--page 지시자 --%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}"/>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
			<div id="sec">
				<p style="font-size: 3rem;">장바구니</p>
			</div>
				<div id="order">
				01 장바구니 --- 02 주문서 작성 --- 03 주문완료
				</div>
			<div id="sec">
				<p style=" padding: 10px;"><b>주문하실 상품을 선택해주세요</b></p>
			</div>
			
			<table id="orderList">
				<tr style="color: #adb5bd;">
					<th><input type="checkbox" name="checkAll" id="checkAll"/></th>
					<th colspan="2">상품정보</th>
					<th>단가</th>
					<th>수량</th>
					<th>상품금액</th>
					<th>주문</th>
				</tr>
				 <c:forEach var="product" items="${plist}">
				 	<tr>
						<td><input type="checkbox" name="check" class="check"></td>
						<td>${product.pName}</td>
						<td>${product.pColor}</td>
						<td><fmt:formatNumber value="${product.pPrice}" pattern="###,###,###"></fmt:formatNumber>원 </td>
						<td>${product.no}</td>
						<td><fmt:formatNumber value="${product.pPrice}" pattern="###,###,###"></fmt:formatNumber>원</td>
						<td>
							<a href="#" type="button" class="btn btn-outline-danger btn-sm">바로 구매</a> <br/>
							<a href="#" type="button" class="btn btn-outline-secondary btn-sm" style="margin-top: 10px;">위시리스트</a>
						</td>
					</tr>
				 </c:forEach>
			</table>
			<!-- "checked" 속성은 기능관련 속성이라 prop 함수에서는 true/false로 출력 -->
			<script type="text/javascript">
				$("#checkAll").click(function() {
					var ch = $("#checkAll").prop("checked");
					
					if(ch) {
						$(".check").prop("checked", true);
					} else {
						$(".check").prop("checked", false);
					}
				})
				
				$(".check").click(function() {
					$("#checkAll").prop("checked", false);
				})
				
			</script>
			<div id="cartOrder">
				<a href="${root}/product/cart2" class="btn btn-danger btn-sm" style="color: white">결제 하기</a>
				<a href="${root}/product/list" class="btn btn-info btn-sm" style="color: white">목록 보기</a>
			</div>
			
		</section>
		
		<div class="footerwrap">
      		<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
		</div>
	</body>
</html>