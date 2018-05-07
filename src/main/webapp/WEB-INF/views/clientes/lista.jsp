
<%@page import="br.com.gael_lubrificantes.urls.ListaDeURLs"%>
<%@ page pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="my"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<my:template titulo="Lista de Registros"
	listaJS="/bootstap/js/bootstrap.min.js,excluir.js">
	<br/>
	<div class="card">
  		<div class="card-title ">
			<h2 class="text-center">Lista de Clientes</h2>
			
  		</div>
  		
  		<div class="card-body">
			<c:if test="${empty todosClientes }">
				<div class="alert alert-info">
					<p>Não foram encontrados Clientes</p>
				</div>
			</c:if>
			<c:if test="${not empty todosClientes }">
				<table class="table">
					<tr>
						<th>Nome da Empresa</th>
						<th>Email</th>
						<th>Nome do Contato</th>
						<th>Telefone</th>
						<th>CNPJ</th>
						<th>Ações</th>
					</tr>
		
					<c:forEach items="${todosClientes }" var="cliente">
						<tr>
							<td>${cliente.empresa}</td>
							<td>${cliente.email}</td>
							<td>${cliente.nomeContato}</td>
							<td>${cliente.telefone}</td>
							<td>${cliente.cnpj}</td>
							<td>
							<c:url
									value="<%=ListaDeURLs.FORMULARIO_EDICAO_CLIENTES%>" var="url" />
								<a href="${url}/${cliente.id}" class="btn btn-primary">
								<i class="fa fa-pencil" aria-hidden="true"></i>
								
							</a>
		
								<button type="button" class="btn btn-danger botaoDeExclusao" data-toggle="modal"
									data-target="#modal-excluir" data-id-selecionado="${cliente.id}">
									<i class="fa fa-times" aria-hidden="true"></i>
								</button>
							</td>
		
						</tr>
					</c:forEach>
		
		
				</table>
			</c:if>
		</div>
	</div>
	<div class="modal fade" id="modal-excluir" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Excluir Cliente</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">Você tem certeza que quer excluir este
					cliente ?</div>
				<div class="modal-footer">
					
				
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Não, quero Voltar</button>
					
					<c:url value="<%= ListaDeURLs.EXCLUI_CLIENTES %>" var="action"/>
						
					<form action="${action}" method="POST">
											
						<input type="hidden" id="idDoClienteModal" name="id">
						<button type="submit" class="btn btn-danger">Sim, tenho
							certeza</button>
					
					</form>
						
				</div>
			</div>
		</div>
	</div>
</my:template>