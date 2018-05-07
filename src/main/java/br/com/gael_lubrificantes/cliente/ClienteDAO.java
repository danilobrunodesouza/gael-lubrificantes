package br.com.gael_lubrificantes.cliente;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

@Repository
public class ClienteDAO {

	private final String TABELA = ClienteModel.class.getSimpleName();
	
	@PersistenceContext
	private EntityManager em;
	
	@Transactional
	public void insere(ClienteModel cliente) {
		em.persist(cliente);
	}
	
	@Transactional
	public void altera(ClienteModel cliente) {
		em.merge(cliente);
	}
	
	@Transactional
	public void remove(ClienteModel cliente) {
		em.remove(em.find(ClienteModel.class, cliente.getId()));
	}
	

	public List<ClienteModel> listaTudo(){
		String jpql = "SELECT c FROM " + TABELA + " c ORDER BY c.id";
		
		TypedQuery<ClienteModel> query = em.createQuery(jpql, ClienteModel.class);
		
		return query.getResultList();
	}

	public ClienteModel buscaPorId(Long id) {
		String jpql = "SELECT c FROM " + TABELA + " c WHERE c.id = :id";
		
		TypedQuery<ClienteModel> query = em.createQuery(jpql, ClienteModel.class);
		query.setParameter("id", id);

		if(query.getResultList().isEmpty()) {
			return new ClienteModel();
		} else {
			return query.getResultList().get(0);
		}
	}
	
}
