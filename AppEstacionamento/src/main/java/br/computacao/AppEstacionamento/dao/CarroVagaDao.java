package br.computacao.AppEstacionamento.dao;

import javax.persistence.TypedQuery;

import br.computacao.AppEstacionamento.model.carroVaga;

public class CarroVagaDao extends Dao<carroVaga, Long>{

	public carroVaga teste() {
		
		carroVaga employee;
		TypedQuery<carroVaga> query = em.createQuery("", carroVaga.class);
		 
		employee = query.getSingleResult();
		
		return employee;
	}
	
}
