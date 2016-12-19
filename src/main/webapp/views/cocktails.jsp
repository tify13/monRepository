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
					Cocktails</small>
			</h1>
		</div>

		<div>
			<table id="cocktailsTable" class="table table-condensed">
				<thead>
					<tr>
						<th><p class="enteteTable">Nom</p></th>
						<th><p class="enteteTable">Tarif</p></th>
						<th><p class="enteteTable">Type</p></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${cocktails}" var="cocktail">
					<tr>
						<td><p class="fontTable">${cocktail.name}</p></td>
						<td><p class="fontTable">${cocktail.price}</p></p>
						<td><p class="fontTable">
						<c:if test="${cocktail.withAlcohol}">
							Alcoolisé
						</c:if>
						<c:if test="${!cocktail.withAlcohol}">
							Non Alcoolisé
						</c:if>
						</p></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<%@include file="include/footer.jsp"%>
	</div>
	<script type="text/javascript">
		$('#cocktailsTable').DataTable({
			pageLength : 5,
			lengthMenu : [ 5, 10, 15 ],
			colReorder : true
		});
	</script>
</body>
</html>