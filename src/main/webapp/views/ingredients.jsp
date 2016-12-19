<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="include/header.jsp"%>

<body>
	<div class="container">

		<div class="page-header">
			<h1>
				Application Cocktail Bar<small><br> <br>Liste des
					Ingrédients</small>
			</h1>
		</div>
		<div>
			<table id="ingredientsTable" class="table table-condensed">
				<thead>
					<tr>
						<th><p class="enteteTable">Nom</p></th>
						<th><p class="enteteTable">Etat</p></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${ingredients}" var="ingredient">
						<tr>
							<td><p class="fontTable">${ingredient.name}</p></td>
							<td><p class="fontTable">

							<c:choose>
								<c:when test="${ingredient.state==0}">
									Solide
								</c:when>
								<c:when test="${ingredient.state==1}">
									Liquide
								</c:when>
								<c:when test="${ingredient.state==2}">
									Gazeux
								</c:when>
						</c:choose>
								</p></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<%@include file="include/footer.jsp"%>
	</div>
	<script type="text/javascript">
		$('#ingredientsTable').DataTable({
			pageLength : 5,
			lengthMenu : [ 5, 10, 15 ],
			colReorder : true
		});
	</script>
</body>
</html>