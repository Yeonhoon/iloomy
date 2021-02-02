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
				01 장바구니 --- <span style="color: red">02 주문서 작성</span> --- 03 주문완료
			</div>
			<div id="sec">
				<p style="padding: 10px;">
					<b>주문서를 작성해 주세요</b>
				</p>
			</div>
			<div>
				<form name="addressUpdate" action="addressUpdate" method="post">
					<div class="form-group">
						<label for="user">ID</label> <input type="text"
							value="${userinfo}" readonly class="form-control"
							id="user" name="user">
					</div> 
					<div class="form-group">
						<label for="city">city</label> <input
							type="text" class="form-control" id="city"
							placeholder="city">
					</div>
					<div class="form-group">
						<label for="street">street</label> <input
							type="text" class="form-control" id="street"
							placeholder="street">
					</div>
					<div class="form-group">
						<label for="zipcode">zipcode</label> <input
							type="number" class="form-control" id="zipcode"
							placeholder="zipcode">
					</div>

				</form>
			</div>
		</div>
	</section>

	<div class="footerwrap" style="margin-top: -100px;">
		<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
	</div>
</body>


</html>