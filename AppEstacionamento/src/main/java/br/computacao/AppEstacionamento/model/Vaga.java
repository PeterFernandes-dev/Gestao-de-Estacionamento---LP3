package br.computacao.AppEstacionamento.model;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Vaga {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@Enumerated(EnumType.STRING)
	private Cobertura cobertura;
	
	@Enumerated(EnumType.STRING)
	private Status status;
	private String identificacao;
	private Double preco;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public Cobertura getCobertura() {
		return cobertura;
	}
	public void setCobertura(Cobertura cobertura) {
		this.cobertura = cobertura;
	}
	public String getIdentificacao() {
		return identificacao;
	}
	public void setIdentificacao(String identificacao) {
		this.identificacao = identificacao;
	}
	public Double getPreco() {
		return preco;
	}
	public void setPreco(Double preco) {
		this.preco = preco;
	}
	public Status getStatus() {
		return status;
	}
	public void setStatus(Status status) {
		this.status = status;
	}
	
	
	/*@OneToOne(fetch = FetchType.LAZY)
	private carroVaga carroVaga;*/
	/*public carroVaga getCarroVaga() {
		return carroVaga;
	}
	public void setCarroVaga(carroVaga carroVaga) {
		this.carroVaga = carroVaga;
	}*/
	
	

	
}
