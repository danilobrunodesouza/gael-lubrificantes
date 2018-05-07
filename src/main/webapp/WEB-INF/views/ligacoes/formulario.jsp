<%@page import="br.com.gael_lubrificantes.urls.ListaDeURLs"%>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="my"%>

<my:template titulo="Formulario de Ligações">
	<h1>Formulario de Ligações</h1>


	<c:url value="<%=ListaDeURLs.INSERE_LIGACAO %>" var="action" />
<%--
	<c:if test="${empty ligacao.id }">
	</c:if>

 	<c:if test="${not empty cliente.id }">
		<c:url value="<%=ListaDeURLs.EDITA_CLIENTES %>" var="action" />
	</c:if>
 --%>

	<form action="${action}" method="POST" >
	
		<%-- <c:if test="${not empty cliente.id }">
			<input type="hidden" value="${cliente.id}" name="id">
		</c:if>
 --%>
		<div class="col-md-4">
			<label for="ligacao" class="control-label">Data da Ligação:</label>
		</div>
		<div class="col-md-8">
			<input type="date" class="form-control" id="dataLigacao"
				name="dataLigacao" value="${ligacao.dataLigacao}">
		</div>
		<div class="col-md-4">
			<label for="ligacao" class="control-label">Data da Retorno:</label>
		</div>
		<div class="col-md-8">
			<input type="date" class="form-control" id="dataRetorno"
				name="dataRetorno" value="${ligacao.dataRetorno}">
		</div>
		
		
		<div class="col-md-4">
			<label for="cliente" class="control-label">Observações:</label>
		</div>
		<div class="col-md-8">
			<input type="text" class="form-control" id="observacoes"
				name="observacoes" value="${ligacao.observacoes}"
				placeholder="observações">
		</div>
		
		
		<br />

		<div class="col-xs-12 col-md-12">
				<button type="submit" class="btn btn-success">
					<i class="fa fa-plus" aria-hidden="true"></i> Registrar Ligação
				</button>
		<%-- 
			<c:if test="${empty cliente.id }">
			</c:if>
			<c:if test="${not empty cliente.id }">
				<button type="submit" class="btn btn-primary">
					<i class="fa fa-pencil" aria-hidden="true"></i> Alterar Cliente
				</button>
		
			</c:if> --%> 
		</div>
	</form>

</my:template>