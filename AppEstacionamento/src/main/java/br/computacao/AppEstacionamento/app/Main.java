package br.computacao.AppEstacionamento.app;

import javax.persistence.EntityManager;

import br.computacao.AppEstacionamento.dao.CarroVagaDao;
import br.computacao.AppEstacionamento.dao.VagaDao;
import br.computacao.AppEstacionamento.util.JpaUtil;


public class Main {

	public static void main(String[] args) {
		
		//EntityManager em = JpaUtil.getEntityManagerFactory().createEntityManager();
		
		//CarroVagaDao cv = new CarroVagaDao();
		
		//cv.Ce();
		
		//VagaDao vg = new VagaDao();
		
		
		//vg.BuscaVagaOcupada();
		
		
		CarroVagaDao cv = new CarroVagaDao();
		
		//cv.BuscaCVagaOcupada();
		
	}

}
