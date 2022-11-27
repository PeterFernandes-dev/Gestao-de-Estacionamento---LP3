package br.computacao.AppEstacionamento.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import br.computacao.AppEstacionamento.model.carroVaga;

public class CarroVagaDao extends Dao<carroVaga, Long>{

	public List<carroVaga> Ce() {
		
		//carroVaga employee;
		TypedQuery<carroVaga> query = em.createQuery(
				"SELECT c.placa, c.modelo, v.identificacao "
				+ "FROM carroVaga cv inner join Carro c on c.id = cv.carro_id inner join Vaga v on v.id = cv.vaga_id WHERE status = 'OCUPADA' ORDER BY c.placa ",
				carroVaga.class);
		 
		//employee = query.getSingleResult();
		
		List<carroVaga> employee = query.getResultList();
		
		return employee;
	}
	
}
