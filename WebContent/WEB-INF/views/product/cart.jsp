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
		<section id="row">		
			<div class="contain">

				<div id="sec">
					<p style="font-size: 3rem;">장바구니</p>
				</div>
					<div id="order">
						<span style="color:red">01 장바구니</span> --- 02 배송지 확인 --- 03 주문완료
					</div>
				<div id="sec">
					<p style=" padding: 10px;"><b>주문하실 상품을 선택해주세요</b></p>
				</div>
				<form id="chk" method="get" action="order">
					<table id="orderList">
						<tr style="color: #adb5bd;">
							<th><input type="checkbox" name="checkAll" id="checkAll"/></th>
							<th colspan="3">상품정보</th>
							<th>단가</th>
							<th>수량</th>
							<th>상품금액</th>
							<th>주문</th>
						</tr>
						
					<c:forEach var="orderItem" items="${orderItemLists}"  varStatus="status">
						<tr class="countItem">
								<td>
									<input type="checkbox" name="check" class="check" value="${status.index}">
									<input type="hidden" name="orderItemsNo${status.index}" id="orderItemsNo${status.index}" value="${orderItem.orderItemsNo}">
									<input type="hidden" name="ordersOrderNo${status.index}" id="ordersOrderNo${status.index}" value="${orderItem.ordersOrderNo}">
									<input type="hidden" name="itemsItemsNo${status.index}" id="itemsItemsNo${status.index}" value="${orderItem.itemsItemsNo}">
								</td>
								<td>${orderItem.item.itemsName}</td>
								<td>${orderItem.item.itemsColor}</td>
								<td>${orderItem.item.itemsOption}</td>
								<%-- <td><fmt:formatNumber value="${orderItem.orderItemsPrice}" pattern="###,###,###"></fmt:formatNumber>원 </td> --%>
								<td><span id="price${status.index}"> ${orderItem.item.itemsPrice}</span></td>
								<td>
									<a id="countdown${status.index}" style="color:black" onclick="javascript:countdown(${status.index})"><i class="fas fa-caret-down fa-lg mr-2" ></i></a>
									<span id="count${status.index}">${orderItem.orderItemsCount}</span>
									<input type="hidden" id="orderItemsCount${status.index}" name="orderItemsCount${status.index}" value="1"/>
									<a id="countup${status.index}" onclick="javascript:countup(${status.index})" style="color:black"><i class="fas fa-caret-up fa-lg ml-2"></i></a>
								</td>
								<td>
									<span id="totalPrice${status.index}"> ${orderItem.item.itemsPrice}</span>원
									<input type="hidden" id="orderItemsPrice${status.index}" name="orderItemsPrice${status.index}" value="${orderItem.orderItemsPrice}"/>
								</td>
								<td>
									<a href="#" type="button" class="btn btn-outline-danger btn-sm">바로 구매</a> <br/>
									<a href="#" type="button" class="btn btn-outline-secondary btn-sm" style="margin-top: 10px;">삭제</a>
								</td>
							</tr> 
					</c:forEach>
					</table>
					<!-- "checked" 속성은 기능관련 속성이라 prop 함수에서는 true/false로 출력 -->
					<div id="cartOrder">
						<button id="chkbtn" class="btn btn-danger btn-sm" style="color: white">결제 하기</button>
						<a href="${root}/product/list" class="btn btn-info btn-sm" style="color: white">목록 보기</a>
					</div>
				</form>
			</div>
		</section>
		
		<div class="footerwrap" style="margin-top: -100px;">
      		<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
		</div>
	</body>
	<script type="text/javascript">
	 	function countdown(no) {
	 		var count = $("#count"+no).text();
	 		console.log("count:" +count);
	 		var price = $("#price"+no).text();
	 		console.log("price:" +price);
	 		var total = 0;
	 		if (count === '1') {
				alert("최소수량입니다.");
				count = 1;
				return;
	 		}else {
				count --;
				total = price*count;
				console.log("total" +total);
				$("#count"+no).text(count);
				$("#totalPrice"+no).text(total);
				$("#orderItemsCount"+no).val(count);
				$("#orderItemsPrice"+no).val(total);
			}
	 	}
	 	
	 	function countup(no) {
	 		console.log("click 확인" +no);
	 		var count = $("#count"+no).text();
	 		console.log(count);
	 		var price = $("#price"+no).text();
	 		console.log("price:" +price);
	 		var total = 0;
	 		if (count === '10') {
				alert("최대수량입니다.");
				return;
			} else {
				count ++;
				console.log("price:" +price);
				total = price*count;
				console.log("total" +total);
				$("#count"+no).text(count);
				$("#totalPrice"+no).text(total);
				$("#orderItemsCount"+no).val(count);
				$("#orderItemsPrice"+no).val(total);
			}
	 	}
	 	
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
	
	
</html>