<%@tag import="br.com.gael_lubrificantes.urls.ListaDeURLs"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container">
		<a class="navbar-brand" href="#">Gael Lubrificantes</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav">
				
				<ul>
					<li class="nav-item dropdown nav-link active"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> Clientes </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						
							<c:url value="<%=ListaDeURLs.FORMULARIO_INSERCAO_CLIENTES%>" var="url" />
							<a class="dropdown-item" href="${url}">Insere Clientes</a> 
							
							
							<c:url value="<%= ListaDeURLs.LISTA_CLIENTES %>" var="url"/>
							<a	class="dropdown-item" href="${url}">Lista Clientes</a>
							
						</div></li>


				</ul>


			</div>
		</div>


		<div class="navbar justify-content-end">
			<ul class="navbar-nav">
				<li><a class="btn btn-danger" href="#">Sair <span
						class="sr-only">(current)</span></a></li>
				<li><a class="btn btn-success" href="#">Entrar <span
						class="sr-only">(current)</span></a></li>
				<li><a class="btn btn-primary" href="#">Cadastre-se <span
						class="sr-only">(current)</span></a></li>

			</ul>
		</div>





		</div>
</nav>

