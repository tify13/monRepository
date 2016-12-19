<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="include/header.jsp"%>

<body>
	<div class="container">
		<div class="page-header">
			<h1>
				Application Cocktail Bar<small><br> <br>Ajouter un
					Ingrédient</small>
			</h1>
		</div>

		<c:url value="/ingredients/add.html" var="addUrl /" />
		
		<form action="${addUrl}" method="POST">
			<div class="form-group">
				<label for="name">Nom :</label> <input class="form-control"
					id="name" name="name" />
			</div>
			<div class="form-group">
				<select id="state" name="state" class="selectpicker">
					<option>Solide</option>
					<option>Liquide</option>
					<option>Gazeux</option>
				</select>
			</div>
<!-- 			<div class="form-group">
				<label for="state">Etat :</label> <input class="form-control"
					type="number" min="0" max="2" id="state" name="state" />
			</div>
 -->			<button class="btn btn-default">Valider</button>
		</form>
		
		<%@include file="include/footer.jsp"%>
	</div>
</body>
</html>