<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ attribute name="titulo" required="true"%>
<%@ attribute name="listaJS" required="false"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>

<c:url value="/resources/bootstrap/css/bootstrap.min.css"
	var="urlCssBootstrap" />
<c:url value="/resources/js/jquery-3.3.1.min.js"
	var="urlJquery" />

<!doctype html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>${titulo}</title>
<link href="${urlCssBootstrap}" rel="stylesheet">

<c:url value="/resources/font-awesome/css/font-awesome.min.css" var="url" />
<link rel="stylesheet" href="${url}">
</head>
<body>
		<my:menu />
	<div class="container">
		<jsp:doBody />
	</div>
	<script type="text/javascript" charset="UTF-8" src="${urlJquery}"></script>
	<c:forEach items="${listaJS}" var="js">
		<c:url value="/resources/js/${js}" var="url" />
		<script type="text/javascript" charset="UTF-8" src="${url}"></script>
		<c:url value="/resources/bootstrap/js/bootstrap.min.js" var="url" />
		<script type="text/javascript" charset="UTF-8" src="${url}"></script>
	</c:forEach>

</body>

</html>