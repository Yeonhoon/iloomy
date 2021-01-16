<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
		<div class="header">
         <div id="right_bar" >
         <!-- 2021/01/07 product List링크 -->
	         <a href="<%=application.getContextPath()%>/product/list"><i class="fas fa-bars"></i></a>
	         <div class="dropdown">
		         <a class="dropA" id="bed" href="#">침실</a>
		         	<div class="dropdown-content">
		         		<a href="#">침실1</a>
		         		<a href="#">침실1</a>
		         	</div>
	         </div>	
	         <a href="#">거실</a>
	         <a href="#">주방</a>
	         <a href="#">키즈룸</a>
	         <a href="#">학생방</a>
	         <a href="#">서재</a> .
	         <a href="#">펫</a> .
	         <a href="#">시리즈</a> .
	         <a href="#">아울렛</a>
         </div>
         <div id="center">
        	 <h1><a href="${root}/"><b>iloomy</b></a></h1>
         </div>
         <div id="left_bar" style="font-size: 0.8rem;">
            <div>
	            <a href="${root}/user/login">Login</a>
	            <a href="#">회원가입</a>
	            <a href="#">주문</a>
	            <a href="#">배송</a>
	            <a href="#">이벤트</a>
	            <a href="#">뉴스</a>
	            <a href="#">고객센터</a>
	            <a href="#">매장안내</a>
	            <a href="#">회사소개</a>
            </div>
            <div id="left" style="margin-top: 15px;">
	            <p style="display: inline-block; width: 150px; border: 1px solid red;">
	           	 <a href="#">검색</a>
	            </p>
	            <a href="#" ><i class="fas fa-search"></i></a>
	            <a href="${root}/homepage/package.html"><i class="fas fa-shopping-bag"></i></a>
            </div>
         </div>
      </div>
