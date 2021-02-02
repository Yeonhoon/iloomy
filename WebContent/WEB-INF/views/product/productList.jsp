<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="root" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>product list</title>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/resources/css/mainhome.css">
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/resources/css/productList.css">

</head>

<body>
	<div class="headerwrap">
		<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
	</div>
	<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  	<img src="${root}/resources/img/slide2.png" style="width: 100%">
  <div class="text">편안한 iloomy</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="${root}/resources/img/slide4.jpg" style="width: 100%">
  <div class="text">가족같은 iloomy</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="${root}/resources/img/slide5.jpg" style="width: 100%">
  <div class="text">아름다운 iloomy</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
	

	<section>
		<nav>
			<h2 style="text-align: center;">소파</h2>
			<div id="pList">
				<a href="#">전체</a> <a href="#">일자형</a> <a href="#">카우치/코너</a> <a
					href="#">1인/소파베드</a> <a href="#">리클라이너</a> <a href="#">악세사리</a>
			</div>
			<hr />
		</nav>
		<div class="container-fluid">
			<div class="row">
					<c:forEach var="item" items="${list}">
						<a class="productCell" href="${root}/product/detail?no=${item.itemsNo}" style="margin:50px 50px">
							<c:if test="${item.itemsAttachSname != null}">
								<img src="${root}/product/itemsAttach?no=${item.itemsNo}" width=300px height=300px;>
							</c:if>
						<div class="brief">
							<span><b>${item.itemsName}</b></span><br />
							<span>${item.itemsCompany}</span><br />
							<span style="color:red;"><fmt:formatNumber value="${item.itemsPrice}" type="number"/>원</span><br />
						</div>
						</a>
					</c:forEach>
			</div>
		</div>
		<div style="text-align:center">
			<a class="btn btn-outline-warning btn-sm mr-1" href="${root}/product/boardlist?pageNo=1">처음</a>
			<c:if test="${pager.groupNo > 1}">
				<a class="btn btn-outline-warning btn-sm mr-1" href="${root}/product/boardlist?pageNo=${pager.startPageNo-1}">이전</a>
			</c:if>
			<c:forEach var="idx" begin="${pager.startPageNo}" end="${pager.endPageNo}">
				<c:if test="${idx== pager.pageNo}">
					<a class="btn btn-outline-secondary btn-sm mr-1" href="${root}/product/boardlist?pageNo=${idx}">${idx}</a>
				</c:if>
				<c:if test="${idx!= pager.pageNo}">
					<a class="btn btn-outline-light btn-sm mr-1" href="${root}/product/boardlist?pageNo=${idx}">${idx}</a>
				</c:if>
			</c:forEach>
			<c:if test="${pager.groupNo < pager.totalGroupNo}"> <%--전체 그룹수 보다 적을 경우 --%>
				<a class="btn btn-outline-warning btn-sm mr-1" href="${root}/product/boardlist?pageNo=${pager.endPageNo+1}">다음</a>
			</c:if>
			<a class="btn btn-outline-warning btn-sm mr-1" href="${root}/product/boardlist?pageNo=${pager.totalPageNo}">끝</a>
		</div>

	</section>

	<div class="footerwrap">
		<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
	</div>
</body>
<script>
	var slideIndex = 0;
	showSlides();

	function showSlides() {
		var i;
		var slides = document.getElementsByClassName("mySlides");
		var dots = document.getElementsByClassName("dot");
		for (i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";
		}
		slideIndex++;
		if (slideIndex > slides.length) {
			slideIndex = 1
		}
		for (i = 0; i < dots.length; i++) {
			dots[i].className = dots[i].className.replace(" active", "");
		}
		slides[slideIndex - 1].style.display = "block";
		dots[slideIndex - 1].className += " active";
		setTimeout(showSlides, 2000); // Change image every 2 seconds
	}
</script>
</html>