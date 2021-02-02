<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>상세페이지</title>
		<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="${root}/resources/css/mainhome.css"> <!-- footer, header css -->
      	<link rel="stylesheet" href="${root}/resources/css/productDetail.css">
	</head>
	
	
	<body>
		<div class="headerwrap">
      		<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
		</div>
			<article id="main">
				<div id="mainphoto">
					<img id="itemsAttach" src="${root}/product/itemsAttach?no=${item.itemsNo}" width="500px;" height="600px;"/>
				</div>
				<div id="maininfo">
					<input type="hidden" name="itemsNo" value="${item.itemsNo}"/>
					<p id="itemsName">${item.itemsName}</p>
					<p id="itemsCompany">${item.itemsCompany }</p>
					<hr />
					<p id="itemsModel">${item.itemsModel}</p>
					<p id="itemsOrigin">${item.itemsOrigin}</p>
					<p id="itemsStock">${item.itemsStock}</p>
					<p id="itemsManufacture">${item.itemsManufacture}</p>
					<hr/>
					<p style="font-size: 0.8rem"><b>배송기간</b> 약 10일 <b>배송비</b> 무료배송 
					<b>배송방법</b> 설치배송 <b>제품코드</b> HB722501</p>
					<br/>
					<form id="productCart" method="POST" action="">
					
					<div id="option">
						<select name="itemsColor" id="itemsColor">
							<option value="none">[필수]색상을 선택해주세요</option>
							<option value="brown">브라운</option>
							<option value="beige">베이지</option>
							<option value="grey">그레이</option>
						</select>
						<select name="itemsOption" id="itemsOption">
							<option value="none">[필수] 제품사양</option>
							<option value="basic">쿠시노 침대가드 1000폭 (basic)</option>
							<option value="addFoot">쿠시노 침대풋보드 1000폭</option>
						</select>
					</div>
						<hr/>
							
						<p style="display: inline;"><b>총 구매가</b></p>
						<div id="itemsPrice">
							<span><b><fmt:formatNumber value="${item.itemsPrice}" type="number"/>원</b></span>
						</div>
						<br/>
						<div id="detailBtn">
							<c:if test="${userinfo eq null}">
								<div id="loginCheck"><b>로그인 해주세요</b></div>
							</c:if>
							<c:if test="${userinfo ne null}">
								<button id="pay" type="button"> 결제하기 </button>
								<button id="bag" type="button"> 장바구니 </button>
							</c:if>
						</div>	
						</form>
					<br/>
					<div id="detailImg">
						<a href="#" target="_black"><img src="${root}/resources/img/l11.jpg" width="400px" style="margin-top: 20px; margin-bottom: 20px;"/></a><br/>
						<a href="#" target="_black"><img src="${root}/resources/img/l12.jpg" width="400px" style="margin-bottom: 20px;"/></a><br/>
					</div>
				</div>
			</article>
			<hr />	
			<article id="detail">
				<table>
					<tr style="color: #adb5bd; text-align: center;">
						<td>상세정보</td>
						<td>옵션</td>
						<td>인테리어 팁</td>
						<td>상품평</td>
						<td>Q&A</td>
					</tr>
				</table>
	 				<div class="list" >
						<img class="detailImg" src="${root}/product/imageattach?no=${item.itemsNo}"/>
						<p class="detailinfo" style="text-align: center;">${image.detail1}</p>
					</div>
					<c:if test="${image.detail2 ne null}">
						<div class="list">
							<img class="detailImg" src="${root}/product/imageattach?no=${item.itemsNo}"/>
							<p class="detailinfo" style="text-align: center;">${image.detail2}</p>
						</div>
					</c:if>
					<c:if test="${image.detail3 ne null}">
					<div class="list">
						<img class="detailImg" src="${root}/product/imageattach?no=${item.itemsNo}"/>
						<p class="detailinfo" style="text-align: center;">${image.detail3}</p>
					</div>
					</c:if>
					
				<%--<div style="text-align: center; padding: 30px;">
					<p style="font-size: 2rem;">쿠시노 저상형 패밀리 침대(인조가죽)</p>
					<p>신혼에서부터 자녀의 성장에 따라 다양하게 사용할 수 있는 쿠시노 시리즈입니다.</p>
					<p>싱글과 퀸 침대로 구성되어 있으며, 공간이나 필요에 따라 가드나 액세서리를 추가해 우리 가족만의 패밀리 침대를 완성해보세요.</p>
				</div>
				<div id="list2">
					<img src="${root}/resources/img/l3.jpg" height="600px"/>
					<img src="${root}/resources/img/l2.jpg"  height="600px"/>
					<img src="${root}/resources/img/l4.jpg"  height="600px"/>
					<p><b>안전을 위한 침대 가드</b></p>
					<p>공간과 필요에 맞게 침대 가드/풋보드를 추가로 설치해 안전한 패밀리베드로 사용할 수 있습니다.</p>
					<p style="font-size: 0.6rem; color: red;">*추가구매 아이템은 관련상품 참조</p>
					<img src="${root}/resources/img/l5.jpg"  height="600px"/>
					<p><b>가드 액세서리</b></p>
					<p>가드 액세서리를 거치해 작은 소품을 수납할 수 있습니다.</p>
					<p style="font-size: 0.6rem; color: red;">*추가구매 아이템은 관련상품 참조</p>
				</div>
				<hr style="color: grey"/>
				<div id="list2">
					<h1>Color</h1>
					<img src="${root}/resources/img/l7.jpg" height="300px"/>
					<img src="${root}/resources/img/l6.jpg"  height="300px"/>
				</div> --%>
				<div class="d-flex justify-content-center align-items-center">
					<a class="btn btn-secondary ml-3" href="${root}/manager/productList" style="color:black;">목록</a>
					<!-- 로그인 상태에서만 보이기 -->
					<c:if test="${userinfo eq 'admin'}">
						<a class="btn btn-warning ml-3" href="${root}/manager/update?no=${item.itemsNo}">수정</a>
						<form action="manager/delete" method="post">
							<a class="btn btn-danger ml-3" href="${root}/manager/delete?no=${item.itemsNo}" style="color:white;">삭제</a>
						</form>
					</c:if>
				</div>
			</article>
		
		
		<div class="footerwrap">
      		<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
		</div>

	</body>
	
	<script>
		$(document).ready(function() {
			$("#bag").click(function() {
				var pass;
				const color = $("#itemsColor option:selected").val();
				const option = $("#itemsOption option:selected").val();
				
				if (color === "none" || option === "none") {
					alert("옵션을 선택해주세요!");
					return;
				} else {
					if (confirm("추가된 물품을 장바구니에서 확인하시겠습니까?")){
						$("#productCart").attr("action", "${root}/product/cart?lno=${lno}&itemsName=${item.itemsName}").submit();	
					}
				}
			});
			
			$("#pay").click(function() {
				var pass;
				const color = $("#itemsColor option:selected").val();
				const option = $("#itemsOption option:selected").val();
				if (color == "none" || option == "none") {
					alert("옵션을 선택해주세요!");
					return;
				} else {
					if (confirm("결제하시겠습니까?")){
						console.log("test");
						document.getElementById("productCart").action = "${root}/product/cart?lno=${lno}&itemsName=${item.itemsName}";
			         	document.getElementById("productCart").submit();
					} 
				}
			});
		});
	</script>
</html>