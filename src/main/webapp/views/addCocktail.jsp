<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="include/header.jsp"%>
<body>
	<div class="container">
		<div class="page-header">
			<h1>
				Application Cocktail Bar<small><br> <br>Ajouter un
					Cocktail</small>
			</h1>
		</div>

		<c:url value="/cocktails/add.html" var="addUrl /" />

		<form action="${addUrl}" method="POST">
			<div class="form-group">
				<label for="name">Nom :</label> <input class="form-control"
					id="name" name="name" />
			</div>
			<div class="form-group">
				<label for="price">Prix :</label>
				<div class="input-group">
					<span class="input-group-addon">Euro</span> <span
						class="input-group-addon">0</span> <input id="price"
						name="price" type="text" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<select name="withAlcohol" class="selectpicker">
					<option>Alcoolisé</option>
					<option>Non Alcoolisé</option>
				</select>
			</div>
			<div class="form-group">
				<button class="btn btn-success">Valider</button>
			</div>
		</form>
	</div>
	<%@include file="include/footer.jsp"%>
</body>
</html>

<script>
$(document).ready(function() {
    $("#amount").on("input", function() {
        // allow numbers, a comma or a dot
        var v= $(this).val(), vc = v.replace(/[^0-9,\.]/, '');
        if (v !== vc)        
            $(this).val(vc);
    });
});
</script>
