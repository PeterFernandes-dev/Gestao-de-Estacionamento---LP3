package br.computacao.AppEstacionamento.app;

import javax.persistence.EntityManager;

import br.computacao.AppEstacionamento.util.JpaUtil;


public class Main {

	public static void main(String[] args) {
		
		EntityManager em = JpaUtil.getEntityManagerFactory().createEntityManager();
		
		
	}

}
