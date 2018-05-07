package br.com.gael_lubrificantes.ligacao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.gael_lubrificantes.urls.ListaDeURLs;

@Controller
public class LigacaoController {

	@Autowired
	private LigacaoDAO ligacaoDAO;
	


	@RequestMapping(ListaDeURLs.FORMULARIO_INSERCAO_LIGACAO)
	public String formularioInsercaoLigacao() {
		return "ligacoes/formulario";
	}

	@RequestMapping(ListaDeURLs.INSERE_LIGACAO)
	public String insereLigacao(LigacaoModel ligacao) {

		ligacaoDAO.insere(ligacao);
		
		return "ligacoes/formulario";
	}
	
	
}
