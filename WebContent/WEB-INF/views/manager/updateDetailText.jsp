<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
	
	<div class="list_img">
		<img src="<%=application.getContextPath()%>/resources/img/iloomimg.png" />
		<img src="<%=application.getContextPath()%>/resources/img/iloomimg2.png"/><br />
		<input type="file" class="btn btn-outline-light" accept="img/*" style="width:250px;" />
	</div>

	<div  class="list_txt">
		<label style="font--size:1.6rem;"><b>텍스트 입력</b></label><br />
		<textarea class="myText">"${dto.pDetail}"</textarea>
	</div>

	