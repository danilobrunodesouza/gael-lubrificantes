package br.com.gael_lubrificantes.ligacao;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="LIGACOES")
public class LigacaoModel {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@Temporal(TemporalType.DATE)
	private Calendar dataLigacao;
	
	@Temporal(TemporalType.DATE)
	private Calendar dataRetorno;
	
	private String observacoes;

	
	public LigacaoModel() {
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Calendar getDataLigacao() {
		return dataLigacao;
	}

	public void setDataLigacao(Calendar dataLigacao) {
		this.dataLigacao = dataLigacao;
	}

	public Calendar getDataRetorno() {
		return dataRetorno;
	}

	public void setDataRetorno(Calendar dataRetorno) {
		this.dataRetorno = dataRetorno;
	}

	public String getObservacoes() {
		return observacoes;
	}

	public void setObservacoes(String observacoes) {
		this.observacoes = observacoes;
	}

}
