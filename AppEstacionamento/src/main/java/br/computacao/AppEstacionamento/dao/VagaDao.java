package br.computacao.AppEstacionamento.dao;

import javax.persistence.TypedQuery;

import br.computacao.AppEstacionamento.model.Vaga;



public class VagaDao extends Dao<Vaga, Long>{

	public Vaga BuscaVaga(long id) {
			
			Vaga employee;
			TypedQuery<Vaga> query = em.createQuery(
					"SELECT v FROM Vaga v WHERE v.id = " + id, Vaga.class);
			
			 
			employee = query.getSingleResult();
			
			return employee;
		}
	
}
