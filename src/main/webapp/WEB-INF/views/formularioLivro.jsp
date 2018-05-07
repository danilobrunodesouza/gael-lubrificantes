<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url value="/resources/css/bootstrap/3.3.4/bootstrap.min.css"
	var="urlCss" />
<c:url value="/cadastra-novo-livro" var="action" />

<!doctype html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>Cadastro de livro</title>



<link href="${urlCss}" rel="stylesheet">

</head>
<body>
	<div class="container">
		<c:if test="${sucesso}">
			<br />
			<div class="alert alert-success">Cadastrado com sucesso!</div>
		</c:if>
		<c:if test="${erro}">
			<br />
			<div class="alert alert-danger">O título não pode ser vazio!</div>
		</c:if>
		<h1 class="text-center">Cadastro de livro</h1>
		<form action="${action}" method="POST">
			<div class="col-md-4">
				<label for="titulo" class="control-label">Título:</label>
			</div>
			<div class="col-md-8">
				<input type="text" class="form-control" id="titulo" name="titulo"
					placeholder="Título">
			</div>
			<div class="col-md-12 .row">
				<br />
			</div>
			<div class="col-xs-12 col-md-12">
				<button type="submit" class="btn btn-success form-control">Salvar</button>
			</div>
		</form>
	</div>
</body>
</html>