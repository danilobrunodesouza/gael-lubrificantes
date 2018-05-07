<%@page import="br.com.gael_lubrificantes.urls.ListaDeURLs"%>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="my"%>

<my:template titulo="Formulario de Clientes">
	<h1>Formulario de Clientes</h1>


	<c:if test="${empty cliente.id }">
		<c:url value="<%=ListaDeURLs.INSERE_CLIENTES %>" var="action" />
	</c:if>

	<c:if test="${not empty cliente.id }">
		<c:url value="<%=ListaDeURLs.EDITA_CLIENTES %>" var="action" />
	</c:if>


	<form action="${action}" method="POST" >
	
		<c:if test="${not empty cliente.id }">
			<input type="hidden" value="${cliente.id}" name="id">
		</c:if>

		<div class="col-md-4">
			<label for="cliente" class="control-label">Nome da Empresa:</label>
		</div>
		<div class="col-md-8">
			<input type="text" class="form-control" id="empresa"
				name="empresa" value="${cliente.empresa}" 
				placeholder="Nome da Empresa">
		</div>
		<div class="col-md-4">
			<label for="cliente" class="control-label">Email:</label>
		</div>
		<div class="col-md-8">
			<input type="email" class="form-control" id="email"
				name="email" value="${cliente.email}"
				placeholder="Email">
		</div>
		<div class="col-md-4">
			<label for="cliente" class="control-label">Nome do Contato:</label>
		</div>
		<div class="col-md-8">
			<input type="text" class="form-control" id="nomeContato"
				name="nomeContato"  value="${cliente.nomeContato}"
				placeholder="Nome do Contato">
		</div>
		<div class="col-md-4">
			<label for="cliente" class="control-label">Telefone:</label>
		</div>
		<div class="col-md-8">
			<input type="text" class="form-control" id="telefone"
				name="telefone" value="${cliente.telefone}"
				placeholder="Telefone">
		</div>
		<div class="col-md-4">
			<label for="cliente" class="control-label">CNPJ:</label>
		</div>
		<div class="col-md-8">
			<input type="text" class="form-control" id="cnpj"
				name="cnpj" value="${cliente.cnpj}"
				placeholder="Somente números">
		</div>
		
		<br />

		<div class="col-xs-12 col-md-12">
			<c:if test="${empty cliente.id }">
				<button type="submit" class="btn btn-success">
					<i class="fa fa-plus" aria-hidden="true"></i> Cadastrar Cliente
				</button>
			</c:if>
		
			<c:if test="${not empty cliente.id }">
				<button type="submit" class="btn btn-primary">
					<i class="fa fa-pencil" aria-hidden="true"></i> Alterar Cliente
				</button>
		
			</c:if> 
		</div>
	</form>

</my:template>