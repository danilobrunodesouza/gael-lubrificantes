package br.com.gael_lubrificantes.cliente;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.gael_lubrificantes.urls.ListaDeURLs;

@Controller
public class ClienteController {

	
	@Autowired
	private ClienteDAO clienteDAO;
	
	@RequestMapping("/home")
	public String home() {
		
		return "home";
	}
	
	@RequestMapping(ListaDeURLs.LISTA_CLIENTES)
	public String listaClientes(Model model) {
		
		
		List<ClienteModel> todosClientes = clienteDAO.listaTudo();
		
		model.addAttribute("todosClientes", todosClientes);
		
		return "clientes/lista";
	}
	
	@RequestMapping(ListaDeURLs.FORMULARIO_INSERCAO_CLIENTES)
	public String formularioInsercaoCliente() {
		return "clientes/formulario";
	}
	
	@RequestMapping(ListaDeURLs.INSERE_CLIENTES)
	public String insereCliente(ClienteModel cliente) {
		
		clienteDAO.insere(cliente);
		
		return "redirect:" + ListaDeURLs.LISTA_CLIENTES;
	}
	
	
	@RequestMapping(ListaDeURLs.FORMULARIO_EDICAO_CLIENTES + "/{id}")
	public String formularioEdicaoCliente(@PathVariable("id") Long id, Model model) {
		ClienteModel cliente = clienteDAO.buscaPorId(id);
		
		model.addAttribute("cliente", cliente);
		
		return "clientes/formulario";
	}
	
	@RequestMapping(ListaDeURLs.EDITA_CLIENTES)
	public String editaCliente(ClienteModel cliente) {
		
		clienteDAO.altera(cliente);
		
		return "redirect:" + ListaDeURLs.LISTA_CLIENTES;
	}

	@RequestMapping(value = ListaDeURLs.EXCLUI_CLIENTES, method = RequestMethod.POST)
	public String excluiCliente( Long id, Model model) {
		
		ClienteModel cliente = clienteDAO.buscaPorId(id);
		
		clienteDAO.remove(cliente);
		
		return "redirect:" + ListaDeURLs.LISTA_CLIENTES;
	}
	
}
