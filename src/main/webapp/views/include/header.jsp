<head>
<!-- Déclaration pour utilisation des JSTL  -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Bootstrap -->
<c:url value="/webjars/bootstrap/3.1.0/css/bootstrap.min.css" var="bootstrapUrl" />
<c:url value="/webjars/bootstrap/3.1.0/js/bootstrap.min.js" var="bootstrapJs" />
<c:url value="/webjars/bootstrap-select/1.12.0/css/bootstrap-select.min.css" var="bootstrapSelectCss" />
<c:url value="/webjars/bootstrap-select/1.12.0/js/bootstrap-select.min.js" var="bootstrapSelectJs" />

<!-- JQuery -->
<c:url value="/webjars/jquery/3.1.1-1/jquery.min.js" var="jqueryUrl" />
<c:url value="/webjars/datatables/1.10.12" var="datatablesUrl" />
<c:url value="/webjars/datatables-colreorder/1.2.0" var="datatablesReorderUrl" />

<link rel="stylesheet" href="${bootstrapUrl}">
<link rel="stylesheet"
	href="${datatablesUrl}/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="${bootstrapSelectCss}">
<link rel="stylesheet" href="<c:url value='/css/application.css' />">

<script src="${jqueryUrl}"></script>
<script src="${bootstrapJs}"></script>
<script src="${bootstrapSelectJs}"></script>
<script src="${datatablesUrl}/js/jquery.dataTables.min.js"></script>
<script src="${datatablesReorderUrl}/js/dataTables.colReorder.js"></script>

<style type="text/css">
	<%@include file="../css/style.css"%>
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Application CocktailBar</title>
</head>