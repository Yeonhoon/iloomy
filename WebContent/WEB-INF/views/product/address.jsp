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
				01 장바구니 --- <span style="color: red">02 배송지 확인</span> --- 03 주문완료
			</div>
			<div id="sec">
				<p style="padding: 10px;">
					<b>배송지를 확인해주세요</b>
				</p>
			</div>
			<div id="updateSec">
				
				<!-- name에 해당 변수와 동일 -->
					<div class="form-group">
						
						<label for="user">ID</label> <input type="text"
							value="${userinfo}" readonly class="form-control"
							id="user" name="user">
					</div> 
					<div class="form-group">
						<label for="city">city</label> <input
							type="text" value="${delivery.address.city}" readonly class="form-control" id="city" name="city"
							placeholder="${delivery.address.city}">
					</div>
					<div class="form-group">
						<label for="street">street</label> <input
							type="text" value="${delivery.address.street}" readonly class="form-control" id="street" name="street"
							placeholder="${delivery.address.street}">
					</div>
					<div class="form-group">
						<label for="zipcode">zipcode</label> <input
							type="number" value="${delivery.address.zipcode}" readonly class="form-control" id="zipcode" name="zipcode"
							placeholder="${delivery.address.zipcode}">
					</div>
					<div id="addressA">
						<a href="javascript:history.back();" class="btn btn-info btn-sm" style="color: white">뒤로가기</a>
					</div>

			</div>
		</div>
	</section>

	<div class="footerwrap" style="margin-top: -100px;">
		<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
	</div>
</body>
<script type="text/javascript">

</script>

</html>