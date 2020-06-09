<%@page import="com.cos.blog.dto.DetailResponseDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../include/nav.jsp"%>
  
<%--
	DetailResponseDto dto = (DetailResponseDto)request.getAttribute("dto");
	String username = dto.getUsername();
	System.out.println("username : " + username);
--%>


<div class="container">
	<button class="btn btn-primary" onclick="history.back()">뒤로가기</button>

	<c:if test="${sessionScope.principal.id == dto.board.userId}">
		<a href="/blog/board?cmd=update&id=${dto.board.id}" class="btn btn-warning">수정</a>
		<button class="btn btn-danger" onclick="deleteById(${dto.board.id})">삭제</button>
	</c:if>

	<br /> <br />
	<h6>
		작성자 : <i>${dto.username}</i> <%--=username --%> 조회수 : <i>${dto.board.readCount}</i></h6>
	</h6>
	<br />
	<h3>
		<b>${dto.board.title}</b>
	</h3>

	<div class="form-group">

		<div class="container p-3 my-3 border">${dto.board.content}</div>
	</div>


</div>

<script src="/blog/js/detail.js"></script>

<%@ include file="../include/footer.jsp"%>