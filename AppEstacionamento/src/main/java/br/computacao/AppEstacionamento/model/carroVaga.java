package br.computacao.AppEstacionamento.model;

import java.sql.Date;
import java.sql.Time;
import java.util.List;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import java.time.temporal.ChronoUnit;

@Entity
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
public class carroVaga {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	private Date dataEntrada;
	private Date dataSaida;
	
	
	private String horaEntrada;

	private String horaSaida;
	
	private Double precoTotal;
	
	@ManyToOne(fetch = FetchType.LAZY)
	private Carro carro;
	
	@OneToOne(fetch = FetchType.LAZY)
	private Vaga vaga;
	
	@Embedded
	@AttributeOverrides({
		@AttributeOverride(name = "tipoPagamento", column = @Column(name="tipoPagamento")),
		@AttributeOverride(name = "situacao", column = @Column(name="situacao_pagamento"))
	})
	private Fatura fatura;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Date getDataEntrada() {
		return dataEntrada;
	}

	public void setDataEntrada(Date dataEntrada) {
		this.dataEntrada = dataEntrada;
	}

	public Date getDataSaida() {
		return dataSaida;
	}

	public void setDataSaida(Date dataSaida) {
		this.dataSaida = dataSaida;
	}

	public Double getPrecoTotal() {
		return precoTotal;
	}

	public void setPrecoTotal(Double precoTotal) {
		this.precoTotal = precoTotal;
	}

	public Carro getCarro() {
		return carro;
	}

	public void setCarro(Carro carro) {
		this.carro = carro;
	}

	public Vaga getVaga() {
		return vaga;
	}

	public void setVaga(Vaga vaga) {
		this.vaga = vaga;
	}

	public Fatura getFatura() {
		return fatura;
	}

	public void setFatura(Fatura fatura) {
		this.fatura = fatura;
	}

	public String getHoraEntrada() {
		return horaEntrada;
	}

	public void setHoraEntrada(String horaEntrada) {
		this.horaEntrada = horaEntrada;
	}

	public String getHoraSaida() {
		return horaSaida;
	}

	public void setHoraSaida(String horaSaida) {
		this.horaSaida = horaSaida;
	}
	
	public double Calcular(Date d1, Date d2, String s1, String s2, Double pr)
	{
		Double resultado = 0.0;
		
		if(d1.before(d2)) 
		{
			if ((Double.valueOf(s1.replace(":", ".")) < Double.valueOf(s2.replace(":", ".") ) )
				|| (Double.valueOf(s1.replace(":", ".")) > Double.valueOf(s2.replace(":", ".")
					)))
			{
				resultado +=  ((24 -  Double.valueOf(s1.replace(":", "."))) * pr);
				
				resultado += (Double.valueOf(s2.replace(":", ".")) * pr);
				
				return resultado;
			}
		
			long date1InMs = d1 . getTime (); 
			long date2InMs = d2 . getTime ();
			
			long timeDiff = 0 ; 

			if ( date1InMs > date2InMs ) 
            { 
                timeDiff = date1InMs - date2InMs ; 
            } 
            else 
            { 
                timeDiff = date2InMs - date1InMs ; 
            } 
			
			int daysDiff = ( int ) ( timeDiff / ( 1000 * 60 * 60 * 24 ));
			
			resultado = (Double.valueOf(daysDiff) * 24) * pr;
			if(daysDiff > 1)
			{
				
				resultado +=  ((24 -  Double.valueOf(s1.replace(":", "."))) * pr);
				
				resultado += (Double.valueOf(s2.replace(":", ".")) * pr);
			}
			
			
		}
		else
		{
			resultado = (Double.valueOf(s2.replace(":", ".")) -  Double.valueOf(s1.replace(":", "."))) * pr;
		}
		
		return resultado;
	}
	
	
}
