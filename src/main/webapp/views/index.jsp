<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="include/header.jsp"%>

<body>
	<div class="container">
		<div class="page-header">
			<h1>
				Bienvenue dans l'application Cocktail Bar<small><br> <br>Menu</small>
			</h1>
		</div>
		<ul>
			<c:forEach items="${menus}" var="menu">
				<c:url value="${menu.url}.html" var="menuUrl" />
				<ul class="nav nav-pills nav-stacked">
					<li><h2>
							<a href="${menuUrl}">${menu.title}</a>
						</h2></li>
				</ul>
			</c:forEach>
		</ul>
	</div>
	
</body>
</html>