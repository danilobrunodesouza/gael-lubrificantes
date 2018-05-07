package br.com.gael_lubrificantes.ligacao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

@Repository
public class LigacaoDAO {

private final String TABELA = LigacaoModel.class.getSimpleName();
	
	@PersistenceContext
	private EntityManager em;
	
	@Transactional
	public void insere(LigacaoModel ligacao) {
		em.persist(ligacao);
	}
	
	@Transactional
	public void altera(LigacaoModel ligacao) {
		em.merge(ligacao);
	}
	
	@Transactional
	public void remove(LigacaoModel ligacao) {
		em.remove(em.find(LigacaoModel.class, ligacao.getId()));
	}
	

	public List<LigacaoModel> listaTudo(){
		String jpql = "SELECT l FROM " + TABELA + " l ORDER BY l.id";
		
		TypedQuery<LigacaoModel> query = em.createQuery(jpql, LigacaoModel.class);
		
		return query.getResultList();
	}

	public LigacaoModel buscaPorId(Long id) {
		String jpql = "SELECT l FROM " + TABELA + " l WHERE l.id = :id";
		
		TypedQuery<LigacaoModel> query = em.createQuery(jpql, LigacaoModel.class);
		query.setParameter("id", id);

		if(query.getResultList().isEmpty()) {
			return new LigacaoModel();
		} else {
			return query.getResultList().get(0);
		}
	}
	
}
