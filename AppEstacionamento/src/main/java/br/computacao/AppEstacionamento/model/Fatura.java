package br.computacao.AppEstacionamento.model;

import javax.persistence.Embeddable;

@Embeddable
public class Fatura {
	
	private String tipoPagamento;
	private String situacao;
	
	public Fatura() {}
	public Fatura(String tipoPagamento, String situacao) {
		this.tipoPagamento = tipoPagamento;
		this.situacao = situacao;
	}

	public String getTipoPagamento() {
		return tipoPagamento;
	}

	public void setTipoPagamento(String tipoPagamento) {
		this.tipoPagamento = tipoPagamento;
	}

	public String getSituacao() {
		return situacao;
	}

	public void setSituacao(String situacao) {
		this.situacao = situacao;
	}

	
}
