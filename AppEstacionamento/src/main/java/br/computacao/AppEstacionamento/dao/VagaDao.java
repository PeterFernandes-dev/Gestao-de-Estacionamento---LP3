package br.computacao.AppEstacionamento.dao;

import javax.persistence.TypedQuery;

import br.computacao.AppEstacionamento.model.Vaga;



public class VagaDao extends Dao<Vaga, Long>{

	public Vaga BuscaVaga() {
			
			Vaga employee;
			TypedQuery<Vaga> query = em.createQuery(
					"SELECT id, idenficacao FROM vaga WHERE status = 'VAZIA' ", Vaga.class);
			 
			employee = query.getSingleResult();
			
			return employee;
		}
	
}
