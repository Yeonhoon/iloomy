<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />

		<div class="header">
         <div id="right_bar" >
	         <a href="<%=application.getContextPath()%>/product/list"><i class="fas fa-bars"></i></a>
	         <div class="dropdown">
		         <a class="dropA" id="bed" href="#">침실</a>
		         	<div class="dropdown-content">
		         		<a href="#">침대</a>
		         		<a href="#">서랍장</a>
		         	</div>
	         </div>	
	         <div class="dropdown">
		         <a class="dropA" id="livingroom" href="#">거실</a>
		         	<div class="dropdown-content">
		         		<a href="#">테이블</a>
		         		<a href="#">수납장</a>
		         		<a href="#">소파</a>
		         		<a href="#">악세사리</a>
		         	</div>
	         </div>	
	        <div class="dropdown">
		         <a class="dropA" id="kitchen" href="#">주방</a>
		         	<div class="dropdown-content">
		         		<a href="#">식탁</a>
		         		<a href="#">수납장</a>
		         	</div>
	         </div>
	         <div class="dropdown">
		         <a class="dropA" id="kidroom" href="#">키즈룸</a>
		         	<div class="dropdown-content">
		         		<a href="#">침대</a>
		         		<a href="#">수납장</a>
		         		<a href="#">옷장</a>
		         		<a href="#">테이블</a>
		         		<a href="#">악세사리</a>
		         	</div>
	         </div>
	         <div class="dropdown">
		         <a class="dropA" id="library" href="#">서재</a>
		         	<div class="dropdown-content">
		         		<a href="#">수납장</a>
		         		<a href="#">테이블</a>
		         		<a href="#">악세사리</a>
		         	</div>
	         </div> .
	         <div class="dropdown">
		         <a class="dropA" id="pet" href="#">펫</a>
		         	<div class="dropdown-content">
		         		<a href="#">침대</a>
		         		<a href="#">악세사리</a>
		         	</div>
	         </div> .
	         <a href="#">시리즈</a>
         </div>
         <div id="center">
        	 <h1><a href="${root}/"><b>iloomy</b></a></h1>
         </div>
         <div id="left_bar" style="font-size: 0.8rem;">
            <div>
				<%--${userinfo.id}--%>
				<c:if test="${userinfo.id eq 'admin'}">
					<a href="${root}/QnA/board/new">QnA글쓰기</a>
				</c:if>
				<c:choose>
					<c:when test="${userinfo.id ne null}">
						<a><strong>${userinfo.id }</strong>님</a>
					</c:when>
					<c:otherwise>
						<a href="${root}/user/login">Login</a>
					</c:otherwise>
				</c:choose>
	            <a href="#">주문</a>
	            <a href="#">배송</a>
	            <a href="#">이벤트</a>
	            <a href="#">뉴스</a>
	            <a href="#">고객센터</a>
	            <a href="#">매장안내</a>
	            <a href="#">회사소개</a>
	            <a href="#">로그아웃</a>
            </div>
            <div id="left" style="margin-top: 15px;">
            	<form class="search">
            		<input type="text" placeholder="검색" id="search" name="search"/>
            	</form>
	            <a href="#" ><i class="fas fa-search"></i></a>
	            <a href="${root}/product/cart2"><i class="fas fa-shopping-bag"></i></a>
            </div>
         </div>
      </div>
