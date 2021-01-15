<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<ul>
	<c:forEach var="fileNames" items="${fileList}"> 
		<div style="display: flex; align-items: center; margin-bottom: 5px;">
			<img src="photodownload?photo=${fileList}" 
			width="50px" height="50px"class="rounded-circle" 
			style="margin-right: 10px"/> 
			<a href="photodownload?photo=${fileList}">${fileList}</a> <%-- 서버에서 해당 파일 요청하기 --%>
		</div> <%--?붙여서 보내면 get방식 --%>
	</c:forEach> <%--모델에 넣은 리스트 값을 가져옴--%>
</ul>