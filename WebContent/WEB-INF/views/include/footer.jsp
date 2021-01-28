<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />

<div id="sidebanner" style=" display: block; position:fixed; z-index: 1000; bottom:1%; right:1%; margin-left:500px; width:120px; height:150px; background:white; border: 1px solid black; text-align: center;">
	<ul>
		<li class="boxlist" style="margin-top: 8px;"><a href="${root}/Notice/index">고객센터</a></li>
		<li class="boxlist"><a href="#"> <img id="talktalk" src="${root}/resources/img/a.JPG" width= "100px"/></a></li>
		<li class="boxlist"><a href="#"> <img id="kakao" src="${root}/resources/img/b.JPG" width= "100px"/></a></li>
	</ul>
</div>
<div class="footer">
	<div id="icon" class="box">
		<ul>
			<li id="icon"><b>iloomy</b></li>
		</ul>	
	</div>		
	<div class="box">
		<ul>
			<li class="boxlist"><a href="#">ABOUT</a></li>
			<li class="boxlist"><a href="#">회사소개</a></li>
			<li class="boxlist"><a href="#">매장안내</a></li>
			<li class="boxlist"><a href="#">인재채용</a></li>
		</ul>	
	</div>	
	<div class="box">
		<ul>
			<li class="boxlist"><a href="#">SUPPORT</a></li>
			<li class="boxlist"><a href="#">고객샌터</a></li>
			<li class="boxlist"><a href="#">대리점 개설안내</a></li>
		</ul>	
	</div>	
	<div class="box">
		<ul>
			<li class="boxlist"><a href="#">INFO</a></li>
			<li class="boxlist"><a href="#">이용약관</a></li>
			<li class="boxlist"><a href="#"><b>개인정보 처리방침</b></a></li>
		</ul>	
	</div>	
	<div class="box">
		<ul>
			<li class="boxlist"><a href="#">고객센터</a></li>
			<li class="boxlist">1577-5670</li>
			<li class="boxlist">평일 09:30~17:30</li>
			<li class="boxlist"><a href="#">제품문의, 매장안내, AS, 분해설치</a></li>
		</ul>	
	</div>	
</div>