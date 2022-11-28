package br.computacao.AppEstacionamento.dao;

import java.util.List;

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
	
	public List<Vaga> BuscaVagaVazia() {
		
		List<Vaga> employee;
		TypedQuery<Vaga> query = em.createQuery(
				"SELECT v FROM Vaga v WHERE v.status = 'VAZIA'", Vaga.class);
		
		 
		employee = query.getResultList();
		
		return employee;
	}
	
	public List<Vaga> BuscaVagaOcupada() {
			
			List<Vaga> employee;
			TypedQuery<Vaga> query = em.createQuery(
					"SELECT v FROM Vaga v WHERE v.status = 'OCUPADA'", Vaga.class);
			
			
			employee = query.getResultList();
			
			return employee;
		}
	
}
