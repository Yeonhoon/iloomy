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
						<span style="color:red">01 장바구니</span> --- 02 주문서 작성 --- 03 주문완료
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
						
						<!-- test.add(option);
				test.add(color);
				test.add(name); -->
					<c:forEach var="orderItem" items="${orderItemLists}"  varStatus="status">
						<tr class="countItem">
								<td><input type="checkbox" name="check" class="check" value="${orderItem.orderItemsNo}"></td>
								<td>${orderItem.options.get(2)}</td>
								<td>${orderItem.options.get(0)}</td>
								<td>${orderItem.options.get(1)}</td>
								<%-- <td><fmt:formatNumber value="${orderItem.orderItemsPrice}" pattern="###,###,###"></fmt:formatNumber>원 </td> --%>
								<td><span id="price${status.index}"> ${orderItem.orderItemsPrice}</span></td>
								<td>
									<a id="countdown${status.index}" style="color:black" onclick="javascript:countdown(${status.index})"><i class="fas fa-caret-down fa-lg mr-2" ></i></a>
									<span id="count${status.index}">${orderItem.orderItemsCount}</span>
									<input type="hidden" class="orderItemsCount" name="orderItemsCount" value="1"/>
									<a id="countup${status.index}" onclick="javascript:countup(${status.index})" style="color:black"><i class="fas fa-caret-up fa-lg ml-2"></i></a>
								</td>
								<td>
									<span id="totalPrice${status.index}"> ${orderItem.orderItemsPrice}</span>원
									<input type="hidden" id="orderItemsPrice${status.index}" name="orderItemsPrice" value="${orderItem.orderItemsPrice}"/>
								</td>
								<td>
									<a href="#" type="button" class="btn btn-outline-danger btn-sm">바로 구매</a> <br/>
									<a href="#" type="button" class="btn btn-outline-secondary btn-sm" style="margin-top: 10px;">삭제</a>
								</td>
							</tr> 
					</c:forEach>
					<!-- 
						<tr>
							<td><input type="checkbox" name="check" class="check" value="1"></td>
							<td>asd</td>
							<td>asd</td>
							<td>asd</td>
							<td><span id="price0"> 100000</span>원</td>
							<td><a id="countdown0" style="color:black" onclick="javascript:countdown(0)"><i class="fas fa-caret-down fa-lg mr-2" ></i></a>
									<span id="count0">1</span>
									<input type="hidden" id="orderItemsCount0" name="orderItemsCount" value=""/>
									<a id="countup0"  onclick="javascript:countup(0)" style="color:black"><i class="fas fa-caret-up fa-lg ml-2"></i></a></td>
							<td><span id="totalPrice0"> 100000</span>원
									<input type="hidden" id="orderItemsPrice0" name="orderItemsPrice" value=""/></td>
							
							<td></td>
						</tr>
						<tr>
							<td><input type="checkbox" name="check" class="check" value="2"></td>
							<td>asd</td>
							<td>asd</td>
							<td>asd</td>
							<td><span id="price1"> 100000</span>원</td>
							<td><a id="countdown1" style="color:black" onclick="javascript:countdown(1)"><i class="fas fa-caret-down fa-lg mr-2" ></i></a>
									<span id="count1">1</span>
									<input type="hidden" id="orderItemsCount1" name="orderItemsCount" value=""/>
									<a id="countup1" onclick="javascript:countup(1)" style="color:black"><i class="fas fa-caret-up fa-lg ml-2"></i></a></td>
							<td><span id="totalPrice1"> 100000</span>원
									<input type="hidden" id="orderItemsPrice1" name="orderItemsPrice" value=""/></td>
							<td></td>
						</tr> -->
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
	 		console.log("click 확인" +no);
	 		
	 		var count = document.getElementById("count"+no).innerHTML;
	 		console.log(count);
	 		var price = document.getElementById("price"+no).innerHTML;
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
	 		
	 		var count = document.getElementById("count"+no).innerHTML;
	 		console.log(count);
	 		var price = document.getElementById("price"+no).innerHTML;
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