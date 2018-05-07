<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>Lista de Autor</title>

<c:url value="/resources/css/bootstrap/3.3.4/bootstrap.min.css"
	var="urlCss" />
<link href="${urlCss}" rel="stylesheet">

</head>
<body>
	<div class="container">
		<h1 class="text-center">Lista de Autores</h1>
		<table class="table table-striped table-bordered table-hover">
			<thead>
				<tr>
					<th>id</th>
					<th>Título</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${livros}" var="livro">
					<tr>
						<td>${livro.id}</td>
						<td>${livro.titulo}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>